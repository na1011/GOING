package going.domain.item;

public class ItemVO {

	private Long id;
	private String itemName;
	private Integer price;
	
	public ItemVO(String itemName, Integer price) {
		this.itemName = itemName;
		this.price = price;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
}
