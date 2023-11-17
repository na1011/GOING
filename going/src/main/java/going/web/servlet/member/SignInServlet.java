package going.web.servlet.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import going.domain.member.MemberVO;
import going.domain.member.SessionConst;

@WebServlet("/member/login")
public class SignInServlet extends HttpServlet {
	
	MemberService service = MemberService.getInstance();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();	
		
		String viewPath = viewResolver(requestURI);
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPath);
		dispatcher.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		MemberVO loginMember = service.login(email, password);
		
		HttpSession session = request.getSession();
		session.setAttribute(SessionConst.LOGIN_MEMBER, loginMember);
		
		String addr = request.getParameter("addr");
		response.sendRedirect("/" + addr);
	}
	
	private String viewResolver(String viewName) {
		return "/WEB-INF/view" + viewName + ".jsp";
	}
}
