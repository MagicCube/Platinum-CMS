package edu.njnu.sun.spider;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import platinum.cms.common.PostStatus;
import platinum.cms.common.PostType;
import platinum.cms.common.dao.SubcategoryDAO;
import platinum.cms.common.po.PostPO;
import platinum.cms.common.po.SubcategoryPO;
import platinum.cms.spider.IPostSpider;
import platinum.framework.dao.DAOQuery;

public class PostSpider implements IPostSpider
{
	private static SimpleDateFormat _dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	
	public PostPO crawlPost(String p_link)
	{
		PostPO post = new PostPO();
		post.setPublisher("Admin");
		post.setPostType(PostType.NEWS);
		post.setPostStatus(PostStatus.PUBLISHED);
		
		Document document = null;
		try
		{
			document = Jsoup.connect(p_link).get();
		}
		catch (IOException e)
		{
			e.printStackTrace();
			return null;
		}
		
		post.setTitle(document.select("#article #title").first().text());
		post.setSummary(_trim(document.select("#article #summary").first().text()));
		post.setAuthor(document.select("#article #author a").text());
		post.setSource("阳光网");
		post.setSourceURL(p_link);
		
		
		
		// 栏目
		if (p_link.startsWith("http://sun.njnu.edu.cn/news/"))
		{
			post.setCategoryId("news");
		}
		else if (p_link.startsWith("http://sun.njnu.edu.cn/red/"))
		{
			post.setCategoryId("politics");
		}
		else if (p_link.startsWith("http://sun.njnu.edu.cn/club/"))
		{
			post.setCategoryId("activities");
		}
		
		
		// 子栏目
		Elements subcategoryElement = document.select("#article #locate a").eq(2);
		String subcategoryName = subcategoryElement.text();
		SubcategoryPO subcategory = _getSubcategoryByName(subcategoryName, post.getCategoryId());
		post.setSubcategory(subcategory);
		
		
		// 内容
		Element contentElement = document.select("#article #news_2_content").first();
		post.setContentText(contentElement.html());
		Element imageElement = contentElement.select("img").first();
		if (imageElement != null)
		{
			post.setPhotoURL(imageElement.attr("src"));
		}
		
		// 日期
		Element authorInfoElement = document.select("#article #author_info").first();
		String dateString = authorInfoElement.select("#date").first().text().replace("发布日期：", "");
		Date date = null;
		try
		{
			date = _dateFormat.parse(dateString);
		}
		catch (ParseException e)
		{
			throw new RuntimeException(e);
		}
		post.setCreateTime(date);
		post.setUpdateTime(date);
		
		return post;
	}
	
	
	
	
	private SubcategoryDAO _subcategoryDAO = new SubcategoryDAO();
	private SubcategoryPO _getSubcategoryByName(String p_subcategoryName, String p_categoryId)
	{
		SubcategoryPO subcategoryPO = _subcategoryDAO.selectFirst(new DAOQuery("subcategoryName=?", p_subcategoryName));
		if (subcategoryPO == null)
		{
			_subcategoryDAO.beginTransaction();
			subcategoryPO = new SubcategoryPO();
			subcategoryPO.setCategoryId(p_categoryId);
			subcategoryPO.setSubcategoryName(p_subcategoryName);
			_subcategoryDAO.save(subcategoryPO);
			_subcategoryDAO.commitTransaction();
		}
		return subcategoryPO;
	}

	private String _trim(String p_text)
	{
		return p_text.trim().replaceAll(" ", "");
	}
}
