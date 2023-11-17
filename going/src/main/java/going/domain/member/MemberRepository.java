package going.domain.member;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

public class MemberRepository {

	private static Map<Long, MemberVO> store = new HashMap<>();
	private static long sequence = 0L;
	
	private static final MemberRepository instance = new MemberRepository();
	
	public static MemberRepository getInstance() {
		save(new MemberVO("test@test.com", "1234"));
		return instance;
	}
	
	private MemberRepository() {}
	
	public static MemberVO save(MemberVO member) {
		member.setId(++sequence);
		store.put(member.getId(), member);
		return member;
	}
	
	public MemberVO findById(Long id) {
		return store.get(id);
	}
	
	public Optional<MemberVO> findByEmail(String email) {
		return findAll().stream()
				.filter(m -> m.getEmail().equals(email))
				.findFirst();
	 }
	
	public List<MemberVO> findAll() {
		return new ArrayList<>(store.values());
	}
	
	public void clearStore() {
		store.clear();
	}
	
}
