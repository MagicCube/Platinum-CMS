package platinum.common.serialization;

import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

public interface IJSONObjectDeserializable
{
	public abstract void fromJSONObject(JSONObject p_json) throws JSONException;
}
