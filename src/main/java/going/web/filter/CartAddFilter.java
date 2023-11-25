package going.web.filter;

import going.domain.ConstField;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/item/cart/add")
public class CartAddFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        HttpServletRequest httpRequest = (HttpServletRequest) request;
        try {
            HttpSession session = httpRequest.getSession(false);
            if(session == null || session.getAttribute(ConstField.LOGIN_MEMBER) == null) {
                return;
            }
            chain.doFilter(request, response);
        } catch (Exception e) {
            throw e;
        }
    }
}
