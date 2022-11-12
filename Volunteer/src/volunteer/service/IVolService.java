package volunteer.service;

import java.util.List;

import volunteer.vo.VolunteerVO;
import volunteer.vo.ReviewVO;

public interface IVolService {

	public List<VolunteerVO> getList();
	public VolunteerVO getDetail(String volId);
	public List<ReviewVO> getReviewList(String volId);

}