package going.web.servlet.items;

import going.domain.item.ItemRepository;
import going.domain.item.ItemVO;
import going.domain.view.MyView;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/myPage/register")
public class ItemRegisterServlet extends HttpServlet {
	
	ItemRepository itemRepository = ItemRepository.getInstance();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MyView mv = new MyView(request.getRequestURI());
		mv.render(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String itemName = request.getParameter("itemName");
		int price = Integer.parseInt(request.getParameter("price"));
		
		ItemVO item = new ItemVO(itemName, price);
		itemRepository.save(item);
		
		response.sendRedirect("/search/main");
	}
}
