<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// post방식으로 전송된 한글이 깨지는 경우 한 줄 아래 코드로 인코딩 하면 됩니다.
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("이름");
	String age = request.getParameter("나이");
	
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% if(id.equals("abcd")) { %>
	<b><%= id %></b>는 중복된 아이디 입니다.
<% }else{ %>
	<b>회원가입에 성공하셨습니다.</b>
	<b><%= name %></b>님 환영합니다!
	<a href="req_login_form.jsp"><b>로그인창으로 가기</b></a>
<% } %>
</body>
</html>