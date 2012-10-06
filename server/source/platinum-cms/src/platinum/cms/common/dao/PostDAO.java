package platinum.cms.common.dao;

import org.hibernate.Session;

import platinum.cms.common.po.PostContentPO;
import platinum.cms.common.po.PostPO;
import platinum.cms.common.po.PostViewsPO;
import platinum.framework.dao.StandardDAO;

public class PostDAO extends StandardDAO<PostPO>
{
	public PostDAO()
	{
		
	}
	
	public PostDAO(Session p_session)
	{
		super(p_session);
	}
	
	
	
	
	
	
	@Override
	public void save(PostPO p_post)
	{
		savePostContent(p_post.getContent());
		savePostViews(p_post.getViews());
		super.save(p_post);
	}
	
	public void savePostContent(PostContentPO p_content)
	{
		getSession().save(p_content);
	}

	public void updatePostContent(PostContentPO p_content)
	{
		getSession().update(p_content);
	}

	public void savePostViews(PostViewsPO p_views)
	{
		getSession().save(p_views);
	}

	public void updatePostViews(PostViewsPO p_views)
	{
		getSession().update(p_views);
	}
}
