package tLOL.service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tLOL.dao.MemberDao;
import tLOL.model.Member;
public class LoginAction implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("userID");
		String password = request.getParameter("userPassword");
		MemberDao md = MemberDao.getInstance();
		Member member = md.select(id);
		int result = 0;
		// users 테이블 del컬럼 값이 y일때도 포함하기
		if (member == null || member.getDel().equals("y")) result = -1;
		else {
			if (member.getUserPassword().equals(password)) {
				HttpSession session = request.getSession();
				session.setAttribute("id", id);
				result = 1;
			}
		}
		request.setAttribute("result", result);
		return "login";
	}

}
