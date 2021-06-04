package tLOL.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tLOL.dao.ArticleDao;
import tLOL.dao.BoardDao;
import tLOL.dao.CommentDao;
import tLOL.model.Article;

public class BoardAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		ArticleDao ad = ArticleDao.getInstance();
		BoardDao bd = BoardDao.getInstance();
		
		final int ROW_PER_PAGE = 10;
		final int PAGE_PER_BLOCK = 10;
		
		String tmp_board_num = request.getParameter("board_num");
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null || pageNum.equals(""))
			pageNum = "1";
		int currentPage = Integer.parseInt(pageNum);
		
		if(tmp_board_num == null || tmp_board_num.equals("")) { // 내가 쓴 글
			HttpSession session = request.getSession();
		    if (session == null || session.getAttribute("account_num") == null ) {
		    	return "../sessionChk";
		    } 
			
			int account_num = Integer.parseInt(request.getParameter("account_num"));
			int total = ad.getMyTotal(account_num);
			
			int startRow = (currentPage - 1) * ROW_PER_PAGE + 1;
			int endRow = startRow + ROW_PER_PAGE - 1;
			int number = total - startRow + 1;
			int totalPage = (int) Math.ceil((double) total / ROW_PER_PAGE);
			int startPage = currentPage - (currentPage - 1) % PAGE_PER_BLOCK;
			int endPage = startPage + PAGE_PER_BLOCK - 1;
			if (endPage > totalPage)
				endPage = totalPage;
			
			List<Article> list = ad.myList(startRow, endRow, account_num);
			request.setAttribute("list", list);
			
			request.setAttribute("PAGE_PER_BLOCK", PAGE_PER_BLOCK);
			request.setAttribute("number", number);
			request.setAttribute("currentPage", currentPage);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			request.setAttribute("totalPage", totalPage);
			return "boardMyArticle";
			
		} else { // 일반 게시판
			int board_num = Integer.parseInt(tmp_board_num);
			int total = ad.getTotal(board_num);

			int startRow = (currentPage - 1) * ROW_PER_PAGE + 1;
			int endRow = startRow + ROW_PER_PAGE - 1;
			int number = total - startRow + 1;
			int totalPage = (int) Math.ceil((double) total / ROW_PER_PAGE);
			int startPage = currentPage - (currentPage - 1) % PAGE_PER_BLOCK;
			int endPage = startPage + PAGE_PER_BLOCK - 1;
			if (endPage > totalPage)
				endPage = totalPage;

			List<Article> list = ad.list(startRow, endRow, board_num);
			request.setAttribute("list", list);
			String board_name = bd.getName(board_num);
			request.setAttribute("board_name", board_name);
			
			request.setAttribute("PAGE_PER_BLOCK", PAGE_PER_BLOCK);
			request.setAttribute("number", number);
			request.setAttribute("currentPage", currentPage);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("board_num", board_num);
			return "board";
		}
	}
}
