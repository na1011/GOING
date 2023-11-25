package going.domain.item;

import going.domain.member.MemberVO;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Getter @Setter
public class ItemVO {

	private Long id;
	private String itemName;
	private Integer price;
	private int likes;
	private List<MemberVO> likedBy;
	
	public ItemVO(String itemName, Integer price) {
		this.itemName = itemName;
		this.price = price;
		this.likes = 0;
		this.likedBy = new ArrayList<>();
	}
}
