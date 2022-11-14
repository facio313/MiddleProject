package userClass.dao;

import java.util.List;
import java.util.Map;

import common.QueryDao;
import userClass.vo.UsrClsVO;

public class UsrClsDao extends QueryDao implements IUsrClsDao {
	private static IUsrClsDao dao;
	private UsrClsDao() {	}
	public static IUsrClsDao getInstance() {
		if(dao == null) {
			dao = new UsrClsDao();
		}
		return dao;
	}
	
	@Override
	public List<UsrClsVO> selectAllDesc(Map<String, Object> map) {
		return selectList("userClass.selectAllDesc", map);
	}
	
	@Override
	public int countList() {
		return countList("userClass.countList");
	}
	
	@Override
	public UsrClsVO getOneClassDetail(String classId) {
		return selectOne("userClass.selectOnePost",classId);
	}
}
