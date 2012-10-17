package platinum.framework.dao;

import java.lang.reflect.ParameterizedType;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.persistence.Entity;

import org.hibernate.CacheMode;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import platinum.framework.entity.StandardEntity;

public abstract class StandardEntityDAO<T extends StandardEntity>
{
	public StandardEntityDAO()
	{
		
	}
	
	public StandardEntityDAO(Session p_session)
	{
		_session = p_session;
	}
	
	private Class<T> _entityClass = null;
	@SuppressWarnings("unchecked")
	public Class<T> getEntityClass()
	{
		if (_entityClass == null)
		{
			_entityClass = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
		}
		return _entityClass;
	}
	
	public String getEntityName()
	{
		Class<T> cls = getEntityClass();
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
		T po = (T)session.get(getEntityClass(), p_id);
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
			Map<String, Object> params = p_query.getParameters();
			Set<String> keys = params.keySet();
			for (String key : keys)
			{
				query.setParameter(key, p_query.getParameter(key));
			}
		}
		query.setCacheable(p_query.isCachable());
		if (p_query.isCachable())
		{
			if (p_query.getCacheRegion() != null)
			{
				query.setCacheRegion(p_query.getCacheRegion());
			}
			query.setCacheMode(CacheMode.NORMAL);
		}
		
		List<T> entities = query.list();
		return entities;
	}
	
	public T selectFirst(DAOQuery p_query)
	{
		p_query.setPageIndex(0);
		p_query.setPageSize(1);
		List<T> entities = select(p_query);
		return entities.size() > 0 ? entities.get(0) : null;
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
	
	
	
	
	
	
	
	
	
	
	
	
	
	public void save(T p_entity)
	{
		if (p_entity.getCreateTime() == null)
		{
			p_entity.setCreateTime(new Date());
		}
		if (p_entity.getUpdateTime() == null)
		{
			p_entity.setUpdateTime(new Date());
		}
		Session session = getSession();
		session.save(p_entity);
	}
	
	public void saveAll(List<T> p_entityList)
	{
		for (T entity : p_entityList)
		{
			save(entity);
		}
	}
	
	
	
	
	
	
	public void update(T p_entity)
	{
		p_entity.setUpdateTime(new Date());
		Session session = getSession();
		session.update(p_entity);
	}
	
	public void updateAll(List<T> p_entityList)
	{
		for (T entity : p_entityList)
		{
			update(entity);
		}
	}
	
	
	
	
	public void delete(T p_entity)
	{
		Session session = getSession();
		session.delete(p_entity);
	}

	public void deleteById(String p_id)
	{
		delete(selectById(p_id));
	}
}
