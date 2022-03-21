package kr.co.ict.servlet.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.ict.BoardDAO;

public class BoardDeleteService implements IBoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String strbNum = request.getParameter("board_num");
		int bNum = Integer.parseInt(strbNum);
		
		String writer = request.getParameter("writer");
		
		HttpSession session = request.getSession();
		String sid = (String)session.getAttribute("session_id");
		
		// 1. DAO 생성
		if(sid.equals(writer)) {
			BoardDAO dao = BoardDAO.getInstance();
			// 2. 삭제로직 실행
			dao.getDeleteBoard(bNum);			
		}
		
	}

}
