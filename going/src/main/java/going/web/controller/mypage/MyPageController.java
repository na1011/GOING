package going.web.controller.mypage;

import java.util.Map;

import going.web.dispatcherservlet.MyController;

public class MyPageController implements MyController {

	@Override
	public String process(Map<String, String> requestParam, Map<String, Object> myModel) {
		
		myModel.put("test", "안녕하세요.");
		
		return "home";
	}

}
