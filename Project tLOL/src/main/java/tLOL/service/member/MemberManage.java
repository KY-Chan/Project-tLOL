package tLOL.service.member;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tLOL.dao.MemberDao;
import tLOL.model.Member;
import tLOL.service.CommandProcess;
public class MemberManage implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		MemberDao md = MemberDao.getInstance();
		
		List<Member> memberlist = md.memberlist();
		
		request.setAttribute("memberlist", memberlist);
		/*
		request.setAttribute("board_name", board_name);
		request.setAttribute("keyword", keyword);
		request.setAttribute("PAGE_PER_BLOCK", PAGE_PER_BLOCK);
		request.setAttribute("number", number);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("board_num", board_num);
		*/
		
		return "manageForm";
	}	
}
