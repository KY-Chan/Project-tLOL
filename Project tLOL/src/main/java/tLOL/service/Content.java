package tLOL.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tLOL.dao.ArticleDao;
import tLOL.model.Article;

public class Content implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String pageNum = request.getParameter("pageNum");
		int article_num = Integer.parseInt(request.getParameter("article_num"));
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		ArticleDao ad = ArticleDao.getInstance();
		ad.readcountUpdate(article_num, board_num); // 조회수 증가 
		Article article = ad.select(article_num, board_num); 
		
		request.setAttribute("article_num", article_num);
		request.setAttribute("board_num", board_num);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("article", article);						
		return "content"; //jsp만들고 
	}

}
