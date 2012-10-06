package platinum.cms.common.po;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;

import platinum.cms.common.PostType;
import platinum.framework.po.StandardPO;

@Entity(name = "Category")
@Table(name = "PTT_CATEGORY", schema = "PT_CMS")
public class CategoryPO extends StandardPO
{
	private String _categoryName;
	@Column(name = "CATEGORY_NAME")
	public String getCategoryName()
	{
		return _categoryName;
	}
	public void setCategoryName(String value)
	{
		_categoryName = value;
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
}
