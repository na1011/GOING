package going.web.servlet.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import going.domain.member.MemberRepository;
import going.domain.member.MemberVO;
import going.domain.ConstField;
import going.domain.view.MyView;

@WebServlet("/member/login")
public class LoginServlet extends HttpServlet {
	
	MemberRepository memberRepository = MemberRepository.getInstance();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		
		if (session != null) {
			MemberVO loginMember = (MemberVO) session.getAttribute(ConstField.LOGIN_MEMBER);
			if (loginMember != null) {
				response.sendRedirect("/");
				return;
			}
		}
		
		MyView mv = new MyView(request.getRequestURI());
		mv.render(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String addr = request.getParameter("addr");
		
		MemberVO loginMember = login(email, password);
		
		if (loginMember != null) {
			HttpSession session = request.getSession();
			session.setAttribute(ConstField.LOGIN_MEMBER, loginMember);
			response.sendRedirect(addr != null ? "/" + addr : "/");
			return;
		}
		
		response.sendRedirect(addr != null ? "/member/login?addr=" + addr : "/member/login");
	}
	
	public MemberVO login(String email, String password) {
		return memberRepository.findByEmail(email)
				.filter(m -> m.getPassword().equals(password))
				.orElse(null);
	}
}
