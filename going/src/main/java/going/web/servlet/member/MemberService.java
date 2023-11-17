package going.web.servlet.member;

import going.domain.member.MemberRepository;
import going.domain.member.MemberVO;

public class MemberService {
	
	MemberRepository memberRepository = MemberRepository.getInstance();
	
	public static final MemberService instance = new MemberService();
	public static MemberService getInstance() {
		return instance;
	}
	private MemberService() {}

	
	public MemberVO login(String email, String password) {
		return memberRepository.findByEmail(email)
				.filter(m -> m.getPassword().equals(password))
				.orElse(null);
	}
	
}
