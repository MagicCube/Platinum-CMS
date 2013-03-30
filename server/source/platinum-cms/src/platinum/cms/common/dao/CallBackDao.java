package platinum.cms.common.dao;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;

import org.hibernate.Session;

import platinum.cms.common.entity.PostAttachmentEntity;
import platinum.cms.common.entity.PostContentEntity;
import platinum.cms.common.entity.CallBackEntity;
import platinum.cms.common.entity.PostViewsEntity;
import platinum.cms.common.search.PostSearchEngine;
import platinum.common.PTEnvironment;
import platinum.common.util.FileSystemUtil;
import platinum.framework.dao.StandardEntityDAO;

public class CallBackDao extends StandardEntityDAO<CallBackEntity>
{
	public CallBackDao()
	{
		
	}
	
	public CallBackDao(Session p_session)
	{
		super(p_session);
	}
	
	
	
	
	
	
	@Override
	public void save(CallBackEntity p_post)
	{
		
		super.save(p_post);
		
	
	}
	
}
