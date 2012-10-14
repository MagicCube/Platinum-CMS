package platinum.cms.runtime.service;

import platinum.cms.common.dao.PostDAO;
import platinum.cms.common.po.PostPO;
import platinum.cms.common.vo.PostDetailVO;
import platinum.cms.common.vo.PostSimpleVO;
import platinum.common.PTList;

public class PostService
{
	private static PostService _instance = null;
	public static PostService getInstance()
	{
		if (_instance == null)
		{
			_instance = new PostService();
		}
		return _instance;
	}
	
	private PostDAO _postDao = null;
	private PostDAO getPostDAO()
	{
		if (_postDao == null)
		{
			_postDao = new PostDAO();
		}
		return _postDao;
	}
	
	
	
	
	public PostDetailVO getPostDetailById(String p_id)
	{
		PostPO po = getPostDAO().selectById(p_id);
		if (po != null)
		{
			PostDetailVO vo = new PostDetailVO();
			vo.loadFromPO(po);
			return vo;
		}
		else
		{
			return null;
		}
	}
	
	public PTList<PostSimpleVO> loadLatestPostByCategory(String p_categoryId, int p_count)
	{
		return null;
	}
	
	public PTList<PostSimpleVO> loadLatestPostByCategory(String p_subcategoryId, String p_categoryId, int p_count)
	{
		return null;
	}
	
	public PTList<PostSimpleVO> loadLatestPhotoNews(int p_count)
	{
		return null;
	}
}
