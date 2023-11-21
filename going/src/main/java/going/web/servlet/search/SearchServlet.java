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
	
	ItemRepository itemRepository = ItemRepository.getInstance(); // new ItemRepository()
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<ItemVO> findAll = itemRepository.findAll();
		
		int page = 1;
		String pageTemp = request.getParameter("page");
		
		if(pageTemp != null) {
			page = Integer.parseInt(pageTemp);
		}
		
		System.out.println("page : " + page);

		int pageNum = (int) Math.ceil((double)findAll.size() / (double)3);
		int endIndex = (int) Math.ceil( (double)page / (double)3 * 3 ) * 3;
		int startIndex = endIndex - 2;
		
		if (endIndex > findAll.size()) {
			endIndex = findAll.size();
		}
		
		System.out.println("findAll.size() : " + findAll.size() + "\npageNum : " + pageNum +"\nendIndex : " + endIndex +"\nstartIndex : " + startIndex);
		
		List<ItemVO> itemList = new ArrayList<>();
		for(int i=startIndex; i<=endIndex; i++) {
			itemList.add(findAll.get(i-1));
		}
		
		request.setAttribute("itemList", itemList);
		request.setAttribute("pageNum", pageNum);
		
		MyView mv = new MyView(request.getRequestURI());
		mv.render(request, response);
	}
}
