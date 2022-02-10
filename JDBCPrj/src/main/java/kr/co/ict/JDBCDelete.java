package kr.co.ict;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Scanner;

public class JDBCDelete {

	public static void main(String[] args) {
		// 사용자가 Scanner로 아이디를 입력하면
		// 해당 아이디 정보가 DB에서 삭제 되도폭 로직을 작성 해보세요
		// 역시 executeUpdate("실행문"); 으로 실행합니다.
		// 제가 Insert에서 시범 보여드렸듯 실행 전에 콘솔을 이용해서
		// 쿼리문이 제대로 작성 되었는지 확인할 수 있도록 보여주는 코드를
		
		
		try {
			Scanner scan = new Scanner(System.in);
			System.out.println("삭제할 유저의 아이디를 입력해주세요.");
			String uId = scan.nextLine();
			
			// DB 종류 지정
			// Class.forName(dbType);
			// DB 서버와 자바간 연결
			// Connection com = DriverManager.getConnection(dbUrl, dbId, dbPw);
			// 쿼리문 발송 준비
			// Statement stmt = con.createStatement();
			
			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcprac1",//접속url
														"root",
														"mysql");

			Statement stmt = con.createStatement();
			
			// 쿼리문 실행전 콘솔에서 조회
			System.out.println("DELETE FROM userinfo WHERE uid = '" + uId +"'");
			
			stmt.executeUpdate("DELETE FROM userinfo WHERE uid = '" + uId +"'");
			scan.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
