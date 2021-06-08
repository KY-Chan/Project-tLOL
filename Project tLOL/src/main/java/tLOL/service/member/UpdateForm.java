package tLOL.service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tLOL.dao.MemberDao;
import tLOL.model.Member;
import tLOL.service.CommandProcess;

public class UpdateForm implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
				HttpSession session = request.getSession();
				String account_id = (String)session.getAttribute("account_id");
				MemberDao md = MemberDao.getInstance();
				// updateForm이 아닌곳에서도 session check하기 
				if (account_id != null) {
				Member member = md.select(account_id);
				request.setAttribute("member", member);
				}
		return "updateForm"; //updateForm.jsp에 member값 전달
	}
}
