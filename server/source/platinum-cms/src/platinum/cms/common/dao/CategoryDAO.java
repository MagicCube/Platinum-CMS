package platinum.cms.common.dao;

import org.hibernate.Session;

import platinum.cms.common.po.CategoryPO;
import platinum.framework.dao.StandardDAO;

public class CategoryDAO extends StandardDAO<CategoryPO>
{
	public CategoryDAO()
	{
		
	}
	
	public CategoryDAO(Session p_session)
	{
		super(p_session);
	}
}
