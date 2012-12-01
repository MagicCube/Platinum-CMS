package platinum.cms.runtime.web.rest;

import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.Response;

import org.codehaus.jettison.json.JSONException;

import platinum.cms.runtime.service.PostRuntimeManager;
import platinum.framework.web.rest.AbstractResource;

@Path("runtime/post")
public class PostRuntimeResource extends AbstractResource
{
	@POST
	@Path("/{postId}/view")
	public Response hitPost(
			@PathParam("postId") String p_postId
			) throws JSONException
	{
		int hit = PostRuntimeManager.getInstance().hitPost(p_postId);
		return responseWithText(String.valueOf(hit));
	}
}
