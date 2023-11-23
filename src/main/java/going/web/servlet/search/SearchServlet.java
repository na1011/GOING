package going.web.servlet.search;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import going.domain.item.ItemRepository;
import going.domain.item.ItemVO;
import going.domain.view.MyView;

@WebServlet("/search/main")
public class SearchServlet extends HttpServlet {
	
	ItemRepository itemRepository = ItemRepository.getInstance();
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<ItemVO> findAll = itemRepository.findAll();
		
		int page = Integer.valueOf(Optional.ofNullable(request.getParameter("page")).orElse("1"));
		int allSize = findAll.size();
		int displayCount = 3;

		// 전체 페이지 수보다 높은 페이지를 요청할 경우 메인으로 리다이렉트
		int pageNum = (int) Math.ceil( (double)allSize / (double)displayCount );
		
		if (page > pageNum) {
			response.sendRedirect("/search/main");
			return;
		}
		
		// 한 페이지에 표시될 컨텐츠의 시작과 끝
		int endIndex = page * displayCount;
		int startIndex = endIndex - (displayCount - 1);
		
		if (endIndex > allSize) {
			endIndex = allSize;
		}
		
		List<ItemVO> itemList = new ArrayList<>(3);
		for(int i=startIndex; i<=endIndex; i++) {
			itemList.add(findAll.get(i-1));
		}
		
		
		// 페이징을 5페이지 단위로 처리
		int displayPaging = 5;
		int endPage = (int) Math.ceil( (double)page / (double)displayPaging ) * displayPaging;
		int startPage = endPage - (displayPaging - 1);
		
		if (endPage > pageNum) {
			endPage = pageNum;
		}
		
		boolean prev = startPage == 1 ? false : true;
		boolean next = endPage < pageNum ? true : false;


		// 뷰 렌더링
		request.setAttribute("allSize", allSize);
		request.setAttribute("startIndex", startIndex);
		request.setAttribute("endIndex", endIndex);
		
		request.setAttribute("itemList", itemList);
		request.setAttribute("pageNum", pageNum);

		request.setAttribute("prev", prev);
		request.setAttribute("next", next);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		
		MyView mv = new MyView(request.getRequestURI());
		mv.render(request, response);
	}
}
