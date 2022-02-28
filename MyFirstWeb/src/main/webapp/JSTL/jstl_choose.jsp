<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- c태그 라이브러리를 쓸 수 있도록 지시자(디렉티브)를 작성 해주세요. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 한글이 깨지지 않도록 하는 코드 -->
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- jstl_form2.jsp를 만들어서 목적지를 여기로 해주시고
실제로 보낸 데이터가 여기서 출력 되도록 만들어 주세요. -->
<c:choose>
    <c:when test="${param.lang  eq '자바'}">
        당신은 자바로 웹 개발을 합니다.
    </c:when>
    <c:when test="${param.lang  eq '파이썬'}">
        당신은 파이썬으로 웹 개발을 합니다.
    </c:when>
    <c:otherwise>
        당신은 php로 웹 개발을 합니다.
    </c:otherwise>
</c:choose>

</body>
</html>