package going.web.controller.mypage;

import java.util.Map;

import going.web.dispatcherservlet.MyController;

public class MyPaymentHistoryController implements MyController {

	@Override
	public String process(Map<String, String> requestParam, Map<String, Object> myModel) {
		return "myPaymentHistory";
	}

}
