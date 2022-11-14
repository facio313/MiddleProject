<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	String rst = session.getAttribute("rst") == null ? "" : session.getAttribute("rst").toString();
	session.removeAttribute("rst");
%>

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">

</script>
<style>
.container {
	width: 40%;
	margin: 30%;
}

.row {
	border: 4px solid lightgray;
	padding: 10px;
}

.content {
	border: 5px solid white;
}

p{
	display: none;
	padding: 10px;
	color: red;
}
</style>
</head>
<body>
	<form action="login.do" method="post">
		<div class="container">
			<div class="row">
				<div class="content">
					<input id="userId" name="memId" placeholder="ID">
				</div>
				<div class="content">
					<input id="userPw" name="memPass" type="password"
						placeholder="PASSWORD">
				</div>
				<div class="warning">
					<p>
						아이디 또는 비밀번호를 잘못 입력했습니다.<br>입력하신 내용을 다시 확인해주세요.
					</p>
				</div>
				<div class="content">
					<button id="loginBtn">로그인</button>
				</div>
			</div>
		</div>
	</form>

	<div id=option class="join">
		<a href="/member/select.jsp">회원가입하기</a>
	</div>
	<div id=option class="search">
		<a href="/Join.do">ID ● PW 찾기</a>
	</div>


	<script>
					
		if("<%=rst%>" == "ok"){
			// 성공시 페이지 이동
			location.replace("/member/login.do");
			
		}else if("<%=rst%>" == "no") {
			// 실패시 경고문 출력
			$('p').show();
		}
	</script>
</body>
</html>