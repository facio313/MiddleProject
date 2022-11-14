package userClass.service;

import userClass.dao.UsrClsDao;
import userClass.vo.UsrClsVO;

import java.util.List;
import java.util.Map;

import userClass.dao.IUsrClsDao;

public class UsrClsService implements IUsrClsService{
	private IUsrClsDao dao;
	private static UsrClsService service;
	private UsrClsService() {
		dao = UsrClsDao.getInstance();
	}
	public static IUsrClsService getInstance() {
		if(service == null) {
			service = new UsrClsService();
		}
		return service;
	}
	
	@Override
	public List<UsrClsVO> selectAllDesc(Map<String, Object> map) {
		return dao.selectAllDesc(map);
	}
	
	@Override
	public int countList() {
		return dao.countList();
	}
	
	@Override
	public UsrClsVO getOneClassDetail(String classId) {
		return dao.getOneClassDetail(classId);
	}
	
	
	
	
	
}
