<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/common/header.jsp"%>

    <!-- Start Breadcrumbs -->
    <div class="breadcrumbs overlay">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">마이페이지</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="index.html">Home</a></li>
                        <li>결제 내역</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End Breadcrumbs -->
    <!-- Start Dashboard Section -->
    <section class="dashboard section" style="padding-top: 25px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-4 col-12">
                    
                    <%@ include file="/WEB-INF/common/myPageNav.jsp"%>
                    
                </div>
                
                <div class="col-lg-9 col-md-8 col-12">
                    <div class="main-content">

                        <div class="dashboard-block mt-0">
                            <h3 class="block-title">결제 내역</h3>
                            <!-- Start Items Area -->
                            <div class="my-items">
                                <!-- Start List Title -->
                                <div class="item-list-title">
                                    <div class="row align-items-center">
                                        <div class="col-lg-5 col-md-5 col-12">
                                            <p>여행상품</p>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-12">
                                            <p>날짜</p>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>여행사</p>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>리뷰</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- End List Title -->
                                
                                <!-- 목록 시작 -->
                                <div class="single-item-list">
                                    <div class="row align-items-center">
                                        <div class="col-lg-5 col-md-5 col-12">
                                            <div class="item-image">
                                                <img src="${pageContext.request.contextPath}/resources/images/search/bangkok.png">
                                                <div class="content">
                                                    <h3 class="title"><a href="javascript:void(0)">태국 방콕/파티야 3박5일</a>
                                                    </h3>
                                                    <p class="location"><i class="lni lni-map-marker">
                                                        </i>방콕-파타야</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-12">
                                            <div class="count-input">
                                                <input type="date" class="form-control" value="2023-10-20">
                                                <input type="date" class="form-control" value="2023-10-30">
                                            </div>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>OO투어</p>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <button type="button" class="btn btn-warning" data-bs-toggle="modal"
                                                data-bs-target="#staticBackdrop">
                                                리뷰 작성
                                            </button>

                                            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
                                                data-bs-keyboard="false" tabindex="-1"
                                                aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <h5 class="modal-qna-title" id="exampleModalLabel">리뷰 작성</h5>

                                                        <div class="modal-body review-modal-body">
                                                            <form class="mb-3" name="reviewForm" id="reviewForm"
                                                                method="post">
                                                                <fieldset class="review-filedset">
                                                                    <strong class="review_modal_middle">여행은
                                                                        만족하셨나요?</strong>
                                                                    <p class="star-ratings">
                                                                        <input type="radio" name="reviewStar" value="5"
                                                                            id="rate1"><label for="rate1">★</label>
                                                                        <input type="radio" name="reviewStar" value="4"
                                                                            id="rate2"><label for="rate2">★</label>
                                                                        <input type="radio" name="reviewStar" value="3"
                                                                            id="rate3"><label for="rate3">★</label>
                                                                        <input type="radio" name="reviewStar" value="2"
                                                                            id="rate4"><label for="rate4">★</label>
                                                                        <input type="radio" name="reviewStar" value="1"
                                                                            id="rate5"><label for="rate5">★</label>
                                                                    </p>
                                                                </fieldset>
                                                                <strong class="review_modal_middle mt-4">어떤 점이
                                                                    좋았나요?</strong>
                                                                <textarea class="col-auto form-control review-area mt-3"
                                                                    id="reviewContents"
                                                                    placeholder="최소 10자 이상 입력해주세요"></textarea>
                                                            </form>
                                                        </div>

                                                        <div class="modal-footer" style="justify-content: center;">
                                                            <button type="button" class="btn btn-primary">등록</button>
                                                            <button type="button" class="btn btn-danger"
                                                                data-bs-dismiss="modal">취소</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <!-- 목록 끝 -->
 
 
                                <!-- Pagination -->
                                <div class="pagination left">
                                    <ul class="pagination-list">
                                        <li><a href="javascript:void(0)">1</a></li>
                                        <li class="active"><a href="javascript:void(0)">2</a></li>
                                        <li><a href="javascript:void(0)">3</a></li>
                                        <li><a href="javascript:void(0)">4</a></li>
                                        <li><a href="javascript:void(0)"><i class="lni lni-chevron-right"></i></a></li>
                                    </ul>
                                </div>
                                <!--/ End Pagination -->
                            </div>
                            <!-- End Items Area -->
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Dashboard Section -->
    
    <%@ include file="/WEB-INF/common/footer.jsp"%>