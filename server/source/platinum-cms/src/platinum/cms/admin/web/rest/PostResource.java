package platinum.cms.admin.web.rest;

import javax.ws.rs.DefaultValue;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Response;

import org.codehaus.jettison.json.JSONException;

import platinum.cms.admin.service.PostAdminService;
import platinum.cms.common.dao.PostDAOQuery;
import platinum.cms.common.search.PostSearchEngine;
import platinum.cms.common.vo.PostDetailVO;
import platinum.cms.common.vo.PostSimpleVO;
import platinum.common.PTList;
import platinum.framework.web.rest.AbstractResource;

@Path("admin/post")
public class PostResource extends AbstractResource
{
	@GET
	@Path("/")
	public Response loadPosts(
			@QueryParam("categoryId") String p_categoryId,
			@QueryParam("keywords") String p_keywords,
			@QueryParam("pageIndex") @DefaultValue("0") int p_pageIndex
			) throws JSONException
	{
		PTList<PostSimpleVO> posts = null;
		if (p_keywords != null)
		{
			if (p_keywords.length() == 32)
			{
				PostSimpleVO post = PostAdminService.getInstance().getPostById(p_keywords);
				if (post != null)
				{
					posts = new PTList<PostSimpleVO>();
					posts.add(post);
				}
			}
			if (posts == null)
			{
				posts = PostSearchEngine.getInstance().search(p_keywords);
			}
		}
		else
		{
			PostDAOQuery query = new PostDAOQuery();
			query.setPageSize(50);
			query.setPageIndex(p_pageIndex);
			
			posts = PostAdminService.getInstance().loadPostsByCategory(query);
		}
		return responseWithJSONArray(posts.toJSONArray());
	}
	
	@GET
	@Path("/{id}")
	public Response getPost(
			@PathParam("id") String p_id
			) throws JSONException
	{
		PostDetailVO post = PostAdminService.getInstance().getPostDetailById(p_id);
		return responseWithJSONObject(post.toJSONObject());
	}
}
