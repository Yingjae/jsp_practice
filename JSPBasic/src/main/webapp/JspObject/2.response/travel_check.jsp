<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// radio는 여러 대상 중 하나만 선택할 수 있기 때문에 데이터가 무조건 하나만 넘어오는 것이 담보 됩니다.
	String spotName = request.getParameter("spot");
	// 콘솔을 이용해서 전달 데이터 확인
	// System.out.println(USA);
	
	if(spotName.equals("USA")){
		response.sendRedirect("travel_USA.jsp");
	}else if(spotName.equals("Japan")){
		response.sendRedirect("travel_Japan.jsp");
	}else if(spotName.equals("Austrailia")){
		response.sendRedirect("travel_Austrailia.jsp");
	}else{
		response.sendRedirect("travel_Canada.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>