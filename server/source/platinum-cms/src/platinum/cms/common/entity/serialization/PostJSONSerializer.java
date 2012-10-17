package platinum.cms.common.entity.serialization;

import java.util.List;

import org.apache.lucene.document.Document;
import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import platinum.cms.common.entity.PostEntity;

public class PostJSONSerializer
{
	public static JSONObject toSimpleObject(PostEntity p_post)
	{
		if (p_post == null)
		{
			return null;
		}
		
		JSONObject json = new JSONObject();
		try
		{
			json.put("id", p_post.getId());
			json.put("updateTime", p_post.getUpdateTime());
			
			json.put("title", p_post.getTitle());
			json.put("source", p_post.getSource());
			json.put("summary", p_post.getSummary());
			json.put("categoryId", p_post.getCategoryId());
			json.put("photoURL", p_post.getPhotoURL());
		}
		catch (JSONException e)
		{
			return null;
		}
		return json;
	}
	
	public static JSONObject toSimpleObject(Document p_post)
	{
		if (p_post == null)
		{
			return null;
		}
		
		JSONObject json = new JSONObject();
		try
		{
			json.put("id", p_post.get("id"));
			json.put("updateTime", Long.parseLong(p_post.get("updateTime")));
			json.put("source", p_post.get("source"));
			json.put("categoryId", p_post.get("categoryId"));
			json.put("photoURL", p_post.get("photoURL"));
			
			
			if (p_post.getFieldable("titleHighlight") != null)
			{
				json.put("title", p_post.get("titleHighlight"));
			}
			else
			{
				json.put("title", p_post.get("title"));
			}
			
			if (p_post.getFieldable("contextTextHighlight") != null)
			{
				json.put("summary", p_post.get("contentTextHighlight"));
			}
			else
			{
				json.put("summary", p_post.get("contentText"));
			}
		}
		catch (JSONException e)
		{
			
		}
		return json;
	}
	
	public static JSONObject toDetailObject(PostEntity p_post)
	{
		if (p_post == null)
		{
			return null;
		}
		
		JSONObject json = toSimpleObject(p_post);
		try
		{
			json.put("subcategoryId", p_post.getSubcategory().getId());
			json.put("subcategory", p_post.getSubcategory().getSubcategoryName());
			json.put("contentText", p_post.getContentText());
			json.put("postType", p_post.getPostType());
			json.put("postStatus", p_post.getPostStatus());
			json.put("publisher", p_post.getPublisher());
			json.put("source", p_post.getSource());
		}
		catch (JSONException e)
		{
			return null;
		}
		return json;
	}
	
	
	

	public static JSONArray toSimpleArray(List<PostEntity> p_posts)
	{
		JSONArray array = new JSONArray();
		for (PostEntity post : p_posts)
		{
			array.put(toSimpleObject(post));
		}
		return array;
	}
	
	public static JSONArray toSimpleArray2(List<Document> p_posts)
	{
		JSONArray array = new JSONArray();
		for (Document post : p_posts)
		{
			array.put(toSimpleObject(post));
		}
		return array;
	}
}
