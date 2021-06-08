package tLOL.service.member;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tLOL.dao.MemberDao;
import tLOL.model.Member;
import tLOL.service.CommandProcess;
public class MemberUpdate implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String account_id = request.getParameter("account_id");
		String account_pw = request.getParameter("account_pw");
		String account_nickname = request.getParameter("account_nickname");
		String account_email = request.getParameter("account_email");
		
		Member member = new Member();
		member.setAccount_id(account_id);
		member.setAccount_pw(account_pw);
		member.setAccount_nickname(account_nickname);
		member.setAccount_email(account_email);
		MemberDao md = MemberDao.getInstance();
		int result = md.update(member);
		request.setAttribute("result", result);
		
		return "update";
	}
}