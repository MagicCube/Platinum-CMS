package platinum.cms.admin.service;

import java.util.List;

import platinum.cms.common.dao.PostDAO;
import platinum.cms.common.dao.PostDAOQuery;
import platinum.cms.common.po.PostPO;
import platinum.cms.common.vo.PostDetailVO;
import platinum.cms.common.vo.PostSimpleVO;
import platinum.common.PTList;

public class PostAdminService
{
	private PostAdminService()
	{
		
	}
	
	private static PostAdminService _instance = null;
	public static PostAdminService getInstance()
	{
		if (_instance == null)
		{
			_instance = new PostAdminService();
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
	
	
	
	
	public PostDetailVO getPostById(String p_id)
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
	
	public PTList<PostSimpleVO> loadPostsByCategory(PostDAOQuery p_query)
	{
		List<PostPO> poList = getPostDAO().select(p_query);
		PTList<PostSimpleVO> voList = _convertToSimpleVOList(poList);
		return voList;
	}

	
	
	
	private PTList<PostSimpleVO> _convertToSimpleVOList(List<PostPO> p_poList)
	{
		PTList<PostSimpleVO> voList = new PTList<PostSimpleVO>(p_poList.size());
		for (PostPO po : p_poList)
		{
			PostSimpleVO vo = new PostSimpleVO();
			vo.loadFromPO(po);
			voList.add(vo);
		}
		return voList;
	}
}
