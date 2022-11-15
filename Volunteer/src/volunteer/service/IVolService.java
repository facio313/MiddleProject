package volunteer.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import volunteer.vo.VolunteerVO;
import volunteer.vo.ReservationVO;
import volunteer.vo.ReviewVO;

public interface IVolService {

	public List<VolunteerVO> getList();
	public VolunteerVO getDetail(String volId);
	public List<ReviewVO> getReviewList(String volId);
	public int registerVol(VolunteerVO vv);
	public int reservVol(ReservationVO rv);
	public ReservationVO getReservDetail(String reservId);
	public List<ReservationVO> getReservList(String memId);
	public VolunteerVO getDetailForReserv(String reservId);
	public int cancelReserv(ReservationVO rv);
	public int deleteVol(String volId);

}
