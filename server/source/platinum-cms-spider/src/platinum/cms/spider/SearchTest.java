package platinum.cms.spider;

import platinum.cms.common.search.PostSearchEngine;
import platinum.cms.common.vo.PostSimpleVO;
import platinum.common.PTList;

public class SearchTest
{

	/**
	 * @param args
	 */
	public static void main(String[] args)
	{
		PTList<PostSimpleVO> result = PostSearchEngine.getInstance().search("着力解决");
		System.out.println(result.toString());
	}

}
