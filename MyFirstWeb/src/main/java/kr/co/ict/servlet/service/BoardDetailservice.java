package kr.co.ict.servlet.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.BoardDAO;
import kr.co.ict.BoardVO;

public class BoardDetailservice implements IBoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String sbNum = request.getParameter("board_num");
		int bNum = Integer.parseInt(sbNum);
		//System.out.println(bNum);
		
		// dao생성
		BoardDAO dao = BoardDAO.getInstance();
		// dao에서 해당 글번호에 대한 정보를 가져오고
		BoardVO board = dao.getBoardDetail(bNum);
		// 정보가 제대로 들어왔는지 디버깅 해보겠습니다.
		//System.out.println(board);
		// 디테일페이지로 포워딩(강사 기준 boarddetail.jsp)후 화면에 데이터 나오는지 체크
		// 데이터 바인등
		request.setAttribute("board",board);
	
	}

}