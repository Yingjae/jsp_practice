<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원정보 입력</h2>

<form action="req_join_result.jsp" method="post">
	<input type="text" name="id" size="15px" />아이디<br/>
	<input type="password" name="pw" size="15px" />비밀번호<br/>
	<input type="text" name="이름" size="15px" />이름<br/>
	<input type="number" name="나이" size="15px" />나이<br/>
	<input type="submit" value="회원가입" />&nbsp;
	<input type="reset" value="초기화" /><br/>
</form>
</body>
</html>