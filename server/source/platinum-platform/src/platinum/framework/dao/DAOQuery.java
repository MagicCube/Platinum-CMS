package platinum.framework.dao;

import java.util.HashMap;
import java.util.Map;

import platinum.common.util.StringUtil;

public class DAOQuery
{
	public DAOQuery(String p_whereClause)
	{
		_whereClause = p_whereClause;
	}
	
	public DAOQuery()
	{
		this(null);
	}
	
	
	public String getQueryString()
	{
		StringBuilder statementBuilder = new StringBuilder("");
		
		String whereClause = getWhereClause();
		if (StringUtil.notNullOrEmpty(whereClause))
		{
			statementBuilder.append(" where ").append(whereClause);
		}
		
		String orderByClause = getOrderByClause();
		if (StringUtil.notNullOrEmpty(orderByClause))
		{
			statementBuilder.append(" order by ").append(orderByClause);
		}
		
		return statementBuilder.toString();
	}
	
	
	
	
	private String _whereClause = null;
	public String getWhereClause()
	{
		return _whereClause;
	}
	public void setWhereClause(String p_whereClause)
	{
		_whereClause = p_whereClause;
	}
	
	
	
	private Map<String, Object> _parameters = new HashMap<String, Object>();
	public Map<String, Object> getParameters()
	{
		return _parameters;
	}
	public Object getParameter(String p_key)
	{
		if (_parameters != null)
		{
			return _parameters.get(p_key);
		}
		return null;
	}
	public void setParameter(String p_key, Object p_value)
	{
		if (_parameters != null)
		{
			_parameters.put(p_key, p_value);
		}
	}
	
	
	
	
	private String _orderByClause = null;
	public String getOrderByClause()
	{
		return _orderByClause;
	}
	public void setOrderByClause(String p_orderByClause)
	{
		_orderByClause = p_orderByClause;
	}
	
	
	
	
	
	private int _pageIndex = 0;
	public int getPageIndex()
	{
		return _pageIndex;
	}
	public void setPageIndex(int pageIndex)
	{
		_pageIndex = pageIndex;
	}
	
	private int _pageSize = 0;
	public int getPageSize()
	{
		return _pageSize;
	}
	public void setPageSize(int pageSize)
	{
		_pageSize = pageSize;
	}
	
	
	
	private boolean _cachable = false;
	public boolean isCachable()
	{
		return _cachable;
	}
	public void setCachable(boolean p_cachable)
	{
		_cachable = p_cachable;
	}
	
	private String _cacheRegion = null;
	public String getCacheRegion()
	{
		return _cacheRegion;
	}
	public void setCacheRegion(String p_region)
	{
		setCachable(true);
		_cacheRegion = p_region;
	}
}
