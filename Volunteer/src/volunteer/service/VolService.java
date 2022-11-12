package volunteer.service;

import java.util.List;

import volunteer.dao.IVolDao;
import volunteer.dao.VolDao;
import volunteer.vo.VolunteerVO;
import volunteer.vo.ReviewVO;

public class VolService implements IVolService {

	private IVolDao dao;
	private static IVolService service;
	private VolService() {
		dao = VolDao.getInstance();
	}
	public static IVolService getInstance() {
		if (service == null) {
			service = new VolService();
		}
		return service;
	}
	
	@Override
	public List<VolunteerVO> getList() {
		
		List<VolunteerVO> volList = dao.getList();
		
		return volList;
	}
	
	@Override
	public VolunteerVO getDetail(String volId) {
		return dao.getDetail(volId);
	}
	
	@Override
	public List<ReviewVO> getReviewList(String volId) {
		
		List<ReviewVO> reviewList = dao.getReviewList(volId);
		
		return reviewList;
	}

}