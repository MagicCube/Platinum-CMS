package platinum.cms.common.entity;


import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Table;

import platinum.framework.entity.StandardEntity;

@Entity(name = "CallBack")
@Table(name = "PTT_CALLBACK", schema = "PT_CMS")
public class CallBackEntity extends StandardEntity
{ 
	

	
	private String _title;
	@Column(name = "TITLE")
	public String getTitle()
	{
		return _title;
	}
	public void setTitle(String value)
	{
		_title = value;
	}
	
	
	private String _name;
	@Column(name = "NAME")
	public String getName()
	{
		return _name;
	}
	public void setName(String value)
	{
		_name = value;
	}
	
	
	private String _content;
	@Column(name = "CONTENT")
	public String getContent()
	{
		return _content;
	}
	public void setContent(String value)
	{
		_content = value;
	}
	
	
	
	

}
