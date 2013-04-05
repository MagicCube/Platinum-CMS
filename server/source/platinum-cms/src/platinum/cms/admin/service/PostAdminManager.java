package platinum.cms.admin.service;

import java.util.List;

import platinum.cms.common.dao.PostDAO;
import platinum.cms.common.entity.PostAttachmentEntity;
import platinum.cms.common.entity.PostEntity;
import platinum.cms.runtime.service.PostRuntimeManager;
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
	public PostDAO getPostDAO()
	{
		if (_postDAO == null)
		{
			_postDAO = PostRuntimeManager.getInstance().getPostDAO();
		}
		return _postDAO;
	}
	
	public PostEntity getPostById(String p_id)
	{
		PostEntity entity = getPostDAO().selectById(p_id);
		return entity;
	}
	
	public List<PostEntity> loadPostsByCategory(String p_categoryId, int p_pageIndex, int p_pageSize)
	{
		DAOQuery query = new DAOQuery();
		query.setOrderByClause("createTime desc");
		query.setPageIndex(p_pageIndex);
		query.setPageSize(p_pageSize);
		List<PostEntity> poList = getPostDAO().select(query);
		return poList;
	}
	
	public PostEntity savePost(PostEntity p_post)
	{
		getPostDAO().beginTransaction();
		getPostDAO().save(p_post);
		getPostDAO().commitTransaction();
		return p_post;
	}
	
	public PostEntity updatePost(PostEntity p_post)
	{
		getPostDAO().beginTransaction();
		getPostDAO().update(p_post);
		getPostDAO().commitTransaction();
		return p_post;
	}
	
	public void deletePost(String p_postId)
	{
		getPostDAO().beginTransaction();
		getPostDAO().deleteById(p_postId);
		getPostDAO().commitTransaction();
	}

	public void uploadPostAttachment(
			PostAttachmentEntity p_postAttachment, String p_postId)
	{
		getPostDAO().beginTransaction();
		getPostDAO().addPostAttachment(p_postAttachment, p_postId);
		getPostDAO().commitTransaction();
	}

	public void deletePostAttachment(
			String p_attachmentId)
	{
		getPostDAO().beginTransaction();
		getPostDAO().deletePostAttachment(p_attachmentId);
		getPostDAO().commitTransaction();
	}
}
