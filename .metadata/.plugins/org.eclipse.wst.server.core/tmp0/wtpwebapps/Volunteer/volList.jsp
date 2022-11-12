<%@page import="java.util.List"%>
<%@page import="volunteer.vo.VolunteerVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<VolunteerVO> volList = (List<VolunteerVO>) request.getAttribute("volList");

String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
session.removeAttribute("msg");
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
div {
	border: 1px solid black
}

#filter {
	display: flex;
	justify-content: left;
}

#listArea {
	display: flex;
	justify-content: left;
}

#ListAreaTable {
	border: 1px solid black;
}
.media-left {
	width: 30%;
}
.register {
	display: flex;
	justify-content: right;
	margin-top: 10px;
	margin-bottom: 20px;
}
</style>
</head>
<body>
  
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<div class="col-sm-12 text-center">
		<h1>봉사 프로그램 목록</h1>

		<!-- 필터 시작 -->
		<div class="container">
			<h2 id="filter">필터</h2>
			<table class="table">
				<thead>
					<tr>
						<th>지역</th>
						<th>유형</th>
						<th>날짜</th>
						<th>대상</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<div class="locationFilter">
							  <a href="#" class="list-group-item btn active">전체</a>
							  <a href="#" class="list-group-item btn">Second item</a>
							  <a href="#" class="list-group-item btn">Third item</a>
							</div>
						</td>
						<td>
							<div class="categoryFilter">
							  <a href="#" class="list-group-item active">전체</a>
							  <a href="#" class="list-group-item">Second item</a>
							  <a href="#" class="list-group-item">Third item</a>
							</div>
						</td>
						<td>
							<div class="dateFilter">
							  <a href="#" class="list-group-item active">전체</a>
							  <a href="#" class="list-group-item">Second item</a>
							  <a href="#" class="list-group-item">Third item</a>
							</div>
						</td>
						<td>
							<div class="targetFilter">
							  <a href="#" class="list-group-item active">전체</a>
							  <a href="#" class="list-group-item">Second item</a>
							  <a href="#" class="list-group-item">Third item</a>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- 필터 끝 -->

		<hr>
		
		<div class="register container">
			<a href="volRegister.do" class="btn btn-info" role="button">봉사 프로그램 등록</a>
		</div>
		
		<!-- 리스트 시작 -->
		<div class="container">
<%
	int size = volList.size();
	if (size > 0) {
		for (int i = 0; i < size; i++) {

%>
			
			<div class="volList-group">
				<div class="media">	
					<div class="media-left">
						<img src="http://192.168.35.51:9999/<%=(volList.get(i).getThumbnail())%>"  class="media-object" style="width:100%"/>
					</div>
					<div class="media-body">
				        <a href="volDetail.do?volId=<%= (volList.get(i).getVolId()) %>" class="volList-group-item media-heading"><h1>[<%=(volList.get(i).getVolCtId().getKorName())%>]<%=(volList.get(i).getVolTitle())%></h1>
						[모집 기간]   <%=(volList.get(i).getStartDate())%> ~ <%=(volList.get(i).getEndDate())%> <br>
						[모집 시간]   <%=(volList.get(i).getStartTime())%> ~ <%=(volList.get(i).getEndTime())%> <br>
						[신청 인원]   <%=(volList.get(i).getTotal())%> / <%=(volList.get(i).getPersonnel())%> <br> 
						[봉사 장소]   <%=(volList.get(i).getLocation())%> <br>
						[모집 상태]   <%=(volList.get(i).getStatus().getVolStatus())%> <br>
						[봉사 대상]   <%=(volList.get(i).getTarget())%> <br>
						[자격 요건]   <%=(volList.get(i).getQualification())%><br>
						</a>
						<i class="bi-heart" style="font-size:3rem; color: red; cursor: pointer;"></i>
					</div>
				</div>
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
		<!-- 리스트 끝 -->
		
	</div>
	

    <script>

        var i = 0;
        $('i').on('click',function(){
            if(i==0){
                $(this).attr('class','bi-heart-fill');
                i++;
            }else if(i==1){
                $(this).attr('class','bi-heart');
                i--;
            }

        });
        
       	var active = 'list-group-item active';
       	var inactive = 'list-group-item';
//        	var lfSize = $('.locationFilter').children().length;
		
		// $(event.target)
// 		$("body").click(function(event){
// 			if(event.target)
// 		    console.log("무엇을 클릭했을 까요? ", event.target.nodeName);
// 		})
		
		
        $('.locationFilter a:nth-of-type(' + 1 + ')').on('click', function(){
    		$('.locationFilter a').attr('class', inactive);
    		$('.locationFilter a:nth-of-type(' + 1 + ')').attr('class', active);
        });
        $('.locationFilter a:nth-of-type(' + 2 + ')').on('click', function(){
    		$('.locationFilter a').attr('class', inactive);
    		$('.locationFilter a:nth-of-type(' + 2 + ')').attr('class', active);
        });
        $('.locationFilter a:nth-of-type(' + 3 + ')').on('click', function(){
    		$('.locationFilter a').attr('class', inactive);
    		$('.locationFilter a:nth-of-type(' + 3 + ')').attr('class', active);
        });
        
        
        
        $('.categoryFilter a:nth-of-type(' + 1 + ')').on('click', function(){
    		$('.categoryFilter a').attr('class', inactive);
    		$('.categoryFilter a:nth-of-type(' + 1 + ')').attr('class', active);
        });
        $('.categoryFilter a:nth-of-type(' + 2 + ')').on('click', function(){
    		$('.categoryFilter a').attr('class', inactive);
    		$('.categoryFilter a:nth-of-type(' + 2 + ')').attr('class', active);
        });
        $('.categoryFilter a:nth-of-type(' + 3 + ')').on('click', function(){
    		$('.categoryFilter a').attr('class', inactive);
    		$('.categoryFilter a:nth-of-type(' + 3 + ')').attr('class', active);
        });
        
        
        
        $('.dateFilter a:nth-of-type(' + 1 + ')').on('click', function(){
    		$('.dateFilter a').attr('class', inactive);
    		$('.dateFilter a:nth-of-type(' + 1 + ')').attr('class', active);
        });
        $('.dateFilter a:nth-of-type(' + 2 + ')').on('click', function(){
    		$('.dateFilter a').attr('class', inactive);
    		$('.dateFilter a:nth-of-type(' + 2 + ')').attr('class', active);
        });
        $('.dateFilter a:nth-of-type(' + 3 + ')').on('click', function(){
    		$('.dateFilter a').attr('class', inactive);
    		$('.dateFilter a:nth-of-type(' + 3 + ')').attr('class', active);
        });
        
        
        
        $('.targetFilter a:nth-of-type(' + 1 + ')').on('click', function(){
    		$('.targetFilter a').attr('class', inactive);
			$('.targetFilter a:nth-of-type(' + 1 + ')').attr('class', active);
        });
        $('.targetFilter a:nth-of-type(' + 2 + ')').on('click', function(){
    		$('.targetFilter a').attr('class', inactive);
			$('.targetFilter a:nth-of-type(' + 2 + ')').attr('class', active);
        });
        $('.targetFilter a:nth-of-type(' + 3 + ')').on('click', function(){
    		$('.targetFilter a').attr('class', inactive);
			$('.targetFilter a:nth-of-type(' + 3 + ')').attr('class', active);
        });
    </script>

</body>
</html>