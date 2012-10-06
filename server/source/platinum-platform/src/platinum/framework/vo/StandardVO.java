package platinum.framework.vo;

import java.util.Map;

import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import platinum.common.PTObject;
import platinum.framework.po.StandardPO;

public abstract class StandardVO<PO extends StandardPO> extends PTObject
{
	private static final long serialVersionUID = 1L;

	public StandardVO(Map<String, Object> p_source)
	{
		super(p_source);
	}

	public StandardVO(JSONObject p_json) throws JSONException
	{
		super(p_json);
	}

	public StandardVO(PTObject p_source)
	{
		super(p_source);
	}

	public StandardVO(boolean p_concurrent)
	{
		super(p_concurrent);
	}

	public StandardVO()
	{
		super();
	}

	
	
	public String getId()
	{
		return getString("id");
	}
	
	public String getUpdateTime()
	{
		return getString("updateTime");
	}

	
	public void loadFromPO(PO p_po)
	{
		set("id", p_po.getId());
		set("updateTime", p_po.getUpdateTime());
	}
	
	public abstract void mergeWithPO(PO p_po);
}