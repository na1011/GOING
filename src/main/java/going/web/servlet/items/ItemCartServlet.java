package going.web.servlet.items;

import going.domain.member.MemberRepository;
import going.domain.member.MemberVO;
import going.domain.member.SessionConst;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/item/cart/add")
public class ItemCartServlet extends HttpServlet {

    MemberRepository memberRepository = MemberRepository.getInstance();

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Long itemId = Long.parseLong(request.getParameter("itemId"));

        HttpSession session = request.getSession(false);
        MemberVO loginMember = (MemberVO) session.getAttribute(SessionConst.LOGIN_MEMBER);

        int result = memberRepository.cartSave(loginMember.getId(), itemId);
        if (result == 1) {

        }
    }
}
