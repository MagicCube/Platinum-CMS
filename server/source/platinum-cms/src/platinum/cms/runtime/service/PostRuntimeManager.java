package platinum.cms.runtime.service;

import java.util.List;

import platinum.cms.common.PostStatus;
import platinum.cms.common.dao.PostDAO;
import platinum.cms.common.entity.PostEntity;
import platinum.framework.dao.DAOQuery;

public class PostRuntimeManager
{
	public PostRuntimeManager()
	{
		
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
	
	
	public PostEntity getPost(String p_id, String p_categoryId)
	{
		PostEntity post = getPostDAO().selectById(p_id);
		if (post == null) return null;
		
		String categoryId = post.getCategoryId();
		if (!categoryId.equals(p_categoryId))
		{
			return null;
		}
		return post;
	}
	
	
	

	
	public List<PostEntity> loadLatestPostByCategory(String p_categoryId, int p_count)
	{
		DAOQuery query = _createQuery("categoryId=:categoryId", p_count);
		query.setParameter("categoryId", p_categoryId);
		List<PostEntity> result = getPostDAO().select(query);
		return result;
	}
	public List<PostEntity>loadLatestPostByCategory(String p_categoryId)
	{
		return loadLatestPostByCategory(p_categoryId, 0);
	}
	
	
	
	public List<PostEntity> loadLatestPostBySubcategory(String p_subcategoryId, int p_count)
	{
		DAOQuery query = _createQuery("subcategoryId=:subcategoryId", p_count);
		query.setParameter("subcategoryId", p_subcategoryId);
		List<PostEntity> result = getPostDAO().select(query);
		return result;
	}
	public List<PostEntity> loadLatestPostBySubcategory(String p_subcategoryId)
	{
		return loadLatestPostBySubcategory(p_subcategoryId, 0);
	}
	
	
	
	public List<PostEntity> loadLatestPhotoNews(int p_count)
	{
		DAOQuery query = _createQuery("photoURL is not null", p_count);
		query.setOrderByClause("createTime desc");
		query.setParameter("postStatus", PostStatus.PUBLISHED);
		query.setPageSize(p_count);
		List<PostEntity> result = getPostDAO().select(query);
		return result;
	}
	
	
	
	
	
	private DAOQuery _createQuery(String p_whereClause, int p_count)
	{
		DAOQuery query = new DAOQuery("postStatus=:postStatus and " + p_whereClause);
		query.setOrderByClause("createTime desc");
		query.setParameter("postStatus", PostStatus.PUBLISHED);
		query.setPageSize(p_count);
		return query;
	}
}
