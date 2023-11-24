package going.domain;

public class Paging {

    // 현재 페이지와 컨텐츠 총 갯수
    private int page;

    // 전체 컨텐츠 갯수와 한 페이지에 표시될 컨텐츠 갯수
    private int allSize;
    private int displayCount;

    // 전체 페이징 갯수
    private int pageNum;

    // 한 페이지에 표시될 컨텐츠의 시작과 끝 인덱스
    private int endIndex;
    private int startIndex;

    // 페이징을 n페이지 단위로 처리
    private int displayPaging;
    private int endPage;
    private int startPage;

    // 페이징 이전 / 다음 버튼
    private boolean prev;
    private boolean next;

    public Paging(int page, int allSize, int displayCount, int displayPaging) {
        this.page = page;
        this.allSize = allSize;
        this.displayCount = displayCount;
        this.displayPaging = displayPaging;
        pageCalculate();
    }

    public void pageCalculate() {
        pageNum = (int) Math.ceil( (double)allSize / (double)displayCount );
        endIndex = page * displayCount;
        startIndex = endIndex - (displayCount - 1);

        if (endIndex > allSize) {
            endIndex = allSize;
        }

        endPage = (int) Math.ceil( (double)page / (double)displayPaging ) * displayPaging;
        startPage = endPage - (displayPaging - 1);

        if (endPage > pageNum) {
            endPage = pageNum;
        }

        prev = startPage != 1;
        next = endPage < pageNum;
    }

    public int getPage() {
        return page;
    }

    public int getAllSize() {
        return allSize;
    }

    public int getPageNum() {
        return pageNum;
    }

    public int getEndIndex() {
        return endIndex;
    }

    public int getStartIndex() {
        return startIndex;
    }

    public int getEndPage() {
        return endPage;
    }

    public int getStartPage() {
        return startPage;
    }

    public boolean isPrev() {
        return prev;
    }

    public boolean isNext() {
        return next;
    }
}
