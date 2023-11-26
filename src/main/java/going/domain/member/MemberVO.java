package going.domain.member;

import going.domain.item.ItemVO;
import lombok.Getter;
import lombok.Setter;

import java.util.*;

@Getter @Setter
public class MemberVO {
	
	private Long id;
	private String email;
	private String password;
	private Role role;
	private List<ItemVO> cartList;
	
	public MemberVO(String email, String password, Role role) {
		this.email = email;
		this.password = password;
		this.role = role;
		this.cartList = new ArrayList<>();
	}
}
