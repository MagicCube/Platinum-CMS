package platinum.cms.runtime.service;

import platinum.cms.common.dao.CategoryDAO;
import platinum.cms.common.dao.SubcategoryDAO;
import platinum.cms.common.entity.CategoryEntity;
import platinum.cms.common.entity.SubcategoryEntity;

public class CategoryRuntimeManager
{
	private CategoryRuntimeManager()
	{
		
	}
	
	private static CategoryRuntimeManager _instance = null;
	public static CategoryRuntimeManager getInstance()
	{
		if (_instance == null)
		{
			_instance = new CategoryRuntimeManager();
		}
		return _instance;
	}
	
	private CategoryDAO _categoryDAO = null;
	public CategoryDAO getCategoryDAO()
	{
		if (_categoryDAO == null)
		{
			_categoryDAO = new CategoryDAO();
		}
		return _categoryDAO;
	}
	
	private SubcategoryDAO _subcategoryDAO = null;
	public SubcategoryDAO getSubcategoryDAO()
	{
		if (_subcategoryDAO == null)
		{
			_subcategoryDAO = new SubcategoryDAO(getCategoryDAO().getSession());
		}
		return _subcategoryDAO;
	}
	
	
	
	
	public CategoryEntity getCategory(String p_categoryId)
	{
		return getCategoryDAO().selectById(p_categoryId);
	}

	public SubcategoryEntity getSubcategory(String p_subcategoryId)
	{
		return getSubcategoryDAO().selectById(p_subcategoryId);
	}
}
