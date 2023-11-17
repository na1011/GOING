package going.web.servlet.home;

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

@WebServlet("/")
public class HomeServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session = request.getSession(false);
		if (session == null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/index.jsp");
			dispatcher.forward(request, response);
		}
		
		MemberVO loginMember = (MemberVO) session.getAttribute(SessionConst.LOGIN_MEMBER);
		String addr = request.getParameter("addr");
		
		if (request.getParameter("addr") != null || loginMember != null) {
			request.setAttribute("loginMember", loginMember);
			response.sendRedirect("/" + addr);
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/index.jsp");
		dispatcher.forward(request, response);
	}

}
