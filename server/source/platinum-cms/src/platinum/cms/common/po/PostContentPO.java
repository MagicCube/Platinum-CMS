package platinum.cms.common.po;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Lob;
import javax.persistence.Table;

import platinum.framework.po.BasePO;

@Entity(name = "PostContent")
@Table(name = "PTT_POST_CONTENT", schema = "PT_CMS")
public class PostContentPO extends BasePO
{
	public PostContentPO()
	{
		
	}
	
	public PostContentPO(String p_text)
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
