package platinum.cms.admin.service;

import java.util.List;

import platinum.cms.common.dao.CategoryDAO;
import platinum.cms.common.dao.SubcategoryDAO;
import platinum.cms.common.entity.CategoryEntity;
import platinum.cms.common.entity.SubcategoryEntity;
import platinum.framework.dao.DAOQuery;

public class CategoryAdminManager
{
	private CategoryAdminManager()
	{
		
	}
	
	private static CategoryAdminManager _instance = null;
	public static CategoryAdminManager getInstance()
	{
		if (_instance == null)
		{
			_instance = new CategoryAdminManager();
		}
		return _instance;
	}
	
	private CategoryDAO _categoryDAO = null;
	private CategoryDAO getCategoryDAO()
	{
		if (_categoryDAO == null)
		{
			_categoryDAO = new CategoryDAO();
		}
		return _categoryDAO;
	}
	
	private SubcategoryDAO _subcategoryDAO = null;
	private SubcategoryDAO getSubcategoryDAO()
	{
		if (_subcategoryDAO == null)
		{
			_subcategoryDAO = new SubcategoryDAO();
		}
		return _subcategoryDAO;
	}
	
	public List<CategoryEntity> loadOwnedCategories(String p_userId)
	{
		// TODO 关联用户。
		DAOQuery query = new DAOQuery();
		query.setOrderByClause("createTime desc");
		List<CategoryEntity> entityList = getCategoryDAO().select(query);
		return entityList;
	}

	public List<SubcategoryEntity> loadSubcategories(String p_categoryId)
	{
		DAOQuery query = new DAOQuery();
		query.setOrderByClause("createTime desc");
		query.setWhereClause("categoryId=:categoryId");
		query.setParameter("categoryId", p_categoryId);
		List<SubcategoryEntity> entityList = getSubcategoryDAO().select(query);
		return entityList;
	}
}
