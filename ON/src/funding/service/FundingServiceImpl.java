package funding.service;

import java.io.File;
import java.sql.SQLException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import funding.dao.FundingDaoImpl;
import funding.dao.IFundingDao;
import funding.vo.FundingVO;

public class FundingServiceImpl implements IFundingService{
	
	private static IFundingService fundingService;
	
	private IFundingDao fundingDao;
	
	private static final String UPLOAD_DIR = "upload_files";
	
	private FundingServiceImpl() {
		fundingDao = FundingDaoImpl.getInstance();
	}
	
	public static IFundingService getInstance() {
		
		if(fundingService==null) {
			fundingService = new FundingServiceImpl();
		}
		return fundingService;
	}
	
	@Override
	public List<FundingVO> getFundingList(FundingVO vo){
		int totCnt = fundingDao.selectFundingCount(vo);
		vo.setPageTotRowCnt(totCnt);
		return fundingDao.selectFundingList(vo);
	}

	@Override
	public int registFunding(FundingVO fv) {

		int cnt = fundingDao.insertFunding(fv);
		
		if(cnt>0) {
			
		}
		return cnt;
	}

	@Override
	public int stopFunding(FundingVO fv) {
		// int cnt = fundingDao.cancelFunding(fv);
		return fundingDao.stopFunding(fv);
	}
	
	public FundingVO getFundingDetail(FundingVO fv) {
		return fundingDao.selectFundingDetail(fv);
	}
	
	// 펀딩 수정하기 
	public int modifyFunding(FundingVO fv) {
		return fundingDao.updateFunding(fv);
	}
	
	//펀딩 썸네일 저장하기
	@Override
	public FundingVO saveAtchFile(HttpServletRequest req) {

		// 업로드 경로 설정하기
		String uploadPath = "d:/D_Other/" + UPLOAD_DIR;
		File uploadDir = new File(uploadPath);
		if (!uploadDir.exists()) {
			uploadDir.mkdir();
		}
		
		FundingVO atchFileVO = null; 
		
		try {
			
			String fileName = "";
			
			boolean isFirstFile = true; // 첫번째 파일 여부
			
			for (Part part : req.getParts()) {
				
				// 파일명 추출
				fileName = getFileName(part);
				
				if (fileName != null && !fileName.equals("")) {
					// 파일인 경우...
					if(isFirstFile) { // 첫번쨰 파일이 맞다면...
						isFirstFile = false;
						
						// 기본파일정보 저장하기
						atchFileVO = new FundingVO();
						
						// 기본파일정보 저장(VO에 atchFileId가 저장된다.)
						fundingDao.insertAtchFile(atchFileVO);
						
					}
					
					String fundingThumbNail = ""; // 저장파일명
					String fundingThumbNailPath = ""; // 저장파일경로
					
					fundingThumbNail = UUID.randomUUID().toString().replace("-", "");
					
					fundingThumbNailPath = uploadPath + File.separator + fundingThumbNail;
					
					// 확장자명 추출
					String fileExtension = fundingThumbNail.lastIndexOf(".") < 0 ? 
							"" : fundingThumbNail.substring(
									fundingThumbNail.lastIndexOf(".")+1);
					
					// 업로드 파일(원본파일) 저장
					part.write(fundingThumbNailPath);

					atchFileVO.setFundingThumbNail(fundingThumbNail);
					atchFileVO.setFundingThumbNailPath(fundingThumbNailPath);

					// 파일 세부정보 저장
					fundingDao.insertAtchFile(atchFileVO);

					part.delete(); // 임시 업로드 파일 삭제하기

				}
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return atchFileVO;
	}
	
	
	/**
	 * Part 객체를 파싱하여 파일이름 추출하기
	 * @param part 파싱할 Part객체
	 * @return 파일명 : 존재하지 않으면 NULL 리턴함(폼필드인 경우)
	 */
	private String getFileName(Part part) {
		
		/*
		 * Content-Disposition 헤더에 대하여...
		 * 
		 * multipart body를 위해 사용되는 경우 ex)파일 업로드
		 * 
		 * Content-Disposition : form-data
		 * Content-Disposition : form-data; name="fieldName"
		 * Content-Disposition : form-data; name="fieldName"; 
		 *                       filename="a.jpg"
		 *                       
		 */
		for(String content : part.getHeader("Content-Disposition").split(";")) {
			if(content.trim().startsWith("filename")) {
				return content.substring(content.indexOf("=")+1).trim().replace("\"", "");
			}
		}
		return null; // filename이 존재하지 않을 경우...(폼필드)
	}
}
