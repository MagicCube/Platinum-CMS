package platinum.cms.common.search;

import java.util.Date;

import org.apache.lucene.document.Document;

import platinum.cms.common.util.URLResolver;

public class PostSearchResult
{	
	private String _id = null;
	private String _title = null;
	private String _summary = null;
	private Date _updateTime = null;
	private String _source = null;
	private String _photoURL = null;
	
	public PostSearchResult(Document p_doc)
	{
		_id = p_doc.get("id");
		_title = p_doc.get("title");
		_summary = p_doc.get("summary");
		_source = p_doc.get("source");
		_photoURL = p_doc.get("photoURL");
		_updateTime = new Date(Long.parseLong(p_doc.get("updateTime")));
	}
	
	public String getId()
	{
		return _id;
	}

	public String getTitle()
	{
		return _title;
	}

	public void setTitle(String p_title)
	{
		_title = p_title;
	}

	public String getSummary()
	{
		return _summary;
	}
	
	public void setSummary(String p_summary)
	{
		_summary = p_summary;
	}

	public Date getUpdateTime()
	{
		return _updateTime;
	}

	public String getSource()
	{
		return _source;
	}

	public String getPhotoURL()
	{
		return _photoURL;
	}
	
	
	
	
	
	
	
	public String getLink()
	{
		return URLResolver.getPostlink(getId(), "search");
	}
}
