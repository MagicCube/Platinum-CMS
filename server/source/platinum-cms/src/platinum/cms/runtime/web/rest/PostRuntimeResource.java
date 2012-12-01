package platinum.cms.runtime.web.rest;

import java.util.Date;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.Response;

import org.codehaus.jettison.json.JSONException;

import platinum.cms.common.entity.PostEntity;
import platinum.cms.runtime.service.PostRuntimeManager;
import platinum.framework.web.rest.AbstractResource;

@Path("runtime/post")
public class PostRuntimeResource extends AbstractResource
{
	@GET
	@Path("/{postId}/view")
	public Response hitPost(
			@PathParam("postId") String p_postId
			) throws JSONException
	{
		int hit = 0;
		if (getHttpHeader("If-Modified-Since") != null)
		{
			PostEntity post = PostRuntimeManager.getInstance().getPost(p_postId);
			if (post != null)
			{
				hit = post.getViewCount();
			}
		}
		else
		{
			hit = PostRuntimeManager.getInstance().hitPost(p_postId);
		}
		return responseWithText(String.valueOf(hit), new Date());
	}
}
