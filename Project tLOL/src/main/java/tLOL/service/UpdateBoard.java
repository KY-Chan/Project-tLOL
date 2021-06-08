package tLOL.service;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tLOL.service.UpdateBoardForm;
import tLOL.dao.ArticleDao;
import tLOL.model.Article;

public class UpdateBoard implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		int article_num = Integer.parseInt(request.getParameter("article_num"));
		String pageNum = request.getParameter("pageNum");
		String article_title = request.getParameter("article_title");
		String article_content = request.getParameter("article_content");
		
		ArticleDao ad = ArticleDao.getInstance();
		int result = ad.update(article_num, board_num, article_title, article_content);
		request.setAttribute("result", result);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("board_num", board_num);
		request.setAttribute("article_num", article_num);
		return "updateBoard";
		
	}

}
