<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/common/header.jsp"%>

<!-- Start Breadcrumbs -->
<div class="breadcrumbs overlay">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6 col-md-6 col-12">
                <div class="breadcrumbs-content">
                    <h1 class="page-title">여행검색</h1>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-12">
                <ul class="breadcrumb-nav">
                    <li><a href="/">Home</a></li>
                    <li>상세검색</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumbs -->

<!-- 검색 메뉴 시작 -->
<section class="category-page section">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-4 col-12">
                <div class="category-sidebar">
                    <!-- Start Single Widget -->
                    <div class="single-widget search">
                        <h3>상세조건</h3>
                        <form action="/search/result" method="get">
                            <input type="text" name="searchTitle" placeholder="지역, 패키지명...">
                            <button type="submit"><i class="lni lni-search-alt"></i></button>
                        </form>
                    </div>
                    <!-- End Single Widget -->

                    <!-- Start Single Widget 왼쪽 리스트창들 -->
                    <div class="single-widget">
                        <h3>인원 수</h3>
                        <ul class="list">
                            <li>
                                <div class="select">
                                    <span>성인</span>
                                    <select id="jq_id_adultCnt" class="jq_cl_personCnt">
                                        <option value="1" selected="selected">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                        <option value="13">13</option>
                                        <option value="14">14</option>
                                        <option value="15">15</option>
                                        <option value="16">16</option>
                                        <option value="17">17</option>
                                        <option value="18">18</option>
                                        <option value="19">19</option>
                                        <option value="20">20</option>
                                    </select>
                                </div>
                            </li>

                            <li>
                                <div class="select">
                                    <span>아동</span>
                                    <select id="jq_id_childCnt" class="jq_cl_personCnt">
                                        <option value="0">0</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                    </select>
                                </div>
                            </li>

                            <li>
                                <div class="select">
                                    <span>유아</span>
                                    <select id="jq_id_infantCnt" class="jq_cl_personCnt">
                                        <option value="0">0</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                    </select>
                                </div>
                            </li>
                            <h5>000,000원</h5>
                        </ul>
                    </div>
                    <!-- End Single Widget -->


                    <!-- Start Single Widget -->
                    <div class="single-widget range">
                        <h3>가격대</h3>
                        <input type="range" class="form-range" name="range" step="1" min="100" max="10000"
                               value="10" onchange="rangePrimary.value=value">
                        <div class="range-inner">
                            <label>$</label>
                            <input type="text" id="rangePrimary" placeholder="100" />
                        </div>
                    </div>
                    <!-- End Single Widget -->
                    <!-- Start Single Widget -->
                    <div class="single-widget condition">
                        <h3>이동수단</h3>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault1">
                            <label class="form-check-label" for="flexCheckDefault1">
                                비행기
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault2">
                            <label class="form-check-label" for="flexCheckDefault2">
                                기차
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault3">
                            <label class="form-check-label" for="flexCheckDefault3">
                                크루즈
                            </label>
                        </div>
                    </div>
                    <!-- End Single Widget -->
                    <!-- Start Single Widget -->
                    <div class="single-widget banner">
                        <h3>할인내역</h3>
                        <a href="javascript:void(0)">
                            <img src="${pageContext.request.contextPath}/resources/images/search/sale.png" alt="#">
                        </a>
                    </div>
                    <!-- End Single Widget -->
                </div>
            </div>
            <!-- 검색 메뉴 끝 -->

            <div class="col-lg-9 col-md-8 col-12">
                <div class="category-grid-list">
                    <div class="row">
                        <div class="col-12">
                            <div class="category-grid-topbar">
                                <div class="row align-items-center">
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <h3 class="title">발견된 ${paging.allSize}개의 항목 중 ${paging.startIndex }-${paging.endIndex }개를 보여줍니다</h3>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <nav>
                                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                                <button class="nav-link active" id="nav-grid-tab"
                                                        data-bs-toggle="tab" data-bs-target="#nav-grid" type="button"
                                                        role="tab" aria-controls="nav-grid" aria-selected="true"><i
                                                        class="lni lni-grid-alt"></i></button>
                                            </div>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-grid" role="tabpanel"
                                     aria-labelledby="nav-list-tab">
                                    <div class="row">

                                        <!-- 검색 결과 시작 -->

                                        <c:forEach var="trv" items="${itemList}">
                                            <div class="col-lg-12 col-md-12 col-12">
                                                <div class="single-item-grid">
                                                    <div class="row align-items-center">
                                                        <div class="col-lg-5 col-md-7 col-12">
                                                            <div class="image">
                                                                <a href="/item/detail?itemId=${trv.id}"><img src="${pageContext.request.contextPath}/resources/images/search/japan.png" alt="#"></a>
                                                                <i class=" cross-badge lni lni-bolt"></i>
                                                                <span class="flat-badge sale">할인</span>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-7 col-md-5 col-12">
                                                            <div class="content">
                                                                <a href="javascript:void(0)" class="tag">해외여행</a>
                                                                <h3 class="title">
                                                                    <a href="/item/detail?itemId=${trv.id}">${trv.itemName}</a>
                                                                </h3>
                                                                <p class="location"><a href="/item/detail?itemId=${trv.id}">
                                                                    <i class="lni lni-map-marker">
                                                                    </i>삿포로,오타루,후라노,비에이</a></p>
                                                                <ul class="info">
                                                                    <li class="price"><fmt:formatNumber value="${trv.price}" pattern="#,###" />원</li>
                                                                    <li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>

                                        <!-- 검색 결과 끝 -->

                                    </div>
                                    <div class="row">
                                        <div class="col-12">

                                            <!-- 페이징 시작 -->
                                            <div class="pagination center">
                                                <ul class="pagination-list">
                                                    <c:if test="${paging.prev}">
                                                        <li><a href="/search/result?searchTitle=${title}&page=${paging.startPage - 1}"><i class="lni lni-chevron-left"></i></a></li>
                                                    </c:if>

                                                    <c:forEach var="num" begin="${paging.startPage }" end="${paging.endPage}">
                                                        <c:if test="${paging.page != num}">
                                                            <li><a href="/search/result?searchTitle=${title}&page=${num}">${num}</a></li>
                                                        </c:if>
                                                        <c:if test="${paging.page == num}">
                                                            <li class="active"><a href="/search/result?searchTitle=${title}&page=${num}">${num}</a></li>
                                                        </c:if>
                                                    </c:forEach>

                                                    <c:if test="${paging.next}">
                                                        <li><a href="/search/result?searchTitle=${title}&page=${paging.endPage + 1}"><i class="lni lni-chevron-right"></i></a></li>
                                                    </c:if>
                                                </ul>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Category 마지막 라인-->

<%@ include file="/WEB-INF/common/footer.jsp"%>
