package tLOL.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tLOL.dao.MemberDao;

public class DeleteAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String account_id = (String)session.getAttribute("account_id");
		MemberDao md = MemberDao.getInstance();
		if (account_id != null) {
			int result = md.delete(account_id);
			if (result > 0) session.invalidate();
			request.setAttribute("result", result);
		}
		return "delete";
	}
}
