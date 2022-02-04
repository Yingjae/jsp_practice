<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가고싶은 여행지들</title>
</head>
<body>
	<%--
		form태그를 만들어 주시고 목적지는 travel_check.jsp, post 방식입니다.
		라디오 버튼을 최소 4개를 만들어 주세요
		각 라디오 버튼에는 value= 라고 해서 뭘 선택 했는지 식별 할수 있도록
		각 버튼별로 다른 value값을 지정해 주세요.
		
		submit 버튼도 하나 만들어주세요.
	 --%>
	
	 <form action="travel_check.jsp" method="post">
	 	<input type="radio" name="spot" value="USA" />미국<br/>
	 	<input type="radio" name="spot" value="Japan" />일본<br/>
	 	<input type="radio" name="spot" value="Austrailia" />호주<br/>
	 	<input type="radio" name="spot" value="Canada" />캐나다<br/>
	 	<input type="submit" value="여행가기" />
	 </form>
</body>
</html>