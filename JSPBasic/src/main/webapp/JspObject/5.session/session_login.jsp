<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 로그인한 사용자가 해당 페이지에 접근 했는지 안 했는지 세션 조회로 체크
	String id = (String)session.getAttribute("session_id");
	String pw = (String)session.getAttribute("session_pw");
	String nickName = (String)session.getAttribute("session_nick");
	
	// 위의 값(id, pw, nickName)이 null이 아닌 경우는 이미 로그인이 된 상태입니다.
	// 세션은 login_check.jsp에서 로그인 로직을 통과한 경우에만 발급되기 때문입니다.
	// 이를 이용해 세션에 값이 발급된 경우에는 welcome페이지로 리다이렉트 되도록 아래에 로직을 짜보세요.
	if(id != null){
		response.sendRedirect("session_welcome.jsp");
	}
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인창 입니다.</h1>
	<form action="session_login_check.jsp" method="post">
		<input type="text" name="id" placeholder="아이디" /><br/>
		<input type="password" name="pw" placeholder="비밀번호" /><br/>
		<input type="text" name="nickname" placeholder="닉네임" /><br/>
		<input type="submit" value="로그인">
	</form>
</body>
</html>