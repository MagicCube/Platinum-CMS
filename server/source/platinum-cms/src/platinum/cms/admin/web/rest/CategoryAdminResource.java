package platinum.cms.admin.web.rest;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import platinum.cms.admin.service.CategoryAdminManager;
import platinum.cms.common.entity.CategoryEntity;
import platinum.cms.common.entity.SubcategoryEntity;
import platinum.cms.common.serialization.CategoryJSONSerializer;
import platinum.cms.common.serialization.SubcategoryJSONSerializer;
import platinum.framework.web.rest.AbstractResource;
import platinum.security.Membership;

@Path("admin/category")
public class CategoryAdminResource extends AbstractResource
{
	@GET
	@Path("/")
	public Response loadOwnedCategories() throws JSONException
	{
		List<CategoryEntity> categories = CategoryAdminManager.getInstance().loadOwnedCategories(Membership.getInstance().getCurrentUser().getId());
		JSONArray result = CategoryJSONSerializer.toSimpleArray(categories);
		
		for (int i = 0; i < result.length(); i++)
		{
			JSONObject category = (JSONObject)result.get(i);
			List<SubcategoryEntity> subcategories = CategoryAdminManager.getInstance().loadSubcategories(category.getString("id"));
			category.put("subcategories", SubcategoryJSONSerializer.toSimpleArray(subcategories));
		}
		
		return responseWithJSONArray(result);
	}
}
