package tLOL.service.riot;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import net.rithms.riot.api.RiotApiException;
import tLOL.service.CommandProcess;

public class TestSummon implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		TestInfo sInfo = new TestInfo();
		try {
			AsyncExample async = new AsyncExample();
		} catch (RiotApiException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		request.setAttribute("sInfo", sInfo);
		return "searchResult";
	}

}
