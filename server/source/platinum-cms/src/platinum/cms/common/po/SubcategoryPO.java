package platinum.cms.common.po;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import platinum.framework.po.StandardPO;

@Entity(name = "Subcategory")
@Table(name = "PTT_SUBCATEGORY", schema = "PT_CMS")
public class SubcategoryPO extends StandardPO
{
	private String _subcategoryName;
	@Column(name = "SUBCATEGORY_NAME")
	public String getSubcategoryName()
	{
		return _subcategoryName;
	}
	public void setSubcategoryName(String value)
	{
		_subcategoryName = value;
	}
	
	private String _categoryId;
	@Column(name = "CATEGORY_ID")
	public String getCategoryId()
	{
		return _categoryId;
	}
	public void setCategoryId(String value)
	{
		_categoryId = value;
	}
}
