<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String nickName = request.getParameter("nickName");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이름 : <%= name %><br/>
	별명 : <%= nickName %><br/>
------------------EL식 출력-----------------<br/>
이름 : ${param.name }<br/>
별명 : ${param.nickName }<br/>		
</body>
</html>