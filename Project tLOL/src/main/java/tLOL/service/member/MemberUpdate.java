package tLOL.service.member;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tLOL.dao.MemberDao;
import tLOL.model.Member;
import tLOL.service.CommandProcess;
public class MemberUpdate implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String member_id = request.getParameter("member_id");
		String member_pw = request.getParameter("member_pw");
		String member_nickname = request.getParameter("member_nickname");
		String member_email = request.getParameter("member_email");
		
		Member member = new Member();
		member.setmember_id(member_id);
		member.setmember_pw(member_pw);
		member.setmember_nickname(member_nickname);
		member.setmember_email(member_email);
		MemberDao md = MemberDao.getInstance();
		int result = md.update(member);
		request.setAttribute("result", result);
		
		return "memberUpdate";
	}
}