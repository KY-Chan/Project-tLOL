package tLOL.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tLOL.dao.ArticleDao;
import tLOL.model.Article;

public class WriteForm implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		String pageNum = request.getParameter("pageNum");
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("board_num", board_num);
		return "writeForm";
	}

}