package going.domain.item;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ItemRepository {
	
	private static Map<Long, ItemVO> store = new HashMap<>();
	private static long sequence = 0L;
	
	private static final ItemRepository instance = new ItemRepository();
	
	public static ItemRepository getInstance() {
		save(new ItemVO("일본 홋카이도 3박4일", 1549900));
		save(new ItemVO("호주 시드니 4박 5일", 1750000));
		save(new ItemVO("미국 뉴욕 4박 5일", 2100000));
		return instance;
	}
	
	private ItemRepository() {}

	public static ItemVO save(ItemVO item) {
		item.setId(++sequence);
		store.put(item.getId(), item);
		return item;
	}
	
	public ItemVO findById(Long id) {
		return store.get(id);
	}
	
	public List<ItemVO> findAll() {
		return new ArrayList<>(store.values());
	}
	
	public void clearStore() {
		store.clear();
	}
}
