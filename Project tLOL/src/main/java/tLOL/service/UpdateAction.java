package tLOL.service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tLOL.dao.MemberDao;
import tLOL.model.Member;
public class UpdateAction implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		   String userID = request.getParameter("userID");
		   String userPassword = request.getParameter("userPassword");
		   String userName = request.getParameter("userName");
		   String userNickName = request.getParameter("userNickName");
		
		Member member = new Member();
		member.setUserID(userID);
		member.setUserPassword(userPassword);
		member.setUserName(userName);
		member.setUserNickName(userNickName);
		MemberDao md = MemberDao.getInstance();
		int result = md.update(member);
		request.setAttribute("result", result);
		
		return "update";
	}
}