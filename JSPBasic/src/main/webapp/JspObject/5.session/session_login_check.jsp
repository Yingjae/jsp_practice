<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 한글데이터 깨지지 않게 인코딩 설정 바꾸기
	request.setCharacterEncoding("utf-8");
	// form에서 보내준 데이터 받아오기
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nickName = request.getParameter("nickname");
	
	String loginCheck = (String)session.getAttribute("session_id");
	if(loginCheck != null){
		response.sendRedirect("session_welcome.jsp");
	}
	
	// 로그인 로직 작성
	if(id.equals("kkk1234") && pw.equals("1111")){
		session.setAttribute("session_id" , id);
		session.setAttribute("session_pw" , pw);		
		session.setAttribute("session_nick" , nickName);		
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
	<b>로그인에 실패하셨습니다.</b><br/>
	<a href="session_login.jsp"><b>로그인창으로 돌아가기</b></a>
</body>
</html>