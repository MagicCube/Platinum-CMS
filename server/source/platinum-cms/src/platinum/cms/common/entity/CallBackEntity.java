package platinum.cms.common.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import javax.persistence.Transient;

import platinum.cms.common.PostStatus;
import platinum.cms.common.PostType;
import platinum.cms.common.util.URLResolver;
import platinum.framework.entity.StandardEntity;

@Entity(name = "CallBack")
@Table(name = "PTT_CALLBACK", schema = "PT_CMS")
public class CallBackEntity extends StandardEntity
{ 
	
	private String _categoryID = null;
	@Column(name = "CATEGORY_ID")
	public String getCategoryId()
	{
		return _categoryID;
	}
	public void setCategoryId(String value)
	{
		_categoryID = value;
	}
	
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
