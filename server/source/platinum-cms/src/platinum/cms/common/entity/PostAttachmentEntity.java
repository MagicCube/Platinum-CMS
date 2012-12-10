package platinum.cms.common.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity(name = "PostAttachment")
@Table(name = "PTT_POST_ATTACHMENT", schema = "PT_CMS")
public class PostAttachmentEntity extends platinum.framework.entity.StandardEntity
{
	public PostAttachmentEntity()
	{
		
	}
	
	public PostAttachmentEntity(String p_fileName, long p_fileSize, String p_relativePath)
	{
		_fileName = p_fileName;
		_fileSize = p_fileSize;
		_relativePath = p_relativePath;
	}
	
	private PostEntity _post = null;
	@ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)  
    @JoinColumn(name = "POST_ID")    
    public PostEntity getPost()
	{  
        return _post;  
    }  
    public void setPost(PostEntity value)
    {          
        _post = value;  
    }  
    

	private String _fileName = null;
	@Column(name = "FILE_NAME")
	public String getFileName()
	{
		return _fileName;
	}
	public void setFileName(String value)
	{
		_fileName = value;
	}
	
	
	private long _fileSize = 0;
	@Column(name = "FILE_SIZE")
	public long getFileSize()
	{
		return _fileSize;
	}
	public void setFileSize(long value)
	{
		_fileSize = value;
	}
	
	
	private String _relativePath = null;
	@Column(name = "RELATIVE_PATH")
	public String getRelativePath()
	{
		return _relativePath;
	}
	public void setRelativePath(String value)
	{
		_relativePath = value;
	}
}
