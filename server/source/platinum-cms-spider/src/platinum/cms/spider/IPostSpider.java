package platinum.cms.spider;

import platinum.cms.common.entity.PostEntity;

public interface IPostSpider
{
	public PostEntity crawlPost(String p_link);
}
