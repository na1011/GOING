package going.web.servlet.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import going.domain.member.MemberRepository;
import going.domain.member.MemberVO;

@WebServlet("/member/register")
public class SignUpServlet extends HttpServlet {
	
	MemberRepository memberRepository = MemberRepository.getInstance();

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

		MemberVO member = new MemberVO(email, password);
		memberRepository.save(member);
		
		response.sendRedirect("/member/login");
	}
	
	private String viewResolver(String viewName) {
		return "/WEB-INF/view" + viewName + ".jsp";
	}
}
