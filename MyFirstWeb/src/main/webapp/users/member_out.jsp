<%@page import="kr.co.ict.UserDAO"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// DB연결 후, 세션에서 받아온 아이디를 이용해
	// 회원 탈퇴 후 body 태그 내에는 "(아이디) 회원의 탈퇴가 완료되었습니다."
	// 출력하고 실제로 DB에 DELETE 구문을 날려서 삭제까지 처리 해주세요.
	
	// 로그인을 하지 않은 사용자가 접근시 login_form.jsp로 보내주세요.
	
	// 0. session_id 조회해서 로그인 사용자가 접근하는지 여부 체크
	// 폼에서 데이터를 가져오는 경우(request.getParameter())
	// 세션에서 가져오는 경우(session.getAttribute())
	String sId = (String)session.getAttribute("session_id");
	
	// 1. DB연결용 변수 선언
	/*
	String dbType = "com.mysql.cj.jdbc.Driver";
	String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
	String dbId = "root";
	String dbPw = "mysql";
	try{
		// 2. DB종류 지정 및 연결
		Class.forName(dbType);	
		Connection con = DriverManager.getConnection(dbUrl, dbId, dbPw);
		// 3. PSTMT 생성 및 세팅
		// 쿼리문 : DELETE FROM userinfo WHERE uid=?
		String sql = "DELETE FROM userinfo WHERE uid = ?";			
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, sId); // 현재 로그인 된 유저를 삭제하는 것이므로 로그인 유저의 아이디를 넘김.
		
		// 4. 쿼리문 실행
		// executeQuery() -> SELECT문 실행시, executeUpdate() -> SELECT문 이외 실행시
		pstmt.executeUpdate();
		// 5. 자원회수
		con.close();
		pstmt.close();
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		// 삭제가 성공했건 실패했건 로그아웃에 접근한 자체로 세션 파기
		session.invalidate();
		response.sendRedirect("login_form.jsp");
	}
	*/
	// 삭제로직 구현
	// DAO 생성
	UserDAO dao = UserDAO.getInstance();
	// DELETE 로직 호출
	dao.deleteUser(sId);
	// 삭제가 성공했건 실패했건 로그아웃에 접근한 자체로 세션 파기
	session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><%= sId %>회원의 탈퇴가 완료되었습니다.</h1><br/>
    <a href="login_form.jsp">메인화면으로 돌아가기</a>
</body>
</html>