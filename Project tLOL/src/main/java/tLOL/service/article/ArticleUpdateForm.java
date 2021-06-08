package tLOL.service.article;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tLOL.dao.ArticleDao;
import tLOL.model.Article;
import tLOL.service.CommandProcess;
import tLOL.service.article.ArticleUpdateForm;

public class ArticleUpdateForm implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		int article_num = Integer.parseInt(request.getParameter("article_num"));
		String pageNum = request.getParameter("pageNum");
		
		ArticleDao ad = ArticleDao.getInstance();
		Article article = ad.select(article_num, board_num);
		
		request.setAttribute("article", article);
		request.setAttribute("pageNum", pageNum);
		return "updateBoardForm";
	}

}
