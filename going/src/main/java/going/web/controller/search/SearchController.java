package going.web.controller.search;

import java.util.Map;

import going.web.dispatcherservlet.MyController;

public class SearchController implements MyController {

	@Override
	public String process(Map<String, String> requestParam, Map<String, Object> myModel) {
		return "search/search";
	}

}
