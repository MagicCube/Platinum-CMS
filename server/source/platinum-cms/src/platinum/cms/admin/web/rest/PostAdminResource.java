package platinum.cms.admin.web.rest;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.DELETE;
import javax.ws.rs.DefaultValue;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Response;

import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import platinum.cms.admin.service.PostAdminManager;
import platinum.cms.common.PostStatus;
import platinum.cms.common.entity.PostEntity;
import platinum.cms.common.search.PostSearchEngine;
import platinum.cms.common.search.PostSearchResult;
import platinum.cms.common.serialization.PostJSONSerializer;
import platinum.common.util.DateUtil;
import platinum.framework.web.rest.AbstractResource;
import platinum.security.Membership;

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
		
		String ifModifiedSince = getHttpHeader("If-Modified-Since");
		if (ifModifiedSince != null)
		{
			String lastModified = DateUtil.formatGMTDate(post.getUpdateTime());
			if (lastModified.equals(ifModifiedSince))
			{
				return responseNotModified();
			}
		}
		return responseWithJSONObject(PostJSONSerializer.toDetailObject(post), post.getUpdateTime());
	}
	
	@POST
	@Path("/")
	public Response savePost(
			@FormParam("post") String p_postJSONString
			) throws JSONException
	{
		JSONObject postJSON = new JSONObject(p_postJSONString);
		PostEntity post = new PostEntity();
		post.setPublisher(Membership.getInstance().getCurrentUser().getUserName());
		post.setTitle(postJSON.getString("title"));
		post.setContentText(postJSON.getString("contentText"));
		post.setSummary(postJSON.getString("summary"));
		post.setCategoryId(postJSON.getString("categoryId"));
		post.setSubcategoryId(postJSON.getString("subcategoryId"));	
		post.setSource(postJSON.getString("source"));
		post.setPhotoURL(postJSON.getString("photoURL"));
		post.setPostStatus(PostStatus.values()[postJSON.getInt("postStatus")]);
		
		PostAdminManager.getInstance().savePost(post);
		
		JSONObject jsonResult = new JSONObject();
		jsonResult.put("id", post.getId());
		jsonResult.put("publisher", post.getPublisher());
		jsonResult.put("createTime", post.getCreateTime().getTime());
		jsonResult.put("updateTime", post.getUpdateTime().getTime());
		return responseWithJSONObject(jsonResult);
	}
	
	@PUT
	@Path("/{id}")
	public Response updatePost(
			@PathParam("id") String p_id,
			@FormParam("post") String p_postJSONString
			) throws JSONException
	{
		PostEntity post = PostAdminManager.getInstance().getPostById(p_id);
		if (post != null)
		{
			JSONObject postJSON = new JSONObject(p_postJSONString);
			post.setTitle(postJSON.getString("title"));
			post.setContentText(postJSON.getString("contentText"));
			post.setSummary(postJSON.getString("summary"));
			post.setCategoryId(postJSON.getString("categoryId"));
			post.setSubcategoryId(postJSON.getString("subcategoryId"));
			post.setSource(postJSON.getString("source"));
			post.setPhotoURL(postJSON.getString("photoURL"));
			post.setPostStatus(PostStatus.values()[postJSON.getInt("postStatus")]);
			
			PostAdminManager.getInstance().updatePost(post);
			
			JSONObject jsonResult = new JSONObject();
			jsonResult.put("id", post.getId());
			jsonResult.put("publisher", post.getPublisher());
			jsonResult.put("createTime", post.getCreateTime().getTime());
			jsonResult.put("updateTime", post.getUpdateTime().getTime());
			return responseWithJSONObject(jsonResult);
		}
		else
		{
			return responseWithException("没有找到标识为“" + p_id + "”的文章。");
		}
	}
	
	@DELETE
	@Path("/{id}")
	public Response deletePost(
			@PathParam("id") String p_id
			) throws JSONException
	{
		PostAdminManager.getInstance().deletePost(p_id);
		return responseOK();
	}
}
