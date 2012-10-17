package platinum.cms.common.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Lob;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;


@Entity(name = "PostContent")
@Table(name = "PTT_POST_CONTENT", schema = "PT_CMS")
@Cache(usage = CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
public class PostContentEntity extends platinum.framework.entity.Entity
{
	public PostContentEntity()
	{
		
	}
	
	public PostContentEntity(String p_text)
	{
		_text = p_text;
	}

	private String _text = null;
	@Lob
	@Column(name = "TEXT")
	public String getText()
	{
		return _text;
	}
	public void setText(String value)
	{
		_text = value;
	}
}
