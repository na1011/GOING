package going.web.dispatcherservlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import going.web.controller.member.SignUp;
import going.web.controller.member.paramTest;
import going.web.view.MyView;

@WebServlet("/member/*")
public class MemberDispatcher extends HttpServlet {
	
	private Map<String, MyController> controllerMap = new HashMap<>();

	public MemberDispatcher() {
		initHandlerMappingMap();
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String requestURI = request.getRequestURI();
		
		MyController controller = controllerMap.get(requestURI);
		if (controller == null) {
			response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
			return;
		}
		
		Map<String, String> requestParam = createParamMap(request);
		Map<String, Object> myModel = new HashMap<>();
		
		String viewName = controller.process(requestParam, myModel);
		System.out.println(requestURI + " , " + viewName + " , " + myModel.values());
		
		MyView view = viewResolver(viewName);
		view.render(myModel, request, response);
	}
	
	
	private Map<String, String> createParamMap(HttpServletRequest request) {
		Map<String, String> paramMap = new HashMap<>();
		
		request.getParameterNames().asIterator()
				.forEachRemaining(paramName -> paramMap.put(paramName, request.getParameter(paramName)));
		
		return paramMap;
	}
	
	private MyView viewResolver(String viewName) {
		return new MyView("/WEB-INF/view/member/" + viewName + ".jsp");
	}
	
	private void initHandlerMappingMap() {
		controllerMap.put("/member/register", new SignUp());
		controllerMap.put("/member/test", new paramTest());
	}

}
