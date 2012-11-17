package platinum.cms.common.serialization;

import java.util.List;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import platinum.cms.common.entity.CategoryEntity;

public class CategoryJSONSerializer
{
	public static JSONObject toSimpleObject(CategoryEntity p_category)
	{
		if (p_category == null)
		{
			return null;
		}
		
		JSONObject json = new JSONObject();
		try
		{
			json.put("id", p_category.getId());
			json.put("name", p_category.getCategoryName());
		}
		catch (JSONException e)
		{
			return null;
		}
		return json;
	}
	
	
	

	public static JSONArray toSimpleArray(List<CategoryEntity> p_categories)
	{
		JSONArray array = new JSONArray();
		for (CategoryEntity category : p_categories)
		{
			array.put(toSimpleObject(category));
		}
		return array;
	}
}
