package tLOL.service.member;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tLOL.dao.MemberDao;
import tLOL.model.Member;
import tLOL.service.CommandProcess;

public class MemberView implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String account_id = (String)session.getAttribute("account_id");
		MemberDao md = MemberDao.getInstance();
		Member member  = md.select(account_id);
		request.setAttribute("member", member);
		
		return "view"; //view.jsp에 member값 전달
	}
}