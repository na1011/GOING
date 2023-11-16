package going.web.controller.home;

import java.util.Map;

import going.web.dispatcherservlet.MyController;

public class HomeController implements MyController {

	@Override
	public String process(Map<String, String> paramMap, Map<String, Object> model) {
		return "index";
	}


}
