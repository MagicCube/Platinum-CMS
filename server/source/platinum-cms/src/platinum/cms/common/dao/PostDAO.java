package platinum.cms.common.dao;

import org.hibernate.Session;

import platinum.cms.common.entity.PostContentEntity;
import platinum.cms.common.entity.PostEntity;
import platinum.cms.common.entity.PostViewsEntity;
import platinum.cms.common.search.PostSearchEngine;
import platinum.framework.dao.StandardEntityDAO;

public class PostDAO extends StandardEntityDAO<PostEntity>
{
	public PostDAO()
	{
		
	}
	
	public PostDAO(Session p_session)
	{
		super(p_session);
	}
	
	
	
	
	
	
	@Override
	public void save(PostEntity p_post)
	{
		savePostContent(p_post.getContent());
		savePostViews(p_post.getViews());
		super.save(p_post);
		
		PostSearchEngine.getInstance().buildIndex(p_post);
	}
	
	@Override
	public void update(PostEntity p_post)
	{
		super.update(p_post);
		
		PostSearchEngine.getInstance().updateIndex(p_post);
	}
	
	
	
	public void savePostContent(PostContentEntity p_content)
	{
		getSession().save(p_content);
	}

	public void updatePostContent(PostContentEntity p_content)
	{
		getSession().update(p_content);
	}

	
	
	public void savePostViews(PostViewsEntity p_views)
	{
		getSession().save(p_views);
	}

	public void updatePostViews(PostViewsEntity p_views)
	{
		getSession().update(p_views);
	}
	
	@Override
	public void delete(PostEntity p_entity)
	{
		super.delete(p_entity);
		if (p_entity.getContent() != null)
		{
			getSession().delete(p_entity.getContent());
		}
		if (p_entity.getViews() != null)
		{
			getSession().delete(p_entity.getViews());
		}
	}
}
