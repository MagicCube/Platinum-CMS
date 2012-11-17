package platinum.cms.admin.service;

import java.util.List;

import platinum.cms.common.dao.PostDAO;
import platinum.cms.common.entity.PostEntity;
import platinum.framework.dao.DAOQuery;

public class PostAdminManager
{
	private PostAdminManager()
	{
		
	}
	
	private static PostAdminManager _instance = null;
	public static PostAdminManager getInstance()
	{
		if (_instance == null)
		{
			_instance = new PostAdminManager();
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
	
	public PostEntity updatePost(PostEntity p_post)
	{
		getPostDAO().update(p_post);
		return p_post;
	}
}
