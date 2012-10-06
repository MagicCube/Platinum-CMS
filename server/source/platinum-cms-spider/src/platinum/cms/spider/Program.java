package platinum.cms.spider;

import java.util.ArrayList;
import java.util.List;

import platinum.cms.common.po.PostPO;
import platinum.platform.service.PlatformService;

public class Program
{
	private static String[] _rootURLs = {
		/*
		"http://sun.njnu.edu.cn/",
		"http://sun.njnu.edu.cn/news/",
		"http://sun.njnu.edu.cn/news/xwph.html",
		"http://sun.njnu.edu.cn/red/",
		"http://sun.njnu.edu.cn/club/",
		"http://sun.njnu.edu.cn/red/xxck.html",
		*/
		"http://sun.njnu.edu.cn/red/zyyl.html"
	};
	
	public static void main(String[] args)
	{	
		PlatformService.getInstance().start("D:/@Platinum/server/source/platinum-cms-website/WebContent/WEB-INF", null);
		
		List<String> postLinkCollection = new ArrayList<String>();
		_findPostLinks(postLinkCollection);
		
		int i = 0;
		IPostSpider postSpider = new edu.njnu.sun.spider.PostSpider();
		for (String postLink : postLinkCollection)
		{
			i++;
			System.out.println("Crawling post " + postLink + "..." + ((i * 100 / postLinkCollection.size())) + "%");
			
			PostPO post = postSpider.crawlPost(postLink);
			
		}
	}

	public static void _findPostLinks(List<String> postLinkCollection)
	{
		IPostLinkSpider linkSpider = new edu.njnu.sun.spider.PostLinkSpider();
		for (String url : _rootURLs)
		{
			System.out.print("Finding post links in " + url + "... ");
			int count = postLinkCollection.size(); 
			linkSpider.crawlPostLinks(url, postLinkCollection);
			System.out.println((postLinkCollection.size() - count) + " found");
		}
		
		System.out.println(postLinkCollection.size() + " post links found.\r\n");
	}
}
