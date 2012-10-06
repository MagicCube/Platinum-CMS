package platinum.cms.common.po;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import platinum.framework.po.BasePO;

@Entity(name = "PostViews")
@Table(name = "PTT_POST_VIEWS", schema = "PT_CMS")
public class PostViewsPO extends BasePO
{
	private int _count = 0;
	@Column(name = "COUNT")
	public int getCount()
	{
		return _count;
	}
	public void setCount(int value)
	{
		_count = value;
	}
}
