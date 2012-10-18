package platinum.cms.common.entity.serialization;

import java.util.List;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import platinum.cms.common.entity.PostEntity;
import platinum.cms.common.search.PostSearchResult;

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
	
	public static JSONObject toSimpleObject(PostSearchResult p_post)
	{
		if (p_post == null)
		{
			return null;
		}
		
		JSONObject json = new JSONObject();
		try
		{
			json.put("id", p_post.getId());
			json.put("updateTime", p_post.getUpdateTime().getTime());
			json.put("source", p_post.getSource());
			json.put("photoURL", p_post.getPhotoURL());
			json.put("title", p_post.getTitle());
			json.put("summary", p_post.getSummary());
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
	
	public static JSONArray toSimpleArray2(List<PostSearchResult> p_posts)
	{
		JSONArray array = new JSONArray();
		for (PostSearchResult post : p_posts)
		{
			array.put(toSimpleObject(post));
		}
		return array;
	}
}
