package platinum.cms.admin.service;

import java.util.List;

import platinum.cms.common.dao.PostDAO;
import platinum.cms.common.entity.PostEntity;
import platinum.framework.dao.DAOQuery;

public class PostAdminService
{
	private PostAdminService()
	{
		
	}
	
	private static PostAdminService _instance = null;
	public static PostAdminService getInstance()
	{
		if (_instance == null)
		{
			_instance = new PostAdminService();
		}
		return _instance;
	}
	
	private PostDAO _postDAO = null;
	private PostDAO getPostDAO()
	{
		if (_postDAO == null)
		{
			_postDAO = new PostDAO();
		}
		return _postDAO;
	}
	
	public PostEntity getPostById(String p_id)
	{
		PostEntity entity = getPostDAO().selectById(p_id);
		return entity;
	}
	
	public List<PostEntity> loadPostsByCategory(String p_categoryId)
	{
		DAOQuery query = new DAOQuery();
		query.setOrderByClause("createTime desc");
		query.setPageSize(50);
		List<PostEntity> poList = getPostDAO().select(query);
		return poList;
	}
}
