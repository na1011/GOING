package going.domain.member;

import lombok.Getter;
import lombok.Setter;

import java.util.Set;

@Getter @Setter
public class MemberVO {
	
	private Long id;
	private String email;
	private String password;
	private Role role;
	private Set<Long> cart;
	
	public MemberVO() {}

	public MemberVO(String email, String password, Role role) {
		this.email = email;
		this.password = password;
		this.role = role;
	}
}
