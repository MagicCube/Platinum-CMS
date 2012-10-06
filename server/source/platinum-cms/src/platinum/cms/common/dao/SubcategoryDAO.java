package platinum.cms.common.dao;

import org.hibernate.Session;

import platinum.cms.common.po.SubcategoryPO;
import platinum.framework.dao.StandardDAO;

public class SubcategoryDAO extends StandardDAO<SubcategoryPO>
{
	public SubcategoryDAO()
	{
		
	}
	
	public SubcategoryDAO(Session p_session)
	{
		super(p_session);
	}
}
