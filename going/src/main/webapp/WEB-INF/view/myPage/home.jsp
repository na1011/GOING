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
    <!-- Start Dashboard Section -->
    <section class="dashboard section" style="padding-top: 25px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-4 col-12">
                    
                    <%@ include file="/WEB-INF/common/myPageNav.jsp"%>
                    
                </div>
                
                <div class="col-lg-9 col-md-8 col-12">
                    <div class="main-content">
                        <!-- Start Details Lists -->
                        <div class="details-lists">
                            <div class="row">
                                <div class="col-lg-4 col-md-12 col-12">
                                    <!-- Start Single List -->
                                    <div class="single-list">
                                        <div class="list-icon">
                                            <i class="lni lni-checkmark-circle"></i>
                                        </div>
                                        <h3>
                                            찜한 상품
                                            <span></span>
                                        </h3>
                                    </div>
                                    <!-- End Single List -->
                                </div>
                                <div class="col-lg-4 col-md-12 col-12">
                                    <!-- Start Single List -->
                                    <div class="single-list two">
                                        <div class="list-icon">
                                            <i class="lni lni-bolt"></i>
                                        </div>
                                        <h3>
                                            오늘 본 상품
                                            <span></span>
                                        </h3>
                                    </div>
                                    <!-- End Single List -->
                                </div>
                                <div class="col-lg-4 col-md-12 col-12">
                                    <!-- Start Single List -->
                                    <div class="single-list three">
                                        <div class="list-icon">
                                            <i class="lni lni-emoji-happy"></i>
                                        </div>
                                        <h3>
                                            내가 쓴 리뷰
                                            <span></span>
                                        </h3>
                                    </div>
                                    <!-- End Single List -->
                                </div>
                            </div>
                        </div>
                        <!-- End Details Lists -->
                        <div class="row">
                            <div class="col-lg-4 col-md-12 col-12">
                                <!-- Start Activity Log -->
                                <div class="recent-items dashboard-block">
                                    <ul>
                                        <li>
                                            <div class="image">
                                                <a href="javascript:void(0)"><img src="${pageContext.request.contextPath}/resources/images/MyPage/trip1.jpg"
                                                        alt="#"></a>
                                            </div>
                                            <a href="javascript:void(0)" class="title">
                                                <h6>나트랑/달랏 5~6일</h6>
                                            </a>
                                            <span class="time">349,900원~</span>
                                            <span class="remove"><a href="javascript:void(0)"><i
                                                        class="lni lni-close"></i></a></span>
                                        </li>
                                        <li>
                                            <div class="image">
                                                <a href="javascript:void(0)"><img src="${pageContext.request.contextPath}/resources/images/MyPage/trip2.jpg"
                                                        alt="#"></a>
                                            </div>
                                            <a href="javascript:void(0)" class="title">
                                                <h6>오키나와 3~4일</h6>
                                            </a>
                                            <span class="time">759,000원~</span>
                                            <span class="remove"><a href="javascript:void(0)"><i
                                                        class="lni lni-close"></i></a></span>
                                        </li>
                                        <li>
                                            <div class="log-icon">
                                                <i class="lni lni-alarm"></i>
                                            </div>
                                            <a href="javascript:void(0)" class="title">Your ads approved!</a>
                                            <span class="time">5 Hours Ago</span>
                                            <span class="remove"><a href="javascript:void(0)"><i
                                                        class="lni lni-close"></i></a></span>
                                        </li>
                                        <li style="padding: 40px 0 0 0;">
                                            <span class="time"
                                                style="position: absolute; left: 30px; bottom: 5px;">더보기</span>
                                        </li>
                                    </ul>
                                </div>
                                <!-- End Activity Log -->
                            </div>
                            <div class="col-lg-4 col-md-12 col-12">
                                <!-- Start Recent Items -->
                                <div class="recent-items dashboard-block">
                                    <ul>
                                        <li>
                                            <div class="image">
                                                <a href="javascript:void(0)"><img src="${pageContext.request.contextPath}/resources/images/MyPage/jjim1.jpg"
                                                        alt="#"></a>
                                            </div>
                                            <a href="javascript:void(0)" class="title">
                                                <h6>괌 4~5일</h6>
                                            </a>
                                            <span class="time">779,000원~</span>
                                            <span class="remove"><a href="javascript:void(0)"><i
                                                        class="lni lni-close"></i></a></span>
                                        </li>
                                        <li>
                                            <div class="image">
                                                <a href="javascript:void(0)"><img src="${pageContext.request.contextPath}/resources/images/MyPage/jjim2.jpg"
                                                        alt="#"></a>
                                            </div>
                                            <a href="javascript:void(0)" class="title">
                                                <h6>시드니일주 5~7일</h6>
                                            </a>
                                            <span class="time">009,000원~</span>
                                            <span class="remove"><a href="javascript:void(0)"><i
                                                        class="lni lni-close"></i></a></span>
                                        </li>
                                        <li>
                                            <div class="image">
                                                <a href="javascript:void(0)"><img src="${pageContext.request.contextPath}/resources/images/MyPage/trip1.jpg"
                                                        alt="#"></a>
                                            </div>
                                            <a href="javascript:void(0)" class="title">
                                                <h6>나트랑/달랏 5~6일</h6>
                                            </a>
                                            <span class="time">349,900원~</span>
                                            <span class="remove"><a href="javascript:void(0)"><i
                                                        class="lni lni-close"></i></a></span>
                                        </li>
                                        <li>
                                            <div class="image">
                                                <a href="javascript:void(0)"><img src="${pageContext.request.contextPath}/resources/images/MyPage/trip2.jpg"
                                                        alt="#"></a>
                                            </div>
                                            <a href="javascript:void(0)" class="title">
                                                <h6>오키나와 3~4일</h6>
                                            </a>
                                            <span class="time">759,000원~</span>
                                            <span class="remove"><a href="javascript:void(0)"><i
                                                        class="lni lni-close"></i></a></span>
                                        </li>
                                        <li style="padding: 40px 0 0 0;">
                                            <span class="time"
                                                style="position: absolute; left: 30px; bottom: 5px;">더보기</span>
                                        </li>
                                    </ul>
                                </div>
                                <!-- End Recent Items -->
                            </div>
                            <div class="col-lg-4 col-md-12 col-12">
                                <!-- Start Recent Items -->
                                <div class="dashboard-block">
                                    <div class="reviews">

                                        <!-- Start Single Review -->
                                        <div class="single-review">
                                            <img src="${pageContext.request.contextPath}/resources/images/MyPage/jjim1.jpg" alt="#">
                                            <div class="review-info">
                                                <h4>괌 4~5일
                                                    <span>최고의 여행
                                                    </span>
                                                </h4>
                                                <ul class="stars">
                                                    <li><i class="lni lni-star-filled"></i></li>
                                                    <li><i class="lni lni-star-filled"></i></li>
                                                    <li><i class="lni lni-star-filled"></i></li>
                                                    <li><i class="lni lni-star-filled"></i></li>
                                                    <li><i class="lni lni-star-filled"></i></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <!-- End Single Review -->

                                        <!-- Start Single Review -->
                                        <div class="single-review">
                                            <img src="${pageContext.request.contextPath}/resources/images/MyPage/trip1.jpg" alt="#">
                                            <div class="review-info">
                                                <h4>태국 2~3일
                                                    <span>장사 접으세요
                                                    </span>
                                                </h4>
                                                <ul class="stars">
                                                    <li><i class="lni lni-star"></i></li>
                                                    <li><i class="lni lni-star"></i></li>
                                                    <li><i class="lni lni-star"></i></li>
                                                    <li><i class="lni lni-star"></i></li>
                                                    <li><i class="lni lni-star"></i></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <!-- End Single Review -->

                                        <!-- Start Single Review -->
                                        <div class="single-review">
                                            <img src="${pageContext.request.contextPath}/resources/images/MyPage/jjim2.jpg" alt="#">
                                            <div class="review-info">
                                                <h4>시드니 4~5일
                                                    <span>그럭저럭
                                                    </span>
                                                </h4>
                                                <ul class="stars">
                                                    <li><i class="lni lni-star-filled"></i></li>
                                                    <li><i class="lni lni-star-filled"></i></li>
                                                    <li><i class="lni lni-star-filled"></i></li>
                                                    <li><i class="lni lni-star"></i></li>
                                                    <li><i class="lni lni-star"></i></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <!-- End Single Review -->
                                    </div>
                                </div>
                                <!-- End Recent Items -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Dashboard Section -->
    
     <%@ include file="/WEB-INF/common/footer.jsp"%>