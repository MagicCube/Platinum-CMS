package platinum.cms.common.dao;

import platinum.cms.common.PostStatus;
import platinum.cms.common.PostType;
import platinum.framework.dao.DAOQuery;

public class PostDAOQuery extends DAOQuery
{
	public PostDAOQuery()
	{
		setOrderByClause("createTime desc");
	}

	private String _categoryId = null;
	public String getCategoryId()
	{
		return _categoryId;
	}
	public void setCategoryId(String p_categoryId)
	{
		_categoryId = p_categoryId;
	}

	private PostStatus _postStatus = null;
	public PostStatus getPostStatus()
	{
		return _postStatus;
	}
	public void setPostStatus(PostStatus postStatus)
	{
		_postStatus = postStatus;
	}

	private PostStatus _postStatusException = null;
	public PostStatus getPostStatusException()
	{
		return _postStatusException;
	}
	public void setPostStatusException(PostStatus postStatusException)
	{
		_postStatusException = postStatusException;
	}
	
	private PostType _postType = null;
	public PostType getPostType()
	{
		return _postType;
	}
	public void setPostType(PostType postType)
	{
		_postType = postType;
	}
	
	private String _publisher = null;
	public String getPublisher()
	{
		return _publisher;
	}
	public void setPublisher(String publisher)
	{
		_publisher = publisher;
	}
}
