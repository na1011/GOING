package going.web.servlet.search;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import going.domain.item.ItemRepository;
import going.domain.item.ItemVO;
import going.domain.view.MyView;

@WebServlet("/search/*")
public class SearchServlet extends HttpServlet {
	
	ItemRepository itemRepository = ItemRepository.getInstance();
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<ItemVO> itemList = itemRepository.findAll();
		request.setAttribute("itemList", itemList);
		
		MyView mv = new MyView(request.getRequestURI());
		mv.render(request, response);
	}
}
