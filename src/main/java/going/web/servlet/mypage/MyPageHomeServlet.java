package going.web.servlet.mypage;

import going.domain.ConstField;
import going.domain.item.ItemVO;
import going.domain.member.MemberRepository;
import going.domain.member.MemberVO;
import going.domain.view.MyView;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/myPage/home")
public class MyPageHomeServlet extends HttpServlet {

    MemberRepository memberRepository = MemberRepository.getInstance();

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        MemberVO loginMember = (MemberVO) session.getAttribute(ConstField.LOGIN_MEMBER);
        List<ItemVO> cartList = loginMember.getCartList();

        request.setAttribute("cartList", cartList);

        MyView mv = new MyView(request.getRequestURI());
        mv.render(request, response);
    }
}
