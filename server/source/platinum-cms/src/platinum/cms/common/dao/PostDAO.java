package platinum.cms.common.dao;

import java.io.File;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;

import platinum.cms.common.entity.PostAttachmentEntity;
import platinum.cms.common.entity.PostContentEntity;
import platinum.cms.common.entity.PostEntity;
import platinum.cms.common.entity.PostViewsEntity;
import platinum.cms.common.search.PostSearchEngine;
import platinum.common.PTEnvironment;
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
	
	
	
	public void addPostAttachment(PostAttachmentEntity p_attachment, String p_postId)
	{
		PostEntity post = selectById(p_postId);
		if (post != null)
		{
			p_attachment.setPost(post);
			p_attachment.setCreateTime(new Date());
			p_attachment.setUpdateTime(new Date());
			getSession().save(p_attachment);
		}
	}
	
	public void deletePostAttachment(String p_attachmentId)
	{
		PostAttachmentEntity attachment = (PostAttachmentEntity)getSession().get(PostAttachmentEntity.class, p_attachmentId);
		deletePostAttachment(attachment);
	}
	
	public void deletePostAttachment(PostAttachmentEntity p_attachment)
	{
		if (p_attachment != null)
		{
			p_attachment.getPost().getAttachments().remove(p_attachment);
			getSession().delete(p_attachment);
			File file = PTEnvironment.getSharedFile(p_attachment.getRelativePath());
			if (file.exists())
			{
				try
				{
					file.delete();
				}
				catch (Exception e)
				{
					
				}
			}
		}
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
		
		List<PostAttachmentEntity> attachments = p_entity.getAttachments();
		for (PostAttachmentEntity attachment : attachments)
		{
			deletePostAttachment(attachment);
		}
		
		File folder = PTEnvironment.getSharedFile("uploads/" + p_entity.getId());
		if (folder.exists())
		{
			folder.delete();
		}
		PostSearchEngine.getInstance().deleteIndex(p_entity.getId());
	}
}
