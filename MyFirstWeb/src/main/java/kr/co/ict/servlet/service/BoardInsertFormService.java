package kr.co.ict.servlet.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BoardInsertFormService implements IBoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// session 생성
		HttpSession session = request.getSession();
		// 세션값 얻어오기
		String sId = (String)session.getAttribute("session_id");
		// 세션값을 얻어온 후 콘솔에 찍기
		System.out.println("insertForm.do : " + sId);
		
		// 글쓰기 창에 아이디를 보내서 로그인한 사용자명이 곧  아이디로 쓰이도록 처리
		request.setAttribute("sId", sId);
		
		if(sId == null) {
			RequestDispatcher dp = request.getRequestDispatcher("/boardList.do");
			dp.forward(request, response);
			
			
		}
		
	}

}
