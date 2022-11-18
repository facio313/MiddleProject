<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>재능기부 작성</title>

<link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet"> 
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<script src=" https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/lang/summernote-ko-KR.min.js"></script>

<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/usrCls.css">
<style>
</style>
</head>
<body>
	<%@ include file="../header.jsp"%>
	<div class="bigWrap container">
	<div class="jumbotron f_title row_block">
	    <h2>글 작성</h1>
        <p>INSERT</p>
    </div>
    <div class="post_detail">
	<form action="UsrClsEdit.do" method="post"
		enctype="multipart/form-data">
		<div>
			<h2>썸네일설정</h2>
			<input type="file" name="thumbnail">
		</div>

		<div>
			<h2>제목</h2>
			<input type="text" name="title" >
		</div>

		<input name="category" type="hidden">
		<div class="dropdown">
			<button class="btn btn-primary dropdown-toggle" type="button"
				data-toggle="dropdown" id="btn_dropdown">
				카테고리선택
				<span class="caret"></span>
			</button>
			<ul class="dropdown-menu">
				<li><a href="#">전체</a></li>
				<li class="divider"></li>
				<li><a href="#">교육</a></li>
				<li><a href="#">체육</a></li>
				<li><a href="#">음악</a></li>
				<li><a href="#">디자인</a></li>
				<li><a href="#">언어</a></li>
			</ul>
		</div>
		</input>

		<div>
			<h2>내용테스트</h2>
		</div>

		<textarea id="summernote" name="detail"></textarea>

		<button>저장</button>
		<button id="btn_cancel">취소</button>
	</form>
	</div>
</div>

	<script>
		$(document).ready(function() {
			//여기 아래 부분
			$('#summernote').summernote({
				height : 800, // 에디터 높이
				minHeight : null, // 최소 높이
				maxHeight : null, // 최대 높이
				focus : true, // 에디터 로딩후 포커스를 맞출지 여부
				lang : "ko-KR", // 한글 설정
				placeholder : '' //placeholder 설정

			});
		});		
		
		$(".dropdown-menu li a").click(function(){		  
	 		  $("#btn_dropdown").html($(this).text()+' <span class="caret"></span>');	
	 		  $("input[name=category]").val($(this).text());
		});
		
		$('#btn_cancel').on('click',function(){
			location.href="<%=request.getContextPath()%>/UsrClsList.do"
		});
		
		$(document).ready(function(){
			$('.menu_wrap').hide();
			$('.gnbmenu').mouseover(function(){
				$('.menu_wrap').slideDown();
			});
			$('.menu_wrap').mouseout(function(){
				$('.menu_wrap').hide();
			});
		});
	</script>
</body>
</html>