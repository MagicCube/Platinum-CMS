package platinum.cms.common.serialization;

import java.util.List;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import platinum.cms.common.entity.PostAttachmentEntity;

public class AttachmentJSONSerializer
{
	public static JSONObject toSimpleObject(PostAttachmentEntity p_attachment)
	{
		if (p_attachment == null)
		{
			return null;
		}
		
		JSONObject json = new JSONObject();
		try
		{
			json.put("id", p_attachment.getId());
			json.put("name", p_attachment.getFileName());
			json.put("size", p_attachment.getFileSize());
			json.put("relativePath", p_attachment.getRelativePath());
		}
		catch (JSONException e)
		{
			return null;
		}
		return json;
	}
	
	
	

	public static JSONArray toSimpleArray(List<PostAttachmentEntity> p_attachments)
	{
		if (p_attachments == null)
		{
			return null; 
		}
		JSONArray array = new JSONArray();
		for (PostAttachmentEntity attachment : p_attachments)
		{
			array.put(toSimpleObject(attachment));
		}
		return array;
	}
}
