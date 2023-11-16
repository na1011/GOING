package going.web.controller.items;

import java.util.Map;

import going.web.dispatcherservlet.MyController;

public class ItemDetailController implements MyController {

	@Override
	public String process(Map<String, String> requestParam, Map<String, Object> myModel) {
		
		System.out.println(requestParam.get("num"));
		
		return "item/detail";
	}

}
