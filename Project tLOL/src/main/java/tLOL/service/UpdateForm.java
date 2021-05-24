package tLOL.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tLOL.dao.MemberDao;
import tLOL.model.Member;

public class UpdateForm implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
				HttpSession session = request.getSession();
				String id = (String)session.getAttribute("id");
				MemberDao md = MemberDao.getInstance();
				Member member = md.select(id);
				request.setAttribute("member", member);
				
		return "updateForm"; //updateForm.jsp에 member값 전달
	}
}
