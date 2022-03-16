<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<!-- 로그인 안한 사람이 주소를 통해 비정상적인 접근을 시도할때 로그인여부를 판단해 차단하는 방법 -->
	<c:if test="${sessionScope.session_id eq null }">
		<script>
			location.href="http://localhost:8181/MyFirstWeb/boardList.do";
		</script>
	</c:if>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="http://localhost:8181/MyFirstWeb/boardInsert.do" method="post">
		<input type="text" name="title" placeholder="제목을 입력해주세요." required><br/>
		<input type="text" name="writer" value="${sId}" readonly><br/>
		<textarea rows="30" cols="50" name="content" placeholder="본문을 입력해주세요." required></textarea><br/>
		<input type="submit" value="글쓰기"><input type="reset" value="초기화">
	</form>
</body>
</html>