package notice.dao;

import java.util.List;
import java.util.Map;

import notice.vo.NoticeVO;



public interface INoticeDao {

	public List<NoticeVO> selectAllMember(Map<String,Object> map);

	
	public int DeleteNotice(String noticeId);
	
	public int insertNotice(NoticeVO nv);
	

	
}