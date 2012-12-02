package platinum.cms.runtime.service;

import java.util.List;

import platinum.cms.common.PostStatus;
import platinum.cms.common.dao.PostDAO;
import platinum.cms.common.entity.PostEntity;
import platinum.framework.dao.DAOQuery;

public class PostRuntimeManager
{
	private PostRuntimeManager()
	{
		
	}
	
	private static PostRuntimeManager _instance = null;
	public static PostRuntimeManager getInstance()
	{
		if (_instance == null)
		{
			_instance = new PostRuntimeManager();
		}
		return _instance;
	}
	
	private PostDAO _postDAO = null;
	public PostDAO getPostDAO()
	{
		if (_postDAO == null)
		{
			_postDAO = new PostDAO();
		}
		return _postDAO;
	}
	
	public PostEntity getPost(String p_id)
	{
		PostEntity post = getPostDAO().selectById(p_id);
		return post;
	}
	
	public PostEntity getPost(String p_id, String p_categoryId)
	{
		PostEntity post = getPost(p_id);
		
		String categoryId = post.getCategoryId();
		if (!categoryId.equals(p_categoryId))
		{
			return null;
		}
		return post;
	}
	
	
	

	
	public List<PostEntity> loadLatestPostsByCategory(String p_categoryId, boolean p_hasPhoto, String p_extra, int p_count)
	{
		DAOQuery query = _createQuery("categoryId=:categoryId", p_hasPhoto, p_extra);
		if (p_count != Integer.MAX_VALUE)
		{
			query.setPageSize(p_count);
		}
		query.setParameter("categoryId", p_categoryId);
		List<PostEntity> result = getPostDAO().select(query);
		return result;
	}
	public List<PostEntity> loadLatestPostsByCategory(String p_categoryId, boolean p_hasPhoto, String p_extra, int p_pageIndex, int p_pageSize)
	{
		DAOQuery query = _createQuery("categoryId=:categoryId", p_hasPhoto, p_extra);
		query.setPageIndex(p_pageIndex);
		query.setPageSize(p_pageSize);
		query.setParameter("categoryId", p_categoryId);
		List<PostEntity> result = getPostDAO().select(query);
		return result;
	}
	
	
	
	
	
	public List<PostEntity> loadTopPostsByCategory(String p_categoryId, int p_count)
	{
		DAOQuery query = new DAOQuery("categoryId=:categoryId");
		query.setParameter("categoryId", p_categoryId);
		query.setOrderByClause("views.count desc, createTime desc");
		query.setPageSize(p_count);
		query.setCacheRegion("twelveHoursCache");
		List<PostEntity> result = getPostDAO().select(query);
		return result;
	}
	
	
	
	
	
	
	public List<PostEntity> loadLatestPostsBySubcategory(String p_subcategoryId, boolean p_hasPhoto, String p_extra, int p_count)
	{
		DAOQuery query = _createQuery("subcategory_id=:subcategoryId", p_hasPhoto, p_extra);
		if (p_count != Integer.MAX_VALUE)
		{
			query.setPageSize(p_count);
		}
		query.setParameter("subcategoryId", p_subcategoryId);
		List<PostEntity> result = getPostDAO().select(query);
		return result;
	}
	public List<PostEntity> loadLatestPostsBySubcategory(String p_subcategoryId, boolean p_hasPhoto, String p_extra, int p_pageIndex, int p_pageSize)
	{
		DAOQuery query = _createQuery("subcategory_id=:subcategoryId", p_hasPhoto, p_extra);
		query.setCachable(true);
		query.setPageIndex(p_pageIndex);
		query.setPageSize(p_pageSize);
		query.setParameter("subcategoryId", p_subcategoryId);
		List<PostEntity> result = getPostDAO().select(query);
		return result;
	}
	
	
	
	
	
	
	
	
	private DAOQuery _createQuery(String p_whereClause, boolean p_hasPhoto, String p_extra)
	{
		DAOQuery query = new DAOQuery(
				"postStatus=:postStatus and " + 
				(p_hasPhoto ? " (photoURL is not null) and " : "") +
				(p_extra != null ? (" " + p_extra + " and ") : "") +
				p_whereClause
		);
		query.setCacheRegion("threeMinutesCache");
		query.setOrderByClause("createTime desc");
		query.setParameter("postStatus", PostStatus.PUBLISHED);
		return query;
	}


	public int hitPost(String p_postId)
	{
		PostDAO dao = getPostDAO();
		PostEntity post = dao.selectById(p_postId);
		if (post != null)
		{
			dao.beginTransaction();
			post.setViewCount(post.getViewCount() + 1);
			dao.updatePostViews(post.getViews());
			dao.commitTransaction();
			return post.getViewCount();
		}
		else
		{
			return 0;
		}
	}
}
