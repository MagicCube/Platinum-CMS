package platinum.common.serialization;

import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

public interface IJSONObjectSerializable
{
	public abstract JSONObject toJSONObject() throws JSONException;
}
