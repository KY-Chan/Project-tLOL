package tLOL.service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tLOL.dao.MemberDao;
import tLOL.service.CommandProcess;

public class MemberOutAction implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {		
		String[] member_id = request.getParameterValues("chk_member_id");
		MemberDao md = MemberDao.getInstance();
		int result = 0;
		for(String m : member_id) {
			md.delete(m);
			result += 1;
		}
		request.setAttribute("result", result);
		return "memberOut";
	}
}
