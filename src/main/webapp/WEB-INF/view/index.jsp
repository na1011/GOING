<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@ include file="/WEB-INF/common/header.jsp" %>

<style>
    .single-grid .img {
        position: absolute;
        width: 300px;
        height: 250px;
        -webkit-transition: opacity 1s ease-in-out;
        -moz-transition: opacity 1s ease-in-out;
        -o-transition: opacity 1s ease-in-out;
        transition: opacity 1s ease-in-out;
        opacity: 0;
        -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
        filter: alpha(opacity=0);
    }

    .single-grid .img:first-child {
        /* display: block; */
        opacity: 1;
    }

    .items-grid .single-grid .image .author::before {
        height: 0;
    }
</style>

<!-- Start Hero Area -->
<section class="hero-area overlay">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 offset-lg-1 col-md-12 col-12">
                <div class="hero-text text-center">
                    <!-- Start Hero Text -->
                    <div class="section-heading">
                        <h2 class="wow fadeInUp" data-wow-delay=".3s">Welcome to GOING</h2>
                        <p class="wow fadeInUp" data-wow-delay=".5s">세계의 여행지릃 한 곳에!</p>
                    </div>
                    <!-- End Search Form -->
                    <!-- Start Search Form -->
                    <div class="search-form wow fadeInUp" data-wow-delay=".7s">
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-12 p-0">
                                <div class="search-input">
                                    <input type="date" name="keyword" id="keyword" style="padding: 0 25px;">
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-12 p-0">
                                <div class="search-input">
                                    <input type="date" name="keyword" id="keyword" style="padding: 0 25px;">
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-2 col-12 p-0">
                                <div class="search-input">
                                    <label for="category"><i class="lni lni-grid-alt theme-color"></i></label>
                                    <select name="category" id="category">
                                        <option value="none" selected disabled>인원</option>
                                        <option value="none">1</option>
                                        <option value="none">2</option>
                                        <option value="none">3</option>
                                        <option value="none">4</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-2 col-12 p-0">
                                <div class="search-input">
                                    <label for="location"><i class="lni lni-map-marker theme-color"></i></label>
                                    <input type="text" id="location" placeholder="지역명">
                                    <!-- <select name="location" id="location">
                                        <option value="none" selected disabled>지역</option>
                                        <option value="none">가</option>
                                        <option value="none">나</option>
                                        <option value="none">다</option>
                                        <option value="none">라</option>
                                        <option value="none">마</option>
                                        <option value="none">바</option>
                                    </select> -->
                                </div>
                            </div>

                            <div class="col-lg-2 col-md-2 col-12 p-0">
                                <div class="search-btn button">
                                    <a href="/search/main" style="width: 100%;">
                                        <button class="btn"><i class="lni lni-search-alt"></i> Going</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Search Form -->
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Hero Area -->

<!-- Start Categories Area -->
<section class="categories">
    <div class="container">
        <div class="cat-inner">
            <div class="row">
                <div class="section-title">
                    <h2 class="wow fadeInUp" data-wow-delay=".4s">주목할 여행지</h2>
                    <p class="wow fadeInUp" data-wow-delay=".6s">There are many variations of passages of Lorem
                        Ipsum available, but the majority have suffered alteration in some form.</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /End Categories Area -->

<!-- Start Items Grid Area -->
<section class="items-grid section custom-padding">
    <div class="container">
        <div class="single-head">
            <div class="row" style="margin-top: 50px;">
                <div class="col-lg-4 col-md-4 col-12">
                    <!-- Start Single Grid -->
                    <h3>주목할 상품</h3>
                    <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                        <div id=wrap class="image">
                            <div class=imgBox1 style="width:300px;height:300px;">
                                <img class="img on"
                                     src="https://images.unsplash.com/photo-1556034910-07855ebf6606?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
                                     alt="">
                                <img class="img"
                                     src="https://images.unsplash.com/photo-1556241298-fce5ee86ea48?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
                                     alt="">
                                <img class="img"
                                     src="https://images.unsplash.com/photo-1556032743-3a694170ef94?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
                                     alt="">
                            </div>
                            <div class="author">
                                <a href="#">
                                    <button class="sale prev1" style="font-size: 1.2em;">&lt;</button>
                                </a>
                                <a href="#" style="float: right;">
                                    <button class="sale next1" style="font-size: 1.2em;">&gt;</button>
                                </a>
                            </div>
                        </div>
                        <div class="content">
                            <div class="top-content">
                                <a href="javascript:void(0)" class="tag">정보</a>
                                <h3 class="title">
                                    <a href="item-details.html">정보</a>
                                </h3>
                                <p class="update-time">정보</p>
                                <ul class="rating">
                                    <li><i class="lni lni-star-filled"></i></li>
                                    <li><i class="lni lni-star-filled"></i></li>
                                    <li><i class="lni lni-star-filled"></i></li>
                                    <li><i class="lni lni-star-filled"></i></li>
                                    <li><i class="lni lni-star-filled"></i></li>
                                    <li><a href="javascript:void(0)">별점</a></li>
                                </ul>
                                <ul class="info-list">
                                    <li><a href="javascript:void(0)"><i class="lni lni-map-marker"></i> 지역</a></li>
                                    <li><a href="javascript:void(0)"><i class="lni lni-timer"></i> 시간</a></li>
                                </ul>
                            </div>
                            <div class="bottom-content">
                                <p class="price">Start From: <span>가격</span></p>
                                <a href="javascript:void(0)" class="like"><i class="lni lni-heart"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Grid -->
                </div>
                <div class="col-lg-4 col-md-4 col-12">
                    <!-- Start Single Grid -->
                    <h3>특가 상품</h3>
                    <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                        <div id=wrap class="image">
                            <div class=imgBox2 style="width:300px;height:300px;">
                                <img class="img on"
                                     src="https://images.unsplash.com/photo-1556034910-07855ebf6606?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
                                     alt="">
                                <img class="img"
                                     src="https://images.unsplash.com/photo-1556241298-fce5ee86ea48?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
                                     alt="">
                                <img class="img"
                                     src="https://images.unsplash.com/photo-1556032743-3a694170ef94?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
                                     alt="">
                            </div>
                            <div class="author">
                                <a href="#">
                                    <button class="sale prev2" style="font-size: 1.2em;">&lt;</button>
                                </a>
                                <a href="#" style="float: right;">
                                    <button class="sale next2" style="font-size: 1.2em;">&gt;</button>
                                </a>
                            </div>
                        </div>
                        <div class="content">
                            <div class="top-content">
                                <a href="javascript:void(0)" class="tag">정보</a>
                                <h3 class="title">
                                    <a href="item-details.html">정보</a>
                                </h3>
                                <p class="update-time">정보</p>
                                <ul class="rating">
                                    <li><i class="lni lni-star-filled"></i></li>
                                    <li><i class="lni lni-star-filled"></i></li>
                                    <li><i class="lni lni-star-filled"></i></li>
                                    <li><i class="lni lni-star-filled"></i></li>
                                    <li><i class="lni lni-star-filled"></i></li>
                                    <li><a href="javascript:void(0)">별점</a></li>
                                </ul>
                                <ul class="info-list">
                                    <li><a href="javascript:void(0)"><i class="lni lni-map-marker"></i> 지역</a></li>
                                    <li><a href="javascript:void(0)"><i class="lni lni-timer"></i> 시간</a></li>
                                </ul>
                            </div>
                            <div class="bottom-content">
                                <p class="price">Start From: <span>가격</span></p>
                                <a href="javascript:void(0)" class="like"><i class="lni lni-heart"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Grid -->
                </div>
                <div class="col-lg-4 col-md-4 col-12">
                    <!-- Start Single Grid -->
                    <h3>테마 여행</h3>
                    <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                        <div id=wrap class="image">
                            <div class=imgBox3 style="width:300px;height:300px;">
                                <img class="img on"
                                     src="https://images.unsplash.com/photo-1556034910-07855ebf6606?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
                                     alt="">
                                <img class="img"
                                     src="https://images.unsplash.com/photo-1556241298-fce5ee86ea48?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
                                     alt="">
                                <img class="img"
                                     src="https://images.unsplash.com/photo-1556032743-3a694170ef94?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
                                     alt="">
                            </div>
                            <div class="author">
                                <a href="#">
                                    <button class="sale prev3" style="font-size: 1.2em;">&lt;</button>
                                </a>
                                <a href="#" style="float: right;">
                                    <button class="sale next3" style="font-size: 1.2em;">&gt;</button>
                                </a>
                            </div>
                        </div>
                        <div class="content">
                            <div class="top-content">
                                <a href="javascript:void(0)" class="tag">정보</a>
                                <h3 class="title">
                                    <a href="item-details.html">정보</a>
                                </h3>
                                <p class="update-time">정보</p>
                                <ul class="rating">
                                    <li><i class="lni lni-star-filled"></i></li>
                                    <li><i class="lni lni-star-filled"></i></li>
                                    <li><i class="lni lni-star-filled"></i></li>
                                    <li><i class="lni lni-star-filled"></i></li>
                                    <li><i class="lni lni-star-filled"></i></li>
                                    <li><a href="javascript:void(0)">별점</a></li>
                                </ul>
                                <ul class="info-list">
                                    <li><a href="javascript:void(0)"><i class="lni lni-map-marker"></i> 지역</a></li>
                                    <li><a href="javascript:void(0)"><i class="lni lni-timer"></i> 시간</a></li>
                                </ul>
                            </div>
                            <div class="bottom-content">
                                <p class="price">Start From: <span>가격</span></p>
                                <a href="javascript:void(0)" class="like"><i class="lni lni-heart"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Grid -->
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /End Items Grid Area -->

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
    //========= Category Slider
    tns({
        container: '.category-slider',
        items: 3,
        slideBy: 'page',
        autoplay: false,
        mouseDrag: true,
        gutter: 0,
        nav: false,
        controls: true,
        controlsText: ['<i class="lni lni-chevron-left"></i>', '<i class="lni lni-chevron-right"></i>'],
        responsive: {
            0: {
                items: 1,
            },
            540: {
                items: 2,
            },
            768: {
                items: 4,
            },
            992: {
                items: 5,
            },
            1170: {
                items: 6,
            }
        }
    });
</script>
<script>
    $(".prev1").on("click", function (e) {
        e.preventDefault();

        // 이미지 현재의 위치
        var imgOn = $(".imgBox1").find(".on").index();
        // 이미지 총 개수
        var imgLen = $(".imgBox1 .img").length;
        console.log(imgOn)

        // imgBox안의 img 중 imgOn 번째의 on 클래스 삭제
        $(".imgBox1 .img").eq(imgOn).removeClass("on");
        // imgBox안의 img 중 imgOn 번째 숨기기
        $(".imgBox1 .img").eq(imgOn).css("opacity", 0);

        //  이전의 위치로 돌아가야함으로
        imgOn = imgOn - 1;

        if (imgOn < 0) {
            // 돌아가 위치가 -1일 경우
            // 이미지의 마지막으로 돌아간다
            $(".imgBox1 .img").eq(imgLen - 1).css("opacity", 1);
            $(".imgBox1 .img").eq(imgLen - 1).addClass("on");
        } else {
            // 돌아갈 위치가 -1이 아닌 경우
            $(".imgBox1 .img").eq(imgOn).css("opacity", 1);
            $(".imgBox1 .img").eq(imgOn).addClass("on");
        }

    });

    $(".next1").on("click", function (e) {
        e.preventDefault();
        // 위에 동일
        var imgOn = $(".imgBox1").find(".on").index();
        var imgLen = $(".imgBox1 .img").length;

        // 위에 동일
        $(".imgBox1 .img").eq(imgOn).removeClass("on");
        $(".imgBox1 .img").eq(imgOn).css("opacity", 0);

        // 다음의 위치로 알아야 되기 때문에
        imgOn = imgOn + 1;

        if (imgOn === imgLen) {
            // 다음의 위치가 총 개수보다 클 경우
            // 처음의 위치로 돌아간다
            $(".imgBox1 .img").eq(0).css("opacity", 1);
            $(".imgBox1 .img").eq(0).addClass("on");
        } else {
            // 다음 위치가 있는 경우
            $(".imgBox1 .img").eq(imgOn).css("opacity", 1);
            $(".imgBox1 .img").eq(imgOn).addClass("on");
        }
    });
    $(".prev2").on("click", function (e) {
        e.preventDefault();

        // 이미지 현재의 위치
        var imgOn = $(".imgBox2").find(".on").index();
        // 이미지 총 개수
        var imgLen = $(".imgBox2 .img").length;
        console.log(imgOn)

        // imgBox안의 img 중 imgOn 번째의 on 클래스 삭제
        $(".imgBox2 .img").eq(imgOn).removeClass("on");
        // imgBox안의 img 중 imgOn 번째 숨기기
        $(".imgBox2 .img").eq(imgOn).css("opacity", 0);

        //  이전의 위치로 돌아가야함으로
        imgOn = imgOn - 1;

        if (imgOn < 0) {
            // 돌아가 위치가 -1일 경우
            // 이미지의 마지막으로 돌아간다
            $(".imgBox2 .img").eq(imgLen - 1).css("opacity", 1);
            $(".imgBox2 .img").eq(imgLen - 1).addClass("on");
        } else {
            // 돌아갈 위치가 -1이 아닌 경우
            $(".imgBox2 .img").eq(imgOn).css("opacity", 1);
            $(".imgBox2 .img").eq(imgOn).addClass("on");
        }

    });

    $(".next2").on("click", function (e) {
        e.preventDefault();
        // 위에 동일
        var imgOn = $(".imgBox2").find(".on").index();
        var imgLen = $(".imgBox2 .img").length;

        // 위에 동일
        $(".imgBox2 .img").eq(imgOn).removeClass("on");
        $(".imgBox2 .img").eq(imgOn).css("opacity", 0);

        // 다음의 위치로 알아야 되기 때문에
        imgOn = imgOn + 1;

        if (imgOn === imgLen) {
            // 다음의 위치가 총 개수보다 클 경우
            // 처음의 위치로 돌아간다
            $(".imgBox2 .img").eq(0).css("opacity", 1);
            $(".imgBox2 .img").eq(0).addClass("on");
        } else {
            // 다음 위치가 있는 경우
            $(".imgBox2 .img").eq(imgOn).css("opacity", 1);
            $(".imgBox2 .img").eq(imgOn).addClass("on");
        }
    });
    $(".prev3").on("click", function (e) {
        e.preventDefault();

        // 이미지 현재의 위치
        var imgOn = $(".imgBox3").find(".on").index();
        // 이미지 총 개수
        var imgLen = $(".imgBox3 .img").length;
        console.log(imgOn)

        // imgBox안의 img 중 imgOn 번째의 on 클래스 삭제
        $(".imgBox3 .img").eq(imgOn).removeClass("on");
        // imgBox안의 img 중 imgOn 번째 숨기기
        $(".imgBox3 .img").eq(imgOn).css("opacity", 0);

        //  이전의 위치로 돌아가야함으로
        imgOn = imgOn - 1;

        if (imgOn < 0) {
            // 돌아가 위치가 -1일 경우
            // 이미지의 마지막으로 돌아간다
            $(".imgBox3 .img").eq(imgLen - 1).css("opacity", 1);
            $(".imgBox3 .img").eq(imgLen - 1).addClass("on");
        } else {
            // 돌아갈 위치가 -1이 아닌 경우
            $(".imgBox3 .img").eq(imgOn).css("opacity", 1);
            $(".imgBox3 .img").eq(imgOn).addClass("on");
        }

    });

    $(".next3").on("click", function (e) {
        e.preventDefault();
        // 위에 동일
        var imgOn = $(".imgBox3").find(".on").index();
        var imgLen = $(".imgBox3 .img").length;

        // 위에 동일
        $(".imgBox3 .img").eq(imgOn).removeClass("on");
        $(".imgBox3 .img").eq(imgOn).css("opacity", 0);

        // 다음의 위치로 알아야 되기 때문에
        imgOn = imgOn + 1;

        if (imgOn === imgLen) {
            // 다음의 위치가 총 개수보다 클 경우
            // 처음의 위치로 돌아간다
            $(".imgBox3 .img").eq(0).css("opacity", 1);
            $(".imgBox3 .img").eq(0).addClass("on");
        } else {
            // 다음 위치가 있는 경우
            $(".imgBox3 .img").eq(imgOn).css("opacity", 1);
            $(".imgBox3 .img").eq(imgOn).addClass("on");
        }
    });
</script>

<%@ include file="/WEB-INF/common/footer.jsp" %>
