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
		String page_num = request.getParameter("page_num");
		String title = request.getParameter("article_title");
		String content = request.getParameter("article_content");
		int account_num = Integer.parseInt(request.getParameter("account_num"));
		ArticleDao ad = ArticleDao.getInstance();
		Article article = new Article();
		article.setBoard_num(board_num);
		article.setArticle_title(title);
		article.setArticle_content(content);
		article.setAccount_num(account_num);
		int result = ad.insert(article);
		request.setAttribute("result", result);
		request.setAttribute("page_num", page_num);
		return "writeAction";
	}

}
