package going.domain.item;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class ItemRepository {
	
	private static Map<Long, ItemVO> store = new HashMap<>();
	private static long sequence = 0L;
	
	private static final ItemRepository instance = new ItemRepository();
	public static ItemRepository getInstance() {
		return instance;
	}
	
	private ItemRepository() {
		for(int i=1; i<=11; i++) {
			save(new ItemVO("테스트", i));
			save(new ItemVO("검색용", i*i));
		}
	}

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

	public List<ItemVO> findByTitle(String title) {
		return findAll().stream()
				.filter(i -> i.getItemName().contains(title))
				.collect(Collectors.toList());
	}

	public void clearStore() {
		store.clear();
	}
	
}
