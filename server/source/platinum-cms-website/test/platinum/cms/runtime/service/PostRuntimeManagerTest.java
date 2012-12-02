package platinum.cms.runtime.service;

import java.util.List;

import org.junit.Test;

import platinum.cms.common.entity.PostEntity;

public class PostRuntimeManagerTest
{
	@Test
	public void testLoadTopPostsByCategory()
	{
		List<PostEntity> result = PostRuntimeManager.getInstance().loadTopPostsByCategory("news", 10);
		for (PostEntity post : result)
		{
			System.out.println(post.getTitle());
		}
	}
}
