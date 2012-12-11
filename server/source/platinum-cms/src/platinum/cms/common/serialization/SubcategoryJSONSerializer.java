package platinum.cms.common.serialization;

import java.util.List;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import platinum.cms.common.entity.SubcategoryEntity;

public class SubcategoryJSONSerializer
{
	public static JSONObject toSimpleObject(SubcategoryEntity p_category)
	{
		if (p_category == null)
		{
			return null;
		}
		
		JSONObject json = new JSONObject();
		try
		{
			json.put("id", p_category.getId());
			json.put("name", p_category.getSubcategoryName());
		}
		catch (JSONException e)
		{
			return null;
		}
		return json;
	}
	
	
	

	public static JSONArray toSimpleArray(List<SubcategoryEntity> p_categories)
	{
		if (p_categories == null)
		{
			return null;
		}
		JSONArray array = new JSONArray();
		for (SubcategoryEntity category : p_categories)
		{
			array.put(toSimpleObject(category));
		}
		return array;
	}
}
