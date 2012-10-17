package platinum.framework.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@MappedSuperclass
public abstract class StandardEntity extends Entity
{
	private Date _createTime = null;
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "CREATE_TIME")
	public Date getCreateTime()
	{
		return _createTime;
	}
	public void setCreateTime(Date value)
	{
		_createTime = value;
	}
	
	
	private Date _updateTime = null;
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "UPDATE_TIME")
	public Date getUpdateTime()
	{
		return _updateTime;
	}
	public void setUpdateTime(Date value)
	{
		_updateTime = value;
	}
}
