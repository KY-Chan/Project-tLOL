package tLOL.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tLOL.dao.ArticleDao;
import tLOL.model.Article;

public class WriteForm implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {

		int board_num = Integer.parseInt(request.getParameter("board_num"));
		String page_num = request.getParameter("page_num");
		request.setAttribute("page_num", page_num);
		request.setAttribute("board_num", board_num);
		
		//->board.jsp에서 보낸 값을 getParameter 로 받고 
		
		//pagenumber
		
		//boardnumber -> 이 둘을 받는다.
		
		//setAttribute 로 writeForm.jsp에 필요한 것들을 보낸다.
		return "writeForm";
	}

}
