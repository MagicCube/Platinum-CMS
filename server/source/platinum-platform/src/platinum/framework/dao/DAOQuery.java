package platinum.framework.dao;

import platinum.common.util.StringUtil;

public class DAOQuery
{
	public DAOQuery(String p_whereClause, Object... p_params)
	{
		_whereClause = p_whereClause;
		_parameters = p_params;
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
	
	
	
	private Object[] _parameters = null;
	public Object[] getParameters()
	{
		return _parameters;
	}
	public void setParameters(Object... p_parameters)
	{
		_parameters = p_parameters;
	}
	public Object getParameter(int p_index)
	{
		if (_parameters != null)
		{
			return _parameters[p_index];
		}
		return null;
	}
	public void setParameter(int p_index, Object p_value)
	{
		if (_parameters != null)
		{
			_parameters[p_index] = p_value;
		}
	}
	
	
	
	
	public String _orderByClause = null;
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
}
