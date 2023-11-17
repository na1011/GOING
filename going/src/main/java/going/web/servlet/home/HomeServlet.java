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
import going.domain.view.MyView;

@WebServlet("/")
public class HomeServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String addr = request.getParameter("addr");
		MyView mv = new MyView("/index");

		HttpSession session = request.getSession(false);
		if (session != null) {
			MemberVO loginMember = (MemberVO) session.getAttribute(SessionConst.LOGIN_MEMBER);
			request.setAttribute("loginMember", loginMember);
			mv.setViewName("/" + addr);
			mv.render(request, response);
		} else {
			mv.render(request, response);
		}
	}
}
