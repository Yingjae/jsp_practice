<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로또번호 생성 결과</h1>
		<%
		List<Integer> lotto = new ArrayList<>();

		int getNum = 0;

		while(lotto.size() != 6) {
			getNum = (int)(Math.random() * 45) + 1;
			if(!lotto.contains(getNum)) {
				lotto.add(getNum);
			}						
		}
		// 리스트 오름차순 정렬
		Collections.sort(lotto);
		%>
	<p>
		이번주 로또는 이 번호다!!!<br>
		
		<%
			for(Integer num : lotto){
				out.println(num + "&nbsp;");
				Thread.sleep(700); // CPU를 잠시 멈추는 메서드
				out.flush(); // 브라우저의 출력 버퍼를 비우는 메서드
			}
		%>		

</body>
</html>