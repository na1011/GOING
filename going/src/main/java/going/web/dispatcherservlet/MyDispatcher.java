package going.web.dispatcherservlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import going.web.controller.home.HomeController;
import going.web.controller.mypage.MyPageController;
import going.web.controller.mypage.MyPaymentHistoryController;
import going.web.controller.mypage.MyReserveController;
import going.web.controller.mypage.MyTravelRegisterController;
import going.web.view.MyView;

@WebServlet("/")
public class MyDispatcher extends HttpServlet {
	
	private Map<String, MyController> controllerMap = new HashMap<>();

	public MyDispatcher() {
		initHandlerMappingMap();
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String requestURI = request.getRequestURI();
		
		MyController controller = controllerMap.get(requestURI);
		System.out.println("controller == " + controller);
		if (controller == null) {
			response.setStatus(HttpServletResponse.SC_NOT_FOUND);
			return;
		}
		
		Map<String, String> paramMap = createParamMap(request);
		Map<String, Object> model = new HashMap<>();
		
		String viewName = controller.process(paramMap, model);
		System.out.println(requestURI + " , " + viewName);
		
		MyView view = viewResolver(viewName);
		view.render(model, request, response);
	}
	
	
	private Map<String, String> createParamMap(HttpServletRequest request) {
		Map<String, String> paramMap = new HashMap<>();
		
		request.getParameterNames().asIterator()
				.forEachRemaining(paramName -> paramMap.put(paramName, request.getParameter(paramName)));
		
		return paramMap;
	}
	
	private MyView viewResolver(String viewName) {
		return new MyView("/WEB-INF/view/" + viewName + ".jsp");
	}
	
	private void initHandlerMappingMap() {
		controllerMap.put("/", new HomeController());
		controllerMap.put("/myPage/home", new MyPageController());
		controllerMap.put("/myPage/history", new MyPaymentHistoryController());
		controllerMap.put("/myPage/reserve", new MyReserveController());
		controllerMap.put("/myPage/travelRegister", new MyTravelRegisterController());
	}

}
