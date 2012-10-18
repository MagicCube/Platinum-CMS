package platinum.cms.admin.web.rest;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.DefaultValue;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Response;

import org.codehaus.jettison.json.JSONException;

import platinum.cms.admin.service.PostAdminManager;
import platinum.cms.common.entity.PostEntity;
import platinum.cms.common.entity.serialization.PostJSONSerializer;
import platinum.cms.common.search.PostSearchEngine;
import platinum.cms.common.search.PostSearchResult;
import platinum.framework.web.rest.AbstractResource;

@Path("admin/post")
public class PostAdminResource extends AbstractResource
{
	@GET
	@Path("/")
	public Response loadPosts(
			@QueryParam("categoryId") String p_categoryId,
			@QueryParam("keywords") String p_keywords,
			@QueryParam("pageIndex") @DefaultValue("0") int p_pageIndex
			) throws JSONException
	{
		List<PostEntity> posts = null;
		
		if (p_keywords != null)
		{
			if (p_keywords.length() == 32)
			{
				PostEntity post = PostAdminManager.getInstance().getPostById(p_keywords);
				if (post != null)
				{
					posts = new ArrayList<PostEntity>();
					posts.add(post);
				}
			}
			if (posts == null)
			{
				List<PostSearchResult> docs = PostSearchEngine.getInstance().search(p_keywords);
				return responseWithJSONArray(PostJSONSerializer.toSimpleArray2(docs));
			}
		}
		else
		{
			posts = PostAdminManager.getInstance().loadPostsByCategory(null);
		}
		return responseWithJSONArray(PostJSONSerializer.toSimpleArray(posts));
	}
	
	@GET
	@Path("/{id}")
	public Response getPost(
			@PathParam("id") String p_id
			) throws JSONException
	{
		PostEntity post = PostAdminManager.getInstance().getPostById(p_id);
		return responseWithJSONObject(PostJSONSerializer.toDetailObject(post));
	}
}