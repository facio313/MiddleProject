package notice.dao;

import java.util.List;
import java.util.Map;

import common.QueryDao;
import notice.vo.NoticeVO;


public class NoticeDaoImpl extends QueryDao implements INoticeDao{

	
	private static INoticeDao noticeDao;
	
	private NoticeDaoImpl() {
		
	}
	
	
	public static INoticeDao getInstance() {
		if(noticeDao == null) {
			noticeDao = new NoticeDaoImpl();
		}
		return noticeDao;
	}
	
	

	
	@Override
	public List<NoticeVO> selectAllMember(Map<String,Object> map) {
		
		return selectList("notice.selectAllMember", map);	
	}


	@Override
	public int DeleteNotice(String noticeId) {
		
		return delete("notice.DeleteNotice", noticeId); //notice xml의 DeleteNotice에 있는 쿼리 내용을 담은 noticeId에 담아서 반환
	}

	

	@Override
	public int insertNotice(NoticeVO nv) {

		return insert("notice.insertNotice", nv);
		
	}
	
	
	


}