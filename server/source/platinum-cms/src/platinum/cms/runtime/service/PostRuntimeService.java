package platinum.cms.runtime.service;

import java.util.List;

import platinum.cms.common.PostStatus;
import platinum.cms.common.dao.PostDAO;
import platinum.cms.common.po.PostPO;
import platinum.cms.common.vo.PostDetailVO;
import platinum.cms.common.vo.PostSimpleVO;
import platinum.common.PTList;
import platinum.framework.dao.DAOQuery;

public class PostRuntimeService
{
	private static PostRuntimeService _instance = null;
	public static PostRuntimeService getInstance()
	{
		if (_instance == null)
		{
			_instance = new PostRuntimeService();
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
		DAOQuery query = _createQuery("categoryId=:categoryId", p_count);
		query.setParameter("categoryId", p_categoryId);
		List<PostPO> poList = getPostDAO().select(query);
		PTList<PostSimpleVO> result = _convertToSimpleVOList(poList);
		return result;
	}
	public PTList<PostSimpleVO> loadLatestPostByCategory(String p_categoryId)
	{
		return loadLatestPostByCategory(p_categoryId, 0);
	}
	
	
	
	public PTList<PostSimpleVO> loadLatestPostBySubcategory(String p_subcategoryId, int p_count)
	{
		DAOQuery query = _createQuery("subcategoryId=:subcategoryId", p_count);
		query.setParameter("subcategoryId", p_subcategoryId);
		List<PostPO> poList = getPostDAO().select(query);
		PTList<PostSimpleVO> result = _convertToSimpleVOList(poList);
		return result;
	}
	public PTList<PostSimpleVO> loadLatestPostBySubcategory(String p_subcategoryId)
	{
		return loadLatestPostBySubcategory(p_subcategoryId, 0);
	}
	
	
	
	public PTList<PostSimpleVO> loadLatestPhotoNews(int p_count)
	{
		DAOQuery query = _createQuery("photoURL is not null", p_count);
		query.setOrderByClause("createTime desc");
		query.setParameter("postStatus", PostStatus.PUBLISHED);
		query.setPageSize(p_count);
		List<PostPO> poList = getPostDAO().select(query);
		PTList<PostSimpleVO> result = _convertToSimpleVOList(poList);
		return result;
	}
	
	
	
	
	
	private DAOQuery _createQuery(String p_whereClause, int p_count)
	{
		DAOQuery query = new DAOQuery("postStatus=:postStatus and " + p_whereClause);
		query.setOrderByClause("createTime desc");
		query.setParameter("postStatus", PostStatus.PUBLISHED);
		query.setPageSize(p_count);
		return query;
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
