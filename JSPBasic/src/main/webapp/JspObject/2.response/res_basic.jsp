<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>미성년자 체크</title>
</head>
<body>
	<%-- form태그를 하나 만들어 주세요.
	목적지는 res_check.jsp 이고 method는 get방식 입니다.
	input태그로 나이를 입력받고, 제출 버튼에는 "확인"이라고 적혀있습니다. --%>
	<form action="res_check.jsp" method="get">
		나이 : <input type="number" name="age" size="15px">
		<input type="submit" name="확인">
	</form>
</body>
</html>