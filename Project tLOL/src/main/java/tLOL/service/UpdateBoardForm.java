package tLOL.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tLOL.service.UpdateBoardForm;
import tLOL.dao.ArticleDao;

public class UpdateBoardForm implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		public String requestPro(HttpServletRequest request, HttpServletResponse response) {
			int num = Integer.parseInt(request.getParameter("num"));
			String pageNum= request.getParameter("pageNum");
			ArticleDao ad = ArticleDao.getInstance();
			ArticleDao board = ad.select(num);

			request.setAttribute("board", board);
			request.setAttribute("pageNum", pageNum);
			return "updateBoardForm.jsp";
		return null;
	}

}
