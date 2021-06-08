package tLOL.service.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tLOL.service.CommandProcess;

public class BoardSearch implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String keyword = request.getParameter("keyword");
		return null;
	}

}
