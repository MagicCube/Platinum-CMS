package platinum.cms.common.dao;

import org.hibernate.Session;

import platinum.cms.common.entity.SubcategoryEntity;
import platinum.framework.dao.StandardEntityDAO;

public class SubcategoryDAO extends StandardEntityDAO<SubcategoryEntity>
{
	public SubcategoryDAO()
	{
		
	}
	
	public SubcategoryDAO(Session p_session)
	{
		super(p_session);
	}
}
