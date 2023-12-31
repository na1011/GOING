package going.domain.member;

import going.domain.item.ItemVO;

import java.util.*;

public class MemberRepository {

	private static Map<Long, MemberVO> store = new HashMap<>();
	private static long sequence = 0L;
	
	private static final MemberRepository instance = new MemberRepository();
	public static MemberRepository getInstance() {
		return instance;
	}
	
	private MemberRepository() {
		save(new MemberVO("test@test.com", "1234", Role.CUSTOMER));
		save(new MemberVO("busi@test.com", "1234", Role.BUSINESS));
		save(new MemberVO("admin@test.com", "1234", Role.ADMIN));
	}
	
	public MemberVO save(MemberVO member) {
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
