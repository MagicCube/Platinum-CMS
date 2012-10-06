package platinum.cms.common.vo;

import java.util.Map;

import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import platinum.cms.common.PostStatus;
import platinum.cms.common.PostType;
import platinum.cms.common.po.PostPO;
import platinum.common.PTObject;

public class PostDetailVO extends PostSimpleVO
{
	private static final long serialVersionUID = -4845389060902109996L;

	public PostDetailVO(Map<String, Object> p_source)
	{
		super(p_source);
	}

	public PostDetailVO(JSONObject p_json) throws JSONException
	{
		super(p_json);
	}

	public PostDetailVO(PTObject p_source)
	{
		super(p_source);
	}

	public PostDetailVO(boolean p_concurrent)
	{
		super(p_concurrent);
	}

	public PostDetailVO()
	{
		super();
	}
	
	
	
	public String getSubcategoryId()
	{
		return getString("subcategoryId");
	}
	public void setSubcategoryId(String value)
	{
		set("subcategoryId", value);
	}
	
	public String getSubcategoryName()
	{
		return getString("subcategoryName");
	}
	public void setSubcategoryName(String value)
	{
		set("subcategoryName", value);
	}
	
	public String getContentText()
	{
		return getString("contentText");
	}
	public void setContentText(String value)
	{
		set("contentText", value);
	}
	
	public PostType getPostType()
	{
		return (PostType)get("postType");
	}
	public void setPostType(PostType value)
	{
		set("postType", value);
	}
	
	public PostStatus getPostStatus()
	{
		return (PostStatus)get("postStatus");
	}
	public void setPostStatus(PostStatus value)
	{
		set("postStatus", value);
	} 
	
	public String getPublisher()
	{
		return getString("publisher");
	}
	public void setPublisher(String value)
	{
		set("publisher", value);
	}
	
	public String getSource()
	{
		return getString("source");
	}
	public void setSource(String value)
	{
		set("source", value);
	}
	
	public boolean isShownInFrontPage()
	{
		return getBoolean("shownInFrontPage");
	}
	public void setShownInFrontPage(boolean value)
	{
		set("shownInFrontPage", value);
	}
	
	
	
	@Override
	public void loadFromPO(PostPO p_po)
	{
		super.loadFromPO(p_po);
		this.setSubcategoryId(p_po.getSubcategory().getId());
		this.setSubcategoryName(p_po.getSubcategory().getSubcategoryName());
		this.setContentText(p_po.getContentText());
		this.setPostType(p_po.getPostType());
		this.setPostStatus(p_po.getPostStatus());
		this.setPublisher(p_po.getPublisher());
		this.setSource(p_po.getSource());
		this.setShownInFrontPage(p_po.isShownInFrontPage());
	}
	
	@Override
	public void mergeToPO(PostPO p_po)
	{
		super.mergeToPO(p_po);
		//TODO Subcategory 发生变化怎么办？
		p_po.setContentText(this.getContentText());
		p_po.setPostType(this.getPostType());
		p_po.setPostStatus(this.getPostStatus());
		p_po.setPublisher(this.getPublisher());
		p_po.setSource(this.getSource());
		p_po.setShownInFrontPage(this.isShownInFrontPage());
	}
}
