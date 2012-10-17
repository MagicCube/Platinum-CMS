package platinum.cms.common.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;


@Entity(name = "PostViews")
@Table(name = "PTT_POST_VIEWS", schema = "PT_CMS")
@Cache(usage = CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
public class PostViewsEntity extends platinum.framework.entity.Entity
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
