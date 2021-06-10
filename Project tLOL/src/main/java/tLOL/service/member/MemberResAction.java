package tLOL.service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tLOL.dao.MemberDao;
import tLOL.service.CommandProcess;

public class MemberResAction implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		if (session == null || session.getAttribute("member_admin") == "0" ) {
	    	return "../sessionChk";
	    }
		
		String[] member_id = request.getParameterValues("member_id");
		MemberDao md = MemberDao.getInstance();
		int result = 0;
		for(String m : member_id) {
			md.restore(m);
			result += 1;
		}
		request.setAttribute("result", result);
		return "memberRes";
	}
}