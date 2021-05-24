package tLOL.service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tLOL.dao.MemberDao;
import tLOL.model.Member;
public class Confirm implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String msg  = "";
		MemberDao md = MemberDao.getInstance();
		Member member  = md.select(id);
		if (member == null) msg = "사용 가능한 아이디입니다";
		else msg = "사용중이니 다른 아이디를 사용하세요";
		request.setAttribute("msg", msg);
		return "confirm";
	}
}