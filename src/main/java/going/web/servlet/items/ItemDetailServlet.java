package going.web.servlet.items;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import going.domain.item.ItemRepository;
import going.domain.item.ItemVO;
import going.domain.view.MyView;

@WebServlet("/item/detail")
public class ItemDetailServlet extends HttpServlet {
	
	ItemRepository itemRepository = ItemRepository.getInstance();

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Long id = Long.parseLong(request.getParameter("itemId"));
		ItemVO item = itemRepository.findById(id);

		request.setAttribute("itemDetail", item);
		
		MyView mv = new MyView(request.getRequestURI());
		mv.render(request, response);
	}
}
