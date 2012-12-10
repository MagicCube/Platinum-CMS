package platinum.cms.common.dao;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;

import platinum.cms.common.entity.PostAttachmentEntity;
import platinum.cms.common.entity.PostEntity;

public class PostDAOTest
{
	@Test
	public void testAddPostAttachment()
	{
		PostDAO dao = new PostDAO();
		dao.beginTransaction();
		PostAttachmentEntity attachment = new PostAttachmentEntity("abc.txt", 1024, "/uploads/attachments/12381921/abc.txt");
		dao.addPostAttachment(attachment, "4028b8813b07c8f4013b07c90c74002b");
		dao.commitTransaction();
		
		dao.beginTransaction();
		System.out.println(attachment.getId());
		dao.deletePostAttachment(attachment.getId());
		dao.commitTransaction();
		
		PostEntity post = dao.selectById("4028b8813b07c8f4013b07c90c74002b");
		List<PostAttachmentEntity> attachments = post.getAttachments();
		for (int i = 0; i < attachments.size(); i++)
		{
			System.out.println(attachments.get(i).getFileName() + ", " + attachments.get(i).getFileSize());
		}
	}

	@Test
	public void testDeletePostAttachment()
	{
		
	}
}
