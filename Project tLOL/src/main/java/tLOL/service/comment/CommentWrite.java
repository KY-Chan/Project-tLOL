package tLOL.service.comment;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tLOL.dao.CommentDao;
import tLOL.model.Comment;
import tLOL.service.CommandProcess;

public class CommentWrite implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
	    if (session == null || session.getAttribute("account_num") == null ) {
	    	int result = 0;
			request.setAttribute("result", result);
	    } else {
	    	int account_num = Integer.parseInt(request.getParameter("account_num"));
			int board_num = Integer.parseInt(request.getParameter("board_num"));
			int article_num = Integer.parseInt(request.getParameter("article_num"));
			String pageNum = request.getParameter("pageNum");
			
			String comm_content = request.getParameter("comm_content");
			
			Comment comment = new Comment();
			comment.setAccount_num(account_num);
			comment.setBoard_num(board_num);
			comment.setArticle_num(article_num);
			comment.setComm_content(comm_content);

			CommentDao cd = CommentDao.getInstance();
			int result = cd.insert(comment);
		
			request.setAttribute("result", result);
			request.setAttribute("pageNum", pageNum);
			request.setAttribute("board_num", board_num);
			request.setAttribute("article_num", article_num);
	    }
		return "commentResult";
	}

}
