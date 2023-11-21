package going.web.servlet.search;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.IntStream;

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
	
	ItemRepository itemRepository = ItemRepository.getInstance(); // new ItemRepository()
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<ItemVO> findAll = itemRepository.findAll();
		
		int page = Integer.valueOf(Optional.ofNullable(request.getParameter("page")).orElseGet(() -> "1"));
		int displayCount = 3;

		int pageNum = (int) Math.ceil( (double)findAll.size() / (double)displayCount );
		int endIndex = page * displayCount;
		int startIndex = endIndex - (displayCount - 1);
		
		if (endIndex > findAll.size()) {
			endIndex = findAll.size();
		}
		
		List<ItemVO> itemList = new ArrayList<>(3);
		for(int i=startIndex; i<=endIndex; i++) {
			itemList.add(findAll.get(i-1));
		}
		
		request.setAttribute("itemList", itemList);
		request.setAttribute("pageNum", pageNum);
		
		MyView mv = new MyView(request.getRequestURI());
		mv.render(request, response);
	}
}
