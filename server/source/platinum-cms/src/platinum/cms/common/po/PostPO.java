package platinum.cms.common.po;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import platinum.cms.common.PostStatus;
import platinum.cms.common.PostType;
import platinum.framework.po.StandardPO;

@Entity(name = "Post")
@Table(name = "PTT_POST", schema = "PT_CMS")
public class PostPO extends StandardPO
{
	private SubcategoryPO _subcategory = null;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "SUBCATEGORY_ID")
	public SubcategoryPO getSubcategory()
	{
		return _subcategory;
	}
	public void setSubcategory(SubcategoryPO value)
	{
		_subcategory = value;
	}
	
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

	private PostContentPO _content = null;
	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "POST_CONTENT_ID")
	public PostContentPO getContent()
	{
		if (_content == null)
		{
			_content = new PostContentPO();
		}
		return _content;
	}
	public void setContent(PostContentPO value)
	{
		_content = value;
	}	
	@Transient
	public String getContentText()
	{
		return getContent().getText();
	}
	public void setContentText(String value)
	{
		getContent().setText(value);
	}
	

	private PostViewsPO _views = null;
	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "POST_VIEWS_ID")
	public PostViewsPO getViews()
	{
		if (_views == null)
		{
			_views = new PostViewsPO();
		}
		return _views;
	}
	public void setViews(PostViewsPO value)
	{
		_views = value;
	}
	@Transient
	public int getViewCount() 
	{
		return getViews().getCount();
	}
	public void setViewCount(int value)
	{
		getViews().setCount(value);
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
	
	private String _summary = null;
	@Basic(fetch = FetchType.LAZY)
	@Column(name = "SUMMARY")
	public String getSummary()
	{
		return _summary;
	}
	public void setSummary(String value)
	{
		_summary = value;
	}
	
	private PostType _postType = PostType.INFORMATION;
	@Enumerated(EnumType.ORDINAL)
	@Column(name = "POST_TYPE")
	public PostType getPostType()
	{
		return _postType;
	}
	public void setPostType(PostType value)
	{
		_postType = value;
	}
	
	private PostStatus _postStatus = PostStatus.DRAFTED;
	@Enumerated(EnumType.ORDINAL)
	@Column(name = "POST_STATUS")
	public PostStatus getPostStatus()
	{
		return _postStatus;
	}
	public void setPostStatus(PostStatus value)
	{
		_postStatus = value;
	} 

	private String _publisher = null;
	@Column(name = "PUBLISHER")
	public String getPublisher()
	{
		return _publisher;
	}
	public void setPublisher(String value)
	{
		_publisher = value;
	}

	private String _author = null;
	@Column(name = "AUTHOR")
	public String getAuthor()
	{
		return _author;
	}
	public void setAuthor(String value)
	{
		_author = value;
	}
	
	private String _source = null;
	@Column(name = "SOURCE")
	public String getSource()
	{
		return _source;
	}
	public void setSource(String value)
	{
		_source = value;
	}

	private String _sourceURL = null;
	@Column(name = "SOURCE_URL")
	public String getSourceURL()
	{
		return _sourceURL;
	}
	public void setSourceURL(String value)
	{
		_sourceURL = value;
	}

	private String _photoURL = null;
	@Column(name = "PHOTO_URL")
	public String getPhotoURL()
	{
		return _photoURL;
	}
	public void setPhotoURL(String value)
	{
		_photoURL = value;
	}

	private boolean _shownInFrontPage = false;
	@Column(name = "SHOWN_IN_FRONT_PAGE")
	public boolean isShownInFrontPage()
	{
		return _shownInFrontPage;
	}
	public void setShownInFrontPage(boolean value)
	{
		_shownInFrontPage = value;
	}
}
