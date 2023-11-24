package going.web.servlet.search;

import going.domain.Paging;
import going.domain.item.ItemRepository;
import going.domain.item.ItemVO;
import going.domain.view.MyView;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@WebServlet("/search/main")
public class SearchServlet extends HttpServlet {
	
	ItemRepository itemRepository = ItemRepository.getInstance();
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<ItemVO> findAll = itemRepository.findAll();
		int page = Integer.parseInt(Optional.ofNullable(request.getParameter("page")).orElse("1"));
		Paging paging = new Paging(page, findAll.size(), 3, 5);

		// 전체 페이지 수보다 높은 페이지를 요청할 경우 1페이지로 리다이렉트
		if (page > paging.getPageNum()) {
			response.sendRedirect("/search/main");
			return;
		}

		List<ItemVO> itemList = new ArrayList<>(3);
		for(int i=paging.getStartIndex(); i<=paging.getEndIndex(); i++) {
			itemList.add(findAll.get(i-1));
		}

		// 뷰 렌더링
		request.setAttribute("itemList", itemList);
		request.setAttribute("paging", paging);
		
		MyView mv = new MyView(request.getRequestURI());
		mv.render(request, response);
	}
}
