package tLOL.service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class LoginForm implements CommandProcess{
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String referer = request.getHeader( "REFERER"); // 이전 페이지
		request.setAttribute("referer", referer);
		return "loginForm";
	}
}