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
                    <li><a href="/">Home</a></li>
                    <li>마이페이지</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumbs -->

    <section class="dashboard section" style="padding-top: 25px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-4 col-12">
                
                	<%@ include file="/WEB-INF/common/myPageNav.jsp"%>

                </div>

                <div class="col-lg-9 col-md-8 col-12">
                    <div class="main-content">

                        <div class="shopping-cart section" style="padding: 0px;">
                            <div class="container">
                                <div class="cart-list-head">
                                    <!-- Cart List Title -->
                                    <div class="cart-list-title">
                                        <div class="row">
                                            <div class="col-lg-1 col-md-1 col-12">

                                            </div>
                                            <div class="col-lg-4 col-md-3 col-12">
                                                <p>예약 상품명</p>
                                            </div>
                                            <div class="col-lg-2 col-md-2 col-12">
                                                <p>날짜</p>
                                            </div>
                                            <div class="col-lg-2 col-md-2 col-12">
                                                <p>금액</p>
                                            </div>
                                            <div class="col-lg-2 col-md-2 col-12">
                                                <p>할인</p>
                                            </div>
                                            <div class="col-lg-1 col-md-2 col-12">
                                                <p>취소</p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End Cart List Title -->
                                    
                                    <!-- 목록 시작 -->
                                    <div class="cart-single-list">
                                        <div class="row align-items-center">
                                            <div class="col-lg-1 col-md-1 col-12 cart-imgs">
                                                <a href="product-details.html"><img
                                                        src="${pageContext.request.contextPath}/resources/images/search/bangkok.png" style="width: 100%;"></a>
                                            </div>
                                            <div class="col-lg-4 col-md-3 col-12 cart-product-name">
                                                <h5 class="product-name"><a href="list-details.html">
                                                        태국 방콕/파티야 3박5일</a></h5>
                                                <p class="location"><i class="lni lni-map-marker">
                                                    </i>방콕-파타야</p>
                                            </div>
                                            <div class="col-lg-2 col-md-2 col-12 cart-date">
                                                <div class="count-input">
                                                    <input type="date" class="form-control" value="2023-10-20">
                                                    <input type="date" class="form-control" value="2023-10-30">
                                                </div>
                                            </div>
                                            <div class="col-lg-2 col-md-2 col-12">
                                                <p>$910.00</p>
                                            </div>
                                            <div class="col-lg-2 col-md-2 col-12">
                                                <p>$29.00</p>
                                            </div>
                                            <div class="col-lg-1 col-md-2 col-12 cart-remove">
                                                <a class="remove-item" href="javascript:void(0)"><i
                                                        class="lni lni-close"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 목록 끝 -->
                                    
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <!-- Total Amount -->
                                        <div class="total-amount">
                                            <div class="row">
                                                <div class="col-lg-8 col-md-6 col-12">
                                                    <div class="left">

                                                        <div class="reserve-info">
                                                            <ul>
                                                                <li>예약자<span>김여행</span></li>
                                                                <li>휴대폰<span>010-1234-5678</span></li>
                                                            </ul>
                                                        </div>

                                                        <div class="coupon ">
                                                            <form action="#" target="_blank">

                                                                <div class="form-check">
                                                                    <input type="checkbox" class="form-check-input"
                                                                        value="something" required>
                                                                    <label class="form-check-label" for="check1">결제정보 및
                                                                        취소/환불규정 동의</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input type="checkbox" class="form-check-input"
                                                                        value="something" required>
                                                                    <label class="form-check-label" for="check2">개인정보 수집
                                                                        및 이용 동의</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input type="checkbox" class="form-check-input"
                                                                        value="something" required>
                                                                    <label class="form-check-label" for="check2">개인정보 제
                                                                        3자 제공 동의</label>
                                                                </div>

                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4 col-md-6 col-12">
                                                    <div class="right">
                                                        <ul>
                                                            <li>총 금액<span>$2560.00</span></li>
                                                            <li>할인액<span>$29.00</span></li>
                                                            <br>
                                                            <li class="last">결제금액<span>$2531.00</span></li>
                                                        </ul>
                                                        <div class="button">
                                                            <a href="product-grids.html" class="btn btn-alt">결제하기</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!--/ End Total Amount -->
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </section>
                
                <%@ include file="/WEB-INF/common/footer.jsp"%>