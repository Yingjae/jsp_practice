<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 세션에 저장된 정보를 확인해
	// ID님 접속을 환영합니다. 라고 안내해주는 화면을 만들어보겠습니다.
	// 추후 여기에는 탈퇴하기, 가입하기, 정보수정하기 버튼이 추가 될 예정입니다.
	
	String sId = (String)session.getAttribute("session_id");
	// session에 아이디가 남아있는 과정 문제풀이
	// form데이터(http) -> 자바 변수로 변환 -> 쿼리문에 조합 -> DB에 전달
	// -> DB에서 받아온 데이터로 로그인 처리 -> session.serAttribute로 세션영역에 로그인 정보 저장
	// -> 이후 저장된 데이터를 session.getAttribute를 이용해 정보 불러오기
	
	// 로그인이 안 된 사용자가 여기로 접근하면 로그인 페이지로 보내주세요.
	if(sId == null){
		response.sendRedirect("login_form.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><%=sId %>님 접속을 환영합니다.</h1>
	<a href="login_update.jsp">정보수정하기</a><br/>
	<a href="logout.jsp">로그아웃하기</a><br/><!-- 세션 파기 후 login.jsp로 보내주세요.
	login_form.jsp도 만약 로그인한 사용자가 접근하면 wlecome페이지로 보내도록 로직을 살짝 수정해주세요.	 -->
	<a href="member_out.jsp">회원탈퇴하기</a><br/><!-- 회원 탈퇴를 위해 member_out.jsp를 만들어보겠습니다. -->
	<!-- 회원목록보기 링크를 만들어주세요. -->
	<a href="user_list2.jsp">회원목록보기</a><br/>
</body>
</html>