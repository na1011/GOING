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
		return instance;
	}
	
	private ItemRepository() {}

	public ItemVO save(ItemVO item) {
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
	
//	public static void initItem() {
//		for(int i=1; i<=2; i++) {
//			save(new ItemVO("테스트", i));
//		}
//	}
}
