package platinum.cms.common.dao;

import org.hibernate.Session;

import platinum.cms.common.entity.CategoryEntity;
import platinum.framework.dao.StandardEntityDAO;

public class CategoryDAO extends StandardEntityDAO<CategoryEntity>
{
	public CategoryDAO()
	{
		
	}
	
	public CategoryDAO(Session p_session)
	{
		super(p_session);
	}
}
