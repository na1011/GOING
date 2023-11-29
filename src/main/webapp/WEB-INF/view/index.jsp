<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@ include file="/WEB-INF/common/header.jsp" %>

<style>
    .single-grid .img {
        position: absolute;
        width: 300px;
        height: 250px;
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
                    <h3>특가 상품</h3>
                    <c:forEach var="cheap" items="${cheapList}" varStatus="i">
                        <div id="slideWrap">
                            <div class="single-grid wow fade-in">
                                <div class="image">
                                    <div class=imgBox3 style="width:300px;height:300px;">
                                        <img class="img on"
                                             src="https://images.unsplash.com/photo-1556034910-07855ebf6606?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
                                             alt="">
                                    </div>
                                    <div class="author">
                                        <a href="javascript:void(0)">
                                            <button class="sale prev" style="font-size: 1.2em;" onclick="prevIndex(${i.index})">&lt;</button>
                                        </a>
                                        <a href="javascript:void(0)" style="float: right;">
                                            <button class="sale next" style="font-size: 1.2em;" onclick="nextIndex(${i.index})">&gt;</button>
                                        </a>
                                    </div>
                                </div>
                                <div class="content">
                                    <div class="top-content">
                                        <a href="javascript:void(0)" class="tag">정보</a>
                                        <h3 class="title">
                                            <a href="item-details.html">${cheap.itemName}</a>
                                        </h3>
                                        <p class="update-time">${i.index}번째</p>
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
                                        <p class="price">Start From: <span>${cheap.price}</span></p>
                                        <a href="javascript:void(0)" class="like"><i class="lni lni-heart"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </c:forEach>
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
<script>
    const slideWrap = document.querySelectorAll("#slideWrap");
    let index = 1;
    slide(1);

    function prevIndex(n) {
        slide(index -= 1);
    }

    function nextIndex(n) {
        slide(index += 1);
    }

    function slide(n) {
        if(n > slideWrap.length) {
            index = 1;
        }
        if(n < 1) {
            index = slideWrap.length;
        }

        for(i=0; i<slideWrap.length; i++) {
            slideWrap[i].style.display = "none";
        }
        slideWrap[index - 1].style.display = "block";
    }
</script>

<%@ include file="/WEB-INF/common/footer.jsp" %>
