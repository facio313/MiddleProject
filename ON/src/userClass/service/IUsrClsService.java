package userClass.service;

import java.util.List;
import java.util.Map;

import userClass.vo.UsrClsVO;

public interface IUsrClsService {
	
	public List<UsrClsVO> selectAllDesc(Map<String, Object> map);

	public int countList();
	
	public UsrClsVO getOneClassDetail(String classId);
}
