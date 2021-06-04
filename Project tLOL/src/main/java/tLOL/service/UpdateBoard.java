package tLOL.service;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tLOL.service.UpdateBoardForm;
import tLOL.dao.ArticleDao;
import tLOL.model.Article;

public class UpdateBoard implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		try {request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {	}
		Article article = new Article();
		int num = Integer.parseInt(request.getParameter("Article_num"));
		String pageNum = request.getParameter("pageNum");
		String subject = request.getParameter("subject");
		String content = request.getParameter("Article_content");
		String password  = request.getParameter("password");
		Article.setNum(num);
		Article.setSubject(subject);
		Article.setContent(content);
		Article.setPassword(password);
		ArticleDao ad = ArticleDao.getInstance();
		int result  = ad.update(Article); 
		
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("result", result);
			return "updateBoardForm.jsp";
		
	}

}
