package going.web.servlet.shop;

import going.domain.item.ItemRepository;
import going.domain.item.ItemVO;
import going.domain.member.MemberVO;
import going.domain.ConstField;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/item/cart/add")
public class CartAddServlet extends HttpServlet {

    ItemRepository itemRepository = ItemRepository.getInstance();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Long itemId = Long.parseLong(request.getParameter("itemId"));

        ItemVO findItem = itemRepository.findById(itemId);
        List<MemberVO> likedList = findItem.getLikedBy();

        HttpSession session = request.getSession(false);
        MemberVO loginMember = (MemberVO) session.getAttribute(ConstField.LOGIN_MEMBER);
        List<ItemVO> cartList = loginMember.getCartList();

        if (!cartList.contains(findItem)) {
            cartList.add(findItem);
            likedList.add(loginMember);

            loginMember.setCartList(cartList);
            findItem.setLikedBy(likedList);
            findItem.setLikes(findItem.getLikes() + 1);

            response.getWriter().write("좋아요");
        } else {
            cartList.remove(findItem);
            likedList.remove(loginMember);

            loginMember.setCartList(cartList);
            findItem.setLikedBy(likedList);
            findItem.setLikes(findItem.getLikes() - 1);

            response.getWriter().write("취소");
        }
    }
}
