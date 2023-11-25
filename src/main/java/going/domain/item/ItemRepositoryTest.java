package going.domain.item;

import java.util.List;

class ItemRepositoryTest {

    public static void main(String[] args) {
        ItemRepository itemRepository = ItemRepository.getInstance();

        List<ItemVO> result = itemRepository.searchByTitle("테");
        System.out.println("result.size() = " + result.size());

        List<ItemVO> findAll = itemRepository.findAll();
        System.out.println("findAll.size() = " + findAll.size());
    }

}