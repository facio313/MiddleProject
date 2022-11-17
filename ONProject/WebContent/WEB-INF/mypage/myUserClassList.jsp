<%@page import="userClass.vo.UsrClsVO"%>
<%@page import="member.vo.MemberVO"%>
<%@page import="volunteer.vo.ReservationVO"%>
<%@page import="common.VolStatus"%>
<%@page import="common.VolCategory"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	MemberVO memVo = (MemberVO) session.getAttribute("loginUser");
	List<UsrClsVO> clsList = (List<UsrClsVO>) request.getAttribute("list");
	int perPage = (int) request.getAttribute("perPage");
	int startPage = (int) request.getAttribute("sPage");
	int endPage = (int) request.getAttribute("ePage");
	int totalPage = (int) request.getAttribute("ttPage");
	int currentPage = (int) request.getAttribute("cPage");

	String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
	session.removeAttribute("msg");	// 세션은 계속 유지되니 속성값 삭제

	String category= request.getParameter("category") == null? "카테고리 선택" : request.getParameter("category");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>온(ON:溫)</title>
</head>
<style>
div {
	border: 1px solid olivedrab;
}

#side, #content {
	float: left;
	height: 85vh;
}

#side {
	width: 25%;
}

#content {
	width: 74%;
}
</style>
</head>
<body>
	<h1>온(溫:ON)</h1>
	<div id="side">
		<div id="memDetail" class="memDetail">
			<a href="/mypage/memDetail.do?memId=<%=memVo.getMemId()%>">회원정보</a>
		</div>
		<div id=class="">
			<a href="/myVolReserv.do">봉사내역</a>
		</div>
		<div id=class="">
			<a href="/myUserClass.do">재능기부현황</a>
		</div>
		<div id=class="">
			<a href="/myDonate.do">후원내역</a>
		</div>
		<div id=class="">
			<a href="/">Q&A</a>
		</div>
	</div>

	<div id="content">내용
		<div class="wrapper">
			<%
				for (int i = 0; i < clsList.size(); i=i+3) {
			%>
			<div class="row">
				<%
 					for (int j = 0;(i+j < clsList.size()) &&  j < 3; j++) {
 						if(clsList.get(i+j) != null) {
				%>
				<div class="col-xs-3">
					<div class="thumbnail">
						<a href="<%=request.getContextPath()%>/UsrClsDetail.do?classId=<%=clsList.get(i+j).getClassId()%>">
							<img src="<%=clsList.get(i+j).getClassThumbnail()%>" alt="">
							<div class="caption">
								<h4 class="list-group-item-heading"><%=clsList.get(i+j).getClassTitle()%></h4>
								<p class="list-group-item-text">
									<span class="glyphicon glyphicon-tag"><%=clsList.get(i+j).getClsCtId()%> </span> <span
										class="glyphicon glyphicon-eye-open"><%=clsList.get(i+j).getClassViews()%></span>
								</p>
								<!--<p class="list-group-item-text glyphicon "> -->
								<!--<span class="label label-primary">category1</span>  -->
								<!--<span class="glyphicon glyphicon-eye-open">11</span> -->
								<!--</p> -->
							</div>
						</a>
					</div>
				</div>
				<%
 						}
					}
				%>
			</div>
			<%
				}
			%>
		</div>

	</div>
</body>
</html>