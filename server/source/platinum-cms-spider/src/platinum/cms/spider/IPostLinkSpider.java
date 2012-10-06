package platinum.cms.spider;

import java.util.List;

public interface IPostLinkSpider
{
	public void crawlPostLinks(String p_url, List<String> p_urlCollection);
}