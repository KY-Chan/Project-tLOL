package tLOL.service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tLOL.dao.MemberDao;
import tLOL.model.Member;
public class JoinAction implements CommandProcess {
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
		Member mem = md.select(userID);
		int result = 0;
		if (mem == null) result = md.insert(member);
		else result = -1;
		request.setAttribute("result", result);
		return "join";
	}
}