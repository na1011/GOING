package going.web.controller.member;

import java.util.Map;

import going.domain.member.MemberRepository;
import going.domain.member.MemberVO;
import going.web.dispatcherservlet.MyController;

public class paramTest implements MyController {
	
	private MemberRepository memberRepository = MemberRepository.getInstance();

	@Override
	public String process(Map<String, String> requestParam, Map<String, Object> myModel) {
		
		String email = requestParam.get("email");
		String password = requestParam.get("password");
		
		MemberVO member = new MemberVO(email, password);
		myModel.put("member", member);
		
		return "test";
	}

}
