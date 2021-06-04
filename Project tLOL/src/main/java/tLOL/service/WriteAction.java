package tLOL.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tLOL.dao.ArticleDao;
import tLOL.model.Article;

public class WriteAction implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// getParameter로 writeForm.jsp에서 정보를 받는다
		// mybatis 구현하고 -> content, boardAction 참고
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		String pageNum = request.getParameter("pageNum");
		String article_title = request.getParameter("article_title");
		String article_content = request.getParameter("article_content");
		int account_num = Integer.parseInt(request.getParameter("account_num"));
		ArticleDao ad = ArticleDao.getInstance();
		Article article = new Article();
		article.setBoard_num(board_num);
		article.setArticle_title(article_title);
		article.setArticle_content(article_content);
		article.setAccount_num(account_num);
		int result = ad.insert(article);
		request.setAttribute("result", result);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("board_num", board_num);
		return "writeAction";
	}

}
