<%@page import="java.util.List"%>
<%@page import="volunteer.vo.VolunteerVO"%>
<%@page import="volunteer.vo.ReviewVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%

	VolunteerVO vv = (VolunteerVO)request.getAttribute("vv");
	List<ReviewVO> reviewList = (List<ReviewVO>)request.getAttribute("reviewList");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>온(ON:溫)</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
body {
	position: relative;
}

ul.nav-pills {
	top: 20px;
	position: fixed;
}

div.col-sm-9 div {
	height: 410px;
	font-size: 20px;
}

#section1 {
	color: #fff;
	background-color: #1E88E5;
	border: 5px dotted pink;
}

#section2 {
	color: #fff;
	background-color: #673ab7;
	border: 5px dotted pink;
}

#section3 {
	color: #fff;
	background-color: #ff9800;
	border: 5px dotted pink;
}

@media screen and (max-width: 810px) {
	#section1, #section2, #section3, #section41, #section42 {
		margin-left: 150px;
	}
}

#detailLeft {
	position: relative;
	z-index:1;
	float: left;
	width:35%
}

#detailRight {
	position: relative;
	z-index:1;
	float: left;
	width:65%
	
}

img {
	display:block;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 99;
}
</style>
</head>
<body data-spy="scroll" data-target="#myScrollspy" data-offset="20">

<div class="col-sm-12 text-center">
	<h1>봉사 프로그램 상세</h1>

</div>


<div class="container">
  <div class="row">
    <nav class="col-sm-3" id="myScrollspy">
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#section1">프로그램 상세</a></li>
        <li><a href="#section2">글 및 첨부파일</a></li>
        <li><a href="#section3">후기</a></li>
      </ul>
    </nav>
    <div class="col-sm-9" style='border: 2px solid black; padding: 10px; height:auto;'>
      <div id="section1">
	    <div id="detailLeft">
	      <img src="http://192.168.35.51:9999/<%=(vv.getThumbnail())%>" />
	    </div>
	  	<div id="detailRight">
	        [<%=(vv.getVolCtId().getKorName())%>]
	        <h1><%=(vv.getVolTitle())%></h1>
			[모집 기간]   <%=(vv.getStartDate())%> ~ <%=(vv.getEndDate())%> <br>
			[모집 시간]   <%=(vv.getStartTime())%> ~ <%=(vv.getEndTime())%> <br>
			[신청 인원]   <%=(vv.getTotal())%> / <%=(vv.getPersonnel())%> <br> 
			[봉사 장소]   <%=(vv.getLocation())%> <br>
			[모집 상태]   <%=(vv.getStatus().getVolStatus())%> <br>
			[봉사 대상]   <%=(vv.getTarget())%> <br>
			[자격 요건]   <%=(vv.getQualification())%>
      	</div> 
      </div>
      
      <hr>
      
      <div id="section2"> 
        <h1>상세내용</h1>
		<%=(vv.getDetail())%>
        
      </div>
      
      <hr>
      <div id="section3">         
        <h1>후기</h1>
<%
	int size = reviewList.size();
	String contentment = "☆☆☆☆☆";
	if (size > 0) {
		for (int i = 0; i < size; i++) {
%>
        <div>
<%
			for (int k = 0; k < reviewList.get(i).getStar(); k++) {
				contentment = contentment.replaceFirst("☆", "★");
			}
%>
	        <h2><%= (contentment) %></h2>
	        <%= (reviewList.get(i).getCorrectionDate()) %> <br>
	        <%= (reviewList.get(i).getContent()) %>
        </div>
<%
		}
	} else {
%>
		조회된 데이터가 없습니다.
<%
	}
%>
      </div>
    </div>
  </div>
</div>

</body>
</html>