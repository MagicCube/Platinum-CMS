package platinum.cms.common.vo;

import java.util.Map;

import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

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
	
	
	
	
	
}
