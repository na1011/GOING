package going.web.controller.member;

import java.util.Map;

import going.web.dispatcherservlet.MyController;

public class SignInController implements MyController {

	@Override
	public String process(Map<String, String> requestParam, Map<String, Object> myModel) {
		return "member/Sign-in";
	}
}
