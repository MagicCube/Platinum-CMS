package platinum.framework.dao;

import java.lang.reflect.ParameterizedType;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;

import org.hibernate.CacheMode;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import platinum.framework.po.StandardPO;

public abstract class StandardDAO<T extends StandardPO>
{
	public StandardDAO()
	{
		
	}
	
	public StandardDAO(Session p_session)
	{
		_session = p_session;
	}
	
	private Class<T> _poClass = null;
	@SuppressWarnings("unchecked")
	public Class<T> getPOClass()
	{
		if (_poClass == null)
		{
			_poClass = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
		}
		return _poClass;
	}
	
	public String getEntityName()
	{
		Class<T> cls = getPOClass();
		Entity entityAnnotation = cls.getAnnotation(Entity.class);
		return entityAnnotation.name();
	}
	
	

	
	
	
	private Session _session = null;
	public Session getSession()
	{
		if (_session == null)
		{
			_session = GlobalSessionFactory.getInstance().openSession();
		}
		return _session;
	}
	
	public void close()
	{
		if (_currentTransaction != null)
		{
			_currentTransaction.commit();
			_currentTransaction = null;
		}
		if (_session != null)
		{
			_session.close();
			_session = null;
		}
	}
	
	
	
	private Transaction _currentTransaction = null;
	public Transaction beginTransaction()
	{
		Session session = getSession();
		_currentTransaction = session.beginTransaction();
		return _currentTransaction;
	}

	
	public void commitTransaction()
	{
		if (_currentTransaction != null)
		{
			_currentTransaction.commit();
			_currentTransaction = null;
		}
	}
	
	public void rollbackTransaction()
	{
		if (_currentTransaction != null)
		{
			_currentTransaction.rollback();
			_currentTransaction = null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public T selectById(String p_id)
	{
		Session session = getSession();
		T po = (T)session.get(getPOClass(), p_id);
		return po;
	}
	
	@SuppressWarnings("unchecked")
	public List<T> select(DAOQuery p_query)
	{
		Session session = getSession();
		
		String queryString = "from " + getEntityName() + p_query.getQueryString();
		Query query = session.createQuery(queryString);
		if (p_query.getPageSize() > 0)
		{
			query.setMaxResults(p_query.getPageSize());
		}
		if (p_query.getPageIndex() >= 0)
		{
			query.setFirstResult(p_query.getPageIndex() * p_query.getPageSize());
		}
		if (p_query.getParameters() != null)
		{
			for (int i = 0; i < p_query.getParameters().length; i++)
			{
				query.setParameter(i, p_query.getParameter(i));
			}
		}
		query.setCacheable(p_query.isCachable());
		if (p_query.getCacheRegion() != null)
		{
			query.setCacheRegion(p_query.getCacheRegion());
		}
		
		List<T> entities = query.list();
		return entities;
	}

	public List<T> selectAll(String p_orderByClause)
	{
		DAOQuery query = new DAOQuery(getEntityName());
		query.setWhereClause(p_orderByClause);
		List<T> entities = select(query);
		return entities;
	}

	public List<T> selectAll()
	{
		return selectAll(null);
	}
	
	public T selectFirst(DAOQuery p_query)
	{
		p_query.setPageIndex(0);
		p_query.setPageSize(1);
		List<T> entities = select(p_query);
		return entities.size() > 0 ? entities.get(0) : null;
	}
	
	
	
	
	
	
	public void save(T p_po)
	{
		if (p_po.getCreateTime() == null)
		{
			p_po.setCreateTime(new Date());
		}
		if (p_po.getUpdateTime() == null)
		{
			p_po.setUpdateTime(new Date());
		}
		Session session = getSession();
		session.save(p_po);
	}
	
	public void saveAll(List<T> p_poList)
	{
		for (T entity : p_poList)
		{
			save(entity);
		}
	}
	
	
	
	
	
	
	public void update(T p_po)
	{
		p_po.setUpdateTime(new Date());
		Session session = getSession();
		session.update(p_po);
	}
	
	public void updateAll(List<T> p_poList)
	{
		for (T entity : p_poList)
		{
			update(entity);
		}
	}
	
	
	
	
	public void delete(T p_po)
	{
		Session session = getSession();
		session.delete(p_po);
	}

	public void deleteById(String p_id)
	{
		delete(selectById(p_id));
	}
}
