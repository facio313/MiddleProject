







<!DOCTYPE html>
<html lang="en">
<head>
<title>온(ON:溫)</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
.container {
	margin-top:10%
}

.container2 {
	margin:10% 20%
}

@font-face {
	font-family: 'GmarketSansMedium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

.v_title {
	margin:1% 0 2% 0;
	font-color:#444
}

.title {
	font-weight: bold; 
	font-family:'GmarketSansMedium', sans-serif ;font-weight:bold;
	position:relative;
	color:#444;
	font-size:52px;
	padding-bottom:5%
}

#filter {
	display: flex;
	justify-content: left;
	font-size:18px; text-indent:2px; 
	font-weight: bold; 
	font-family:'GmarketSansMedium', sans-serif ;font-weight:bold;
}

#filter img{width:15px; height:15px;} 

.table { padding:5%; background-color:#f1f1f1}

.table th {text-align:center;
color:#fff;font-size:16px;
font-family:'GmarketSansMedium', sans-serif ;
font-weight:bold;
background-color:#50DCA4 
}

.table tr td {margin:10px}

#listArea {
	display: flex;
	justify-content: left;
}

#ListAreaTable {
	border: 1px solid ccc;
}
.media-left {
	width: 30%;
}


/**/
.list-group-item.active {background-color:#444 !important;
border-color:#444}

.row {
	margin:5% auto;
	padding:5%;
	border:1px solid #f1f1f1;
	border-radius:10px;
	box-shadow : 0px 0px 20px #f1f1f1;
	transition:0.2s
}

.row:hover {
	box-shadow : 0px 5px 30px #ccc;
}

.register {/* float:right; */}

.v_title {
	font-family:'GmarketSansMedium', sans-serif ;
font-weight:bold;
}
.media-heading {margin-bottom:0 !important;margin-left:5%}

#v_content {text-align:left;padding:0%;color:#666;position:relative;}

#v_status {font-family:'GmarketSansMedium', sans-serif;position:absolute;top: 20%;right:7%;font-weight:bold;font-size:20px;color:#444;#fff;position:absolute; top:0;right:0%}
i {background:tranparent;}
.pager {background:#fff;border:0px solid #fff;position:relative;right: -42%;er;
   }
</style>
</head>
<body>
  	



<!-- header -->
<header>
	<div class="hd_wrap">
		<a href="/index.do">
		<h1 class="logo">
			<img src="http://kalch413.dothome.co.kr/images/on_logo.png" alt="로고">
		</h1>
		</a>
		<nav class="gnb">
			<ul class="gnbmenu">
				<li>봉사</li>
				<li>후원</li>
				<li>재능기부</li>
				<li>커뮤니티</li>
				<li>마이페이지</li>
				<li><a href="/member/logout.do" class="loginbt">로그아웃</a></li>
			</ul>
		</nav>
	</div>
</header>
<!-- //header -->
<!-- inside -->
<div class="menu_wrap">
	<ul>
		<li><a href="/volList.do">봉사 프로그램</a></li>
		<li><a href="/funding/List.do">후원 목록</a> </li>
		<li><a href="/UsrClsList.do">재능기부 클래스</a></li>
		<li><a href="/ListNoticeController.do">공지사항</a> <a href="/ListQnaController.do">문의사항</a></li>
		<li><a href="/mypageMain.do?c001">마이페이지</a></li>
	</ul>
</div>
<!-- inside -->
	

	<div class="col-sm-12 text-center">
		<!-- 필터 시작 -->
		<div class="container">
			<h1 class="title">봉사 프로그램 목록</h1>
			<h4 id="filter">
				<img src="https://cdn-icons-png.flaticon.com/512/107/107799.png">필터 적용
			</h4>
	<div>      
         <select name="location">
             <option value="전체">전체</option>
             <option value="서울">서울</option>
             <option value="인천">인천</option>
             <option value="대전">대전</option>
             <option value="광주">광주</option>
             <option value="부산">부산</option>
             <option value="울산">울산</option>
         </select>
         
         <select name="status">
             <option value="전체">전체</option>
             <option value="모집 예정">모집 예정</option>
             <option value="모집 중">모집 중</option>
             <option value="모집 완료">모집 완료</option>
         </select>
         
         <select name="category">
             <option value="전체">전체</option>
             <option value="생활편의지원">생활편의지원</option>
             <option value="주거환경">주거환경</option>
             <option value="상담">상담</option>
             <option value="교육">교육</option>
             <option value="보건의료">보건의료</option>
             <option value="농어촌">농어촌</option>
             <option value="문화행사">문화행사</option>
             <option value="환경보호">환경보호</option>
             <option value="행정보조">행정보조</option>
             <option value="안전훈련">안전훈련</option>
             <option value="공익">공익</option>
             <option value="국제협력,해외">국제협력,해외</option>
             <option value="멘토링">멘토링</option>
             <option value="기타">기타</option>
         </select>
   
         <div style="width:100px">
              <input class="form-control col-sm" id="textSearch" type="date" placeholder="날짜" value="">
           </div>
           <style>
            #is {width:50px;height:50px;position:absolute;left:30%}        
           </style>
           <div id="is">
              <button id="btn_search" class="btn isbox"><span class="glyphicon glyphicon-search"></span></button>
           </div> 
      </div>
			
			
			
			<hr>
			
			<div class="register">
				<a href="volRegister.do" class="btn btn-info" role="button">봉사 프로그램 등록</a>
			</div>
			
		</div>
		<!-- 필터 끝 -->

		
		
		<!-- 리스트 시작 -->
		<div class="container2">

			<div class="volList-group row">
				<div class="media">	
					<div class="media-left">
						<img src="/images/default/wallpapaer.jpg"  class="media-object" style="width:300px; height: 300px; margin-top:20px;padding-right:20px;"/>
					</div>
					<div class="media-body" >
						<!-- session -->
				        <a id="v_content" href="volDetail.do?volId=V00074" class="volList-group-item media-heading" >
					        <h3 class="v_title">[문화행사]사랑의 지역나눔행사 봉사자 모집</h3>
  							<p style="color:#ccc">봉사 아이디 : V00074 <br> 기관 아이디 : ins11</p>
							<p><span class="glyphicon glyphicon-calendar"></span>&nbsp;&nbsp;모집 기간 : 2022-11-23 ~ 2022-11-27 </p>
							<p><span class="glyphicon glyphicon-time"></span>&nbsp;&nbsp;모집 시간 : 10:30 ~ 17:00</p>
							<p><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;신청 인원 : 0 / 15</p> 
							<p><span class="glyphicon glyphicon-map-marker"></span>&nbsp;&nbsp;봉사 장소 : 대전광역시 중구 계룡로 846</p>
							<p><span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;봉사 대상 : 행사에 참여하는 지역주민</p>
							<p><span class="glyphicon glyphicon-check"></span>&nbsp;&nbsp;자격 요건 : 만 18세 이상</p>
						
						<span id="v_status">모집 중</span>
						<form action="volWish.do" method="post" onsubmit="return true;">
							<button type="button">

								<i id="emptyHeart" class="bi-heart" style="font-size:3rem; color: red; cursor: pointer;"/>
									<input id="isWished" name="isWished" value="n" type="hidden">

								<input id="volId" name="volId" value="V00074" type="hidden">
								<input name="page" value="volList" type="hidden">
								</i>
							</button>
						</form>
						</a>
					</div>
				</div>
			</div>

			<div class="volList-group row">
				<div class="media">	
					<div class="media-left">
						<img src="images\default\default.jpg"  class="media-object" style="width:300px; height: 300px; margin-top:20px;padding-right:20px;"/>
					</div>
					<div class="media-body" >
						<!-- session -->
				        <a id="v_content" href="volDetail.do?volId=V00079" class="volList-group-item media-heading" >
					        <h3 class="v_title">[생활편의지원]따뜻한 손길 '사랑의 김장 나눔 봉사' </h3>
  							<p style="color:#ccc">봉사 아이디 : V00079 <br> 기관 아이디 : ins11</p>
							<p><span class="glyphicon glyphicon-calendar"></span>&nbsp;&nbsp;모집 기간 : 2022-11-18 ~ 2022-11-22 </p>
							<p><span class="glyphicon glyphicon-time"></span>&nbsp;&nbsp;모집 시간 : 09:30 ~ 16:30</p>
							<p><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;신청 인원 : 0 / 30</p> 
							<p><span class="glyphicon glyphicon-map-marker"></span>&nbsp;&nbsp;봉사 장소 : 부산광역시 북구 만덕3로 52</p>
							<p><span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;봉사 대상 : 소외계층, 저소득층</p>
							<p><span class="glyphicon glyphicon-check"></span>&nbsp;&nbsp;자격 요건 : 부산거주 만 14세 이상</p>
						
						<span id="v_status">모집 중</span>
						<form action="volWish.do" method="post" onsubmit="return true;">
							<button type="button">

								<i id="emptyHeart" class="bi-heart" style="font-size:3rem; color: red; cursor: pointer;"/>
									<input id="isWished" name="isWished" value="n" type="hidden">

								<input id="volId" name="volId" value="V00079" type="hidden">
								<input name="page" value="volList" type="hidden">
								</i>
							</button>
						</form>
						</a>
					</div>
				</div>
			</div>

			<div class="volList-group row">
				<div class="media">	
					<div class="media-left">
						<img src="/images/default/wallpapaer.jpg"  class="media-object" style="width:300px; height: 300px; margin-top:20px;padding-right:20px;"/>
					</div>
					<div class="media-body" >
						<!-- session -->
				        <a id="v_content" href="volDetail.do?volId=V00086" class="volList-group-item media-heading" >
					        <h3 class="v_title">[공익]장애인의 날 기념 '열손가락 예쁜 말' 캠페인</h3>
  							<p style="color:#ccc">봉사 아이디 : V00086 <br> 기관 아이디 : ins11</p>
							<p><span class="glyphicon glyphicon-calendar"></span>&nbsp;&nbsp;모집 기간 : 2022-11-29 ~ 2022-12-01 </p>
							<p><span class="glyphicon glyphicon-time"></span>&nbsp;&nbsp;모집 시간 : 10:00 ~ 18:00</p>
							<p><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;신청 인원 : 0 / 33</p> 
							<p><span class="glyphicon glyphicon-map-marker"></span>&nbsp;&nbsp;봉사 장소 : 대전광역시 중구 유천로132번길 64</p>
							<p><span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;봉사 대상 : 지역민</p>
							<p><span class="glyphicon glyphicon-check"></span>&nbsp;&nbsp;자격 요건 : 대학에 재학, 휴학 중인 대학생들</p>
						
						<span id="v_status">모집 예정</span>
						<form action="volWish.do" method="post" onsubmit="return true;">
							<button type="button">

								<i id="emptyHeart" class="bi-heart" style="font-size:3rem; color: red; cursor: pointer;"/>
									<input id="isWished" name="isWished" value="n" type="hidden">

								<input id="volId" name="volId" value="V00086" type="hidden">
								<input name="page" value="volList" type="hidden">
								</i>
							</button>
						</form>
						</a>
					</div>
				</div>
			</div>

	
    	
	<div id="pagelist">
		<ul class="pager" style="float:center;">
			<li><a class="prev" href="#">Prev</a></li>
		</ul>
		<ul class="pagination" style="float:center;">
			
	  		
	  		
	  			<li class="active"><a class="paging" href="#">1</a></li>
	  		
	  		
	  	
	  		
	  		
	  		
	  			<li><a class="paging" href="#">2</a></li>
	  		
	  	
	  		
	  		
	  		
	  			<li><a class="paging" href="#">3</a></li>
	  		
	  	
	  		
	  		
	  		
	  			<li><a class="paging" href="#">4</a></li>
	  		
	  	
	  		
	  		
	  		
	  			<li><a class="paging" href="#">5</a></li>
	  		
	  	
		</ul>
		<ul class="pager" style="float: left;">
			<li><a class="next" href="#">Next</a></li>
		</ul>	
	</div>
		</div>
		<!-- 리스트 끝 -->
		
	</div>
	
<script>

// 하트
      	var yon = null;

        $('i').on('click',function(){
        	
          	
			$.ajax({
                type: 'post',
				url: '/volWish.do',
                data: {
            		"isWished" : $('#isWished').val(),
            		"volId" : $('#volId').val(),
            		"memId" : $('#memId').val()
          			 },
                success: 
                	 if(yon == 'y'){
				     	$(this).attr('class','bi-heart-fill');
				     	$('#isWished').val('y');
		             } else if($(yon == 'n'){
				        $(this).attr('class','bi-heart');
				     	$('#isWished').val('n');
				     	
		             },
                 error: function(chr){
                     alert("상태 : " + xhr.status)
                 };
       		})
        });

$(document).ready(function(){
	$('.menu_wrap').hide();
	$('.gnbmenu').mouseover(function(){
		$('.menu_wrap').slideDown();
	});
	$('.container').mouseover(function(){
		$('.menu_wrap').hide();
	});
});
$(".paging").on('click',function(){
	location.href="/volList.do?pageNo=" + $(this).text();
	
});


//이전버튼 클릭 이벤트
let currentPage;

$(".prev").on('click',function(){
	if(1 == 1){
		currentPage = 1;
	} else {
		currentPage = 1 - 1;
	}
	location.href="/volList.do?pageNo=" + currentPage;
});

//다음버튼 클릭 이벤트
$(".next").on('click',function(){
	if(1 == 5) {
		currentPage = 1;
	} else {
		currentPage = 1 + 1;
	}
	location.href="/volList.do?pageNo=" + currentPage;
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

$('#btn_search').on('click',function(){
	   let url;
	   
	   location.href="/volList.do?"+
	         "location="+$('select[name=location] option:selected').val()+
	         "&status="+$('select[name=status] option:selected').val()+
	         "&category="+$('select[name=category] option:selected').val()+
	         "&date="+$('input[type=date]').val();
	         
	   console.log($('select[name=location] option:selected').val());
	})
</script>
</body>
</html>