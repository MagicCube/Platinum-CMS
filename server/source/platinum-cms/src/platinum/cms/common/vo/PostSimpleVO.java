package platinum.cms.common.vo;

import java.util.Map;

import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import platinum.cms.common.po.PostPO;
import platinum.common.PTObject;
import platinum.framework.vo.StandardVO;

public class PostSimpleVO extends StandardVO<PostPO>
{
	private static final long serialVersionUID = -8372455874687682384L;

	public PostSimpleVO(Map<String, Object> p_source)
	{
		super(p_source);
	}

	public PostSimpleVO(JSONObject p_json) throws JSONException
	{
		super(p_json);
	}

	public PostSimpleVO(PTObject p_source)
	{
		super(p_source);
	}

	public PostSimpleVO(boolean p_concurrent)
	{
		super(p_concurrent);
	}

	public PostSimpleVO()
	{
		super();
	}
	
	
	public String getTitle()
	{
		return getString("title");
	}
	public void setTitle(String value)
	{
		set("title", value);
	}
	
	public String getSummary()
	{
		return getString("summary");
	}
	public void setSummary(String value)
	{
		set("summary", value);
	}
	
	public String getAuthor()
	{
		return getString("author");
	}
	public void setAuthor(String value)
	{
		set("author", value);
	}
	
	public String getPhotoURL()
	{
		return getString("photoURL");
	}
	public void setPhotoURL(String value)
	{
		set("photoURL", value);
	}

	public String getCategoryId()
	{
		return getString("categoryId");
	}
	public void setCategoryId(String value)
	{
		set("categoryId", value);
	}
	
	
	@Override
	public void loadFromPO(PostPO p_po) 
	{
		super.loadFromPO(p_po);
		setTitle(p_po.getTitle());
		setAuthor(p_po.getAuthor());
		setSummary(p_po.getSummary());
		setCategoryId(p_po.getCategoryId());
		setPhotoURL(p_po.getPhotoURL());
	}

	@Override
	public void mergeToPO(PostPO p_po)
	{
		p_po.setTitle(getTitle());
		p_po.setAuthor(getAuthor());
		p_po.setSummary(getSummary());
		p_po.setCategoryId(getCategoryId());
		p_po.setPhotoURL(getPhotoURL());
	}

}
