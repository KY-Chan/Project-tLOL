package tLOL.service.main;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tLOL.dao.ArticleDao;
import tLOL.model.Article;
import tLOL.service.CommandProcess;

public class MainAction implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {

		ArticleDao ar = ArticleDao.getInstance();
		Date date = new Date();
		SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		cal.add(Calendar.DATE, -1);
		
		String endDate = dateformat.format(date);  //현재시간
		String startDate = dateformat.format(cal.getTime());  //하루 전 시간
		List<Article> hotList = ar.hotList(startDate, endDate);  //현재~하루 전 까지 글 중 hotList로 가져옴
		
		request.setAttribute("hotList", hotList);
		
		return "main";
	}

}
