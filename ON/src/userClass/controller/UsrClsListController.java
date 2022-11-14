package userClass.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userClass.service.UsrClsService;
import userClass.service.IUsrClsService;
import userClass.vo.UsrClsVO;


/**
 * 재능기부 리스트 
 */
@WebServlet("/UsrClsListController.do")
public class UsrClsListController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		IUsrClsService clsService = UsrClsService.getInstance();

		int count = clsService.countList();

		int currentPage = 1;
		currentPage = request.getParameter("pageNo")==null? 
				1 : Integer.parseInt(request.getParameter("pageNo"));

		int perPage = 4;

		int perList = 5;

		int totalPage = (int) Math.ceil((double) count / (double) perList);
//		System.out.println(totalPage);

		int start = (currentPage - 1) * perList + 1; 
		int end = start + perList - 1; 
		if(end>count) end = count;	

		int startPage = (currentPage - 1) / perPage * perPage + 1;		
		int endPage = startPage + perPage - 1;
		if(endPage>totalPage) endPage = totalPage;
		
		Map<String, Object> map = new HashMap<>();
		map.put("start", start);
		map.put("end", end);
		
		List<UsrClsVO> clsList = clsService.selectAllDesc(map);
		
		request.setAttribute("list", clsList);
		request.setAttribute("sPage", startPage);
		request.setAttribute("ePage", endPage);
		request.setAttribute("ttPage", totalPage);
		request.setAttribute("cPage", currentPage);
		
		request.getRequestDispatcher("/userClass/usrClsList.jsp").forward(request, response);
		
	}

//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doGet(request, response);
//	}

}
