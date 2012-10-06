package edu.njnu.sun.spider;

import java.io.IOException;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import platinum.cms.spider.IPostLinkSpider;

public class PostLinkSpider implements IPostLinkSpider
{

	@Override
	public void crawlPostLinks(String p_url, List<String> p_urlCollection)
	{
		Document document = null;
		
		try
		{
			document = Jsoup.connect(p_url).get();
		}
		catch (IOException e1)
		{
			e1.printStackTrace();
			return;
		}
		
		Elements linkElements = document.select("a");
		for (Element e : linkElements)
		{
			String href = e.attr("href");
			if (href.endsWith(".html"))
			{
				if (!p_urlCollection.contains(href))
				{
					if (href.startsWith("http://sun.njnu.edu.cn/news/") ||
						href.startsWith("http://sun.njnu.edu.cn/red/") ||
						href.startsWith("http://sun.njnu.edu.cn/club/"))
					{
						p_urlCollection.add(new String(href));
					}
				}
			}
		}
	}
	
}
