package going.domain.view;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyView {
	
	private String ViewName;

	public MyView(String ViewName) {
		this.ViewName = ViewName;
	}
	
	public void setViewName(String viewName) {
		ViewName = viewName;
	}

	public void render(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ViewPath = viewResolver(ViewName);
		RequestDispatcher dispatcher = request.getRequestDispatcher(ViewPath);
		dispatcher.forward(request, response);
	}
	
	public String viewResolver(String ViewName) {
		return "/WEB-INF/view" + ViewName + ".jsp";
	}
}