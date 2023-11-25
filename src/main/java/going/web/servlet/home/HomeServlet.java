package going.web.servlet.home;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import going.domain.item.ItemRepository;
import going.domain.item.ItemVO;
import going.domain.view.MyView;

@WebServlet("/")
public class HomeServlet extends HttpServlet {

	ItemRepository itemRepository = ItemRepository.getInstance();

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<ItemVO> cheapList = itemRepository.findAll().stream()
				.sorted((a, b) -> a.getPrice().compareTo(b.getPrice())).limit(5)
				.collect(Collectors.toList());

		request.setAttribute("cheapList", cheapList);

        MyView mv = new MyView("/index");
		mv.render(request, response);
	}
}
