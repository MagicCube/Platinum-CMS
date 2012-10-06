package platinum.cms.spider;

import platinum.cms.common.po.PostPO;

public interface IPostSpider
{
	public PostPO crawlPost(String p_link);
}
