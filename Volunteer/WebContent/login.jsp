<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>
	<input type="text" name="memId"><br>
	<input type="text" name="memPass"><br>
	<button formaction="volList.do">회원 로그인</button>
</form>
<br>
<hr>
<Br>
<button onclick="location.href='volList.do'">비회원 로그인</button>
</body>
</html>