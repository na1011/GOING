package going.web.servlet.search;

import going.domain.Paging;
import going.domain.item.ItemRepository;
import going.domain.item.ItemVO;
import going.domain.member.MemberRepository;
import going.domain.member.MemberVO;
import going.domain.member.SessionConst;
import going.domain.view.MyView;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.Set;

@WebServlet("/search/main")
public class SearchMainServlet extends HttpServlet {

	ItemRepository itemRepository = ItemRepository.getInstance();
	MemberRepository memberRepository = MemberRepository.getInstance();

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 페이징
		List<ItemVO> findAll = itemRepository.findAll();

		int page = Integer.parseInt(Optional.ofNullable(request.getParameter("page")).orElse("1"));
		Paging paging = new Paging(page, findAll.size(), 3, 5);

		List<ItemVO> itemList = new ArrayList<>(3);
		for(int i=paging.getStartIndex(); i<=paging.getEndIndex(); i++) {
			itemList.add(findAll.get(i-1));
		}


		// 회원이면 찜한 상품 표시하기
		HttpSession session = request.getSession(false);
		if (session != null) {
			MemberVO loginMember = (MemberVO) session.getAttribute(SessionConst.LOGIN_MEMBER);
			if (loginMember != null) {
				Set<Long> cart = loginMember.getCart();
				
			}
		}


		// 뷰 렌더링
		request.setAttribute("itemList", itemList);
		request.setAttribute("paging", paging);
		MyView mv = new MyView(request.getRequestURI());
		mv.render(request, response);
	}
}
