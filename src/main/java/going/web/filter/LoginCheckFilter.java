package going.web.filter;

import going.domain.member.SessionConst;

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
			
			if(session == null || session.getAttribute(SessionConst.LOGIN_MEMBER) == null) {

				httpResponse.sendRedirect("/member/login?addr=" + requestURI);
				return;
			}
			chain.doFilter(request, response);
			
		} catch (Exception e) {
			throw e;
		}
	}

}
