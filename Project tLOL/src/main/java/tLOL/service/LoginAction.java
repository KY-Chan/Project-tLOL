package tLOL.service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tLOL.dao.MemberDao;
import tLOL.model.Member;
public class LoginAction implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String account_id = request.getParameter("account_id");
		String account_pw = request.getParameter("account_pw");
		MemberDao md = MemberDao.getInstance();
		Member member = md.select(account_id);
		int result = 0;
		// Accounts 테이블 del컬럼 값이 y일때도 포함하기, y=yes n=no
		if (member == null || member.getAccount_del().equals("y")) result = -1;
		else {
			if (member.getAccount_pw().equals(account_pw)) {
				HttpSession session = request.getSession();
				session.setAttribute("account_id", account_id);
				result = 1;
			}
		}
		request.setAttribute("result", result);
		return "login";
	}

}