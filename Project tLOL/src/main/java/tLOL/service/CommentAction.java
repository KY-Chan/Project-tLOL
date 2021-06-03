package tLOL.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tLOL.dao.CommentDao;
import tLOL.model.Comment;

public class CommentAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int account_num = Integer.parseInt(request.getParameter("account_num"));
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		int article_num = Integer.parseInt(request.getParameter("article_num"));
		String comm_content = request.getParameter("comm_content");
		String pageNum = request.getParameter("pageNum");
		
		CommentDao cd = CommentDao.getInstance();
		Comment comment = new Comment();
		comment.setAccount_num(account_num);
		comment.setBoard_num(board_num);
		comment.setArticle_num(article_num);
		comment.setComm_content(comm_content);
		
		int result = cd.insert(comment);
		request.setAttribute("result", result);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("board_num", board_num);
		request.setAttribute("article_num", article_num);
		return "comment";
	}

}
