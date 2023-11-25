package going.web.filter;

import going.domain.ConstField;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(value = {"/myPage/*"})
public class LoginCheckFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;
		String requestURI = httpRequest.getRequestURI().substring(1);
		
		try {
			HttpSession session = httpRequest.getSession(false);
			
			if(session == null || session.getAttribute(ConstField.LOGIN_MEMBER) == null) {
				httpRequest.setAttribute("msg", "로그인이 필요한 페이지 입니다.");
				httpRequest.setAttribute("url", "/member/login?addr=" + requestURI);

				RequestDispatcher dispatcher = httpRequest.getRequestDispatcher("/WEB-INF/view/alert.jsp");
				dispatcher.forward(httpRequest, httpResponse);
				return;
			}
			chain.doFilter(request, response);
			
		} catch (Exception e) {
			throw e;
		}
	}

}
