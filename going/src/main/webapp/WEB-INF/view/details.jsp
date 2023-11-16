<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/common/header.jsp"%>
<style>
        .ldh_btn1 {
            width: 20px; 
            cursor: pointer;
        }
        .ldh_btn2 {
            width: 20px; 
            cursor: pointer;
        }
        .ldh_btn3 {
            width: 20px; 
            cursor: pointer;
        }
        .ldh_moy {
            border: 1px solid #f5f9fd;
            padding: 30px;
            margin: 40px;
            background-color: #f5f9fd;
        }
        .ldhbtn_a {
            font-size: 1.2em;
            border: 1px solid rgba(0,0,0,.1);
            color: white;
            background-color:#333;
            padding: 10px;
            margin: 8px;
        }
        .ldhbtn_b {
            font-size: 1.2em;
            border: 1px solid rgba(0,0,0,.1);
            color: white;
            background-color:#999;
            padding: 10px;
            margin: 8px;
        }
        .t-main {
            position: relative;
        }

        .t-prev , .t-next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            color: white;
            font-weight: bold;
            font-size: 30px;
            padding: 25px 16px;
            user-select: none;
            transition: 0.5s ease;
            margin-top: -29px;
        }

        .t-next {
            right: 0;
            border-radius: 5px 0 0 5px;
        }

        .t-prev {
            left: 0;
            border-radius: 0 5px 5px 0;
        }

        .t-prev:hover , .t-next:hover {
            background-color: rgba(255, 255, 255, 0.6);
        }
    </style>
<!-- Start Item Details -->
    <section class="item-details section">
        <div class="container">
            <div class="top-area">
                <div class="row">
                    <div class="col-lg-6 col-md-12 col-12">
                        <div class="product-images">
                            <main id="gallery">
                                <div class="main-img t-main">
                                    <img src="resources/images/item-details/image1.png" id="current" class="t_fade" alt="#">
                                    <a class="t-prev" onclick="tIndex(-1)">&#10094;</a>
                                    <a class="t-next" onclick="tIndex(1)">&#10095;</a>
                                </div>
                                <div class="images">
                                    <img src="resources/images/item-details/image1.png" class="img t1" alt="#">
                                    <img src="resources/images/item-details/image2.png" class="img t2" alt="#">
                                    <img src="resources/images/item-details/image3.png" class="img t3" alt="#">
                                    <img src="resources/images/item-details/image4.png" class="img t4" alt="#">
                                    <img src="resources/images/item-details/image5.png" class="img t5" alt="#">
                                </div>
                            </main>
                        </div>
                    </div>

                    <div class="col-lg-6 col-md-12 col-12">
                        <div class="product-info">
                            <h2 class="title">여행상품 이름</h2>
                            <p class="location"><i class="lni lni-map-marker"></i><a href="javascript:void(0)">여행지, 국가이름</a></p>
                            <h3 class="price">$999</h3>
                            <div class="list-info">
                                <h4>여행일정</h4>
                                <ul>
                                    <li><span>1day :</span>데카포 별빛투어+야간 온천</li>
                                    <li><span>2day :</span>마운트쿡 국립공원 자유시간</li>
                                    <li><span>3day :</span>시티 워킹투어 2회</li>
                                    <li><span>4day :</span>호주+퀸스타운 2박 특급호텔</li>
                                </ul>
                            </div>
                            <div class="contact-info">
                                <ul>
                                    <li style="left: 0px;">
                                        <a href="#" class="mail">
                                            <i class="lni lni-heart"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="mailto:example@gmail.com" class="mail">
                                            <i class="lni lni-envelope"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="item-details-blocks">
                <div class="row">
                    <div class="col-lg-8 col-md-7 col-12">

                         <!-- 네비블록 -->
                        <div class="post-ad-tab" style="margin-top: 30px;">
                        <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                <button class="nav-link active" id="nav-item-info-tab" data-bs-toggle="tab"
                                    data-bs-target="#nav-item-info" type="button" role="tab"
                                    aria-controls="nav-item-info" aria-selected="true">
                                    여행상세
                                </button>
                                <button class="nav-link" id="nav-item-details-tab" data-bs-toggle="tab"
                                    data-bs-target="#nav-item-details" type="button" role="tab"
                                    aria-controls="nav-item-details" aria-selected="false">
                                    리뷰보기
                                </button>
                                <button class="nav-link" id="nav-user-info-tab" data-bs-toggle="tab"
                                    data-bs-target="#nav-user-info" type="button" role="tab"
                                    aria-controls="nav-user-info" aria-selected="false">
                                    상품문의
                                </button>
                            </div>
                        </nav>
                        </div>
                        <!-- 네비블록 끝 -->

                        <!-- 네비컨텐츠 -->
                        <div class="tab-content" id="nav-tabContent">

                            <!-- 컨텐츠1 -->
                            <div class="tab-pane fade show active" id="nav-item-info" role="tabpanel"
                                aria-labelledby="nav-item-info-tab">
                                <div class="single-block description step-one-content" style="margin-top: 0px;">
                                    <h3>여행상세</h3>
                                    <p>
                                        이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 
                                    </p>
                                    <p>
                                        이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 
                                    </p>
                                    <p>
                                        이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 
                                    </p>
                                    <p>
                                        이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 
                                    </p>
                                    <p>
                                        이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 
                                    </p>
                                    <p>
                                        이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 
                                    </p>
                                    <p>
                                        이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 
                                    </p>
                                    <p>
                                        이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 
                                    </p>
                                    <p>
                                        이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 
                                    </p>
                                    <p>
                                        이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 이미지 
                                    </p>
                                </div>

                            </div>

                            <!-- 컨텐츠2 -->
                            <div class="tab-pane fade" id="nav-item-details" role="tabpanel"
                                                aria-labelledby="nav-user-info-tab">
                                <div class="single-block description step-two-content" style="margin-top: 0px;">
                                    <div class="ldh_pri" style="display:inline-block;vertical-align:top;">
                                        <img style="border-radius: 80%; width: 15%;" src="resources/images/item-details/review/hu.png" alt="img"/>
                                    </div>
                                    <div style="display:inline-block; position: relative; right: 24%; line-height: 30%; top: 10px;">
                                        <span style="color: red; font-size: 18px;">★</span>
                                        <span style="color: red; font-size: 18px;">★</span>
                                        <span style="color: red; font-size: 18px;">★</span>
                                        <span style="color: red; font-size: 18px;">★</span>
                                        <span style="color: red; font-size: 18px;">★</span>
                                        <strong style="font-size: 17px; color: black;">5</strong><br>
                                        <p class="ldh2">dog*****- 23.10.31  |<strong style="cursor: pointer; color: black; font-size: 0.8em;"> 신고</strong></p>
                                    </div>
                                    <div style="position: relative; left: 40px;">
                                    <p style="font-size: 0.8em;">서울특별시 종로구 이젠호텔</p>
                                    <p style="color: black;">시설도 좋았고 서비스도 너무 좋았습니다.</p></div>
                                    <img style="width: 30%; position: relative; left: 40px;" src="resources/images/item-details/review/ho.png" alt="">
                                    <img style="width: 30%; position: relative; left: 50px;" src="resources/images/item-details/review/ho2.png" alt="">
                                    <hr>
                                    <div style="display:inline-block;vertical-align:top;">
                                        <img style="border-radius: 80%; width: 15%;" src="resources/images/item-details/review/hu.png" alt="img"/>
                                    </div>
                                    <div style="display:inline-block; position: relative; right: 24%; line-height: 30%; top: 10px;">
                                        <span style="color: red; font-size: 18px;">★</span>
                                        <span style="color: red; font-size: 18px;">★</span>
                                        <span style="color: red; font-size: 18px;">★</span>
                                        <span style="color: red; font-size: 18px;">★</span>
                                        <strong style="font-size: 17px; color: black;">4</strong><br>
                                        <p class="ldh2">cat*****- 23.10.31  |<strong style="cursor: pointer; color: black; font-size: 0.8em;"> 신고</strong></p>
                                    </div>
                                    <div style="position: relative; left: 40px;">
                                    <p style="font-size: 0.8em;">서울특별시 종로구 이젠호텔</p>
                                    <p style="color: black;">시설도 좋았고 서비스가 별로였습니다.</p></div>
                                    <hr>
                                    <div style="display:inline-block;vertical-align:top;">
                                        <img style="border-radius: 80%; width: 15%;" src="resources/images/item-details/review/hu.png" alt="img"/>
                                    </div>
                                    <div style="display:inline-block; position: relative; right: 24%; line-height: 30%; top: 10px;">
                                        <span style="color: red; font-size: 18px;">★</span>
                                        <span style="color: red; font-size: 18px;">★</span>
                                        <span style="color: red; font-size: 18px;">★</span>
                                        <strong style="font-size: 17px; color: black;">3</strong><br>
                                        <p class="ldh2">dog2*****- 23.10.31  |<strong style="cursor: pointer; color: black; font-size: 0.8em;"> 신고</strong></p>
                                    </div>
                                    <div style="position: relative; left: 40px;">
                                    <p style="font-size: 0.8em;">서울특별시 종로구 이젠호텔</p>
                                    <p style="color: black;">비싸기만 하고 별로였습니다.</p></div>
                                </div>
                                </div>                
                            <!-- 컨텐츠3 -->
                            <div class="tab-pane fade" id="nav-user-info" role="tabpanel"
                                                aria-labelledby="nav-user-info-tab">
                                <div class="single-block description step-three-content" style="margin-top: 0px;">
                                    <div>
                                    <h4>Q&A</h4>
                                    <p>구매하시려한느 상품에 대해 궁금한 점이 있으신 경우 문의해주세요.
                                    <strong style="color: black; cursor: pointer;">'판매자 톡톡문의'</strong>를 통해 판매자와 간편하게 1:1상담도 가능합니다.</p>
                                    </strong>
                                    <a class="ldhbtn_a" href="#" type="button">상품 Q&A작성하기</a>
                                    <a class="ldhbtn_b" href="#" type="button">나의 Q&A조회 ></a>
                                </div>
                            </div>
                        </div>
                    </div>
                        <!-- Start Single Block -->
                        <div class="single-block tags">
                            <h3>Tags</h3>
                            <ul>
                                <li><a href="javascript:void(0)">#크라운 플라자</a></li>
                                <li><a href="javascript:void(0)">#프리미어</a></li>
                                <li><a href="javascript:void(0)">#시티뷰</a></li>
                                <li><a href="javascript:void(0)">#테마파크</a></li>
                                <li><a href="javascript:void(0)">#야경투어</a></li>
                                <li><a href="javascript:void(0)">#스톤마사지</a></li>
                            </ul>
                        </div>
                        <!-- End Single Block -->

                    </div>
                    <div class="col-lg-4 col-md-5 col-12">
                        <div class="item-details-sidebar">
                            <!-- Start Single Block -->
                            <div class="single-block author">
                                <h3>여행사</h3>
                                <div class="content">
                                    <img src="resources/images/testimonial/testi3.jpg" alt="#">
                                    <h4>OO투어</h4>
                                    <span>02-1234-5678</span>
                                    <a href="javascript:void(0)" class="see-all">홈페이지 방문</a>
                                </div>
                            </div>
                            <!-- End Single Block -->
                            <!-- Start Single Block -->
                            <h3 style="text-align: center;">상품가격</h3>
                            <div style="" class="single-block contant-seller comment-form ">
                                <h3>인원 수</h3>
                                <form action="#" method="POST">
                                        <ul class="list">
                                                <li>
                                                    <div style="padding: 18px;" class="select mt-3">    
                                                        <span>성인</span>
                                                        <img class="ldh_btn1" src="resources/images/item-details/review/chk.png" alt="만 12세 이상">
                                                        <h6>00,000원</h6>
                                                        <select style="float:right; position: relative; width: 60px; bottom:20px;" id="jq_id_adultCnt" class="jq_cl_personCnt">
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
                                                </li>
                                                <hr>
                                                <li>
                                                    <div style="padding: 18px;" class="select mt-3">
                                                        <span>아동</span>
                                                        <img class="ldh_btn2" src="resources/images/item-details/review/chk.png" alt="만 12세 미만">
                                                        <h6>00,000원</h6>
                                                        <select style="float:right; position: relative; width: 60px; bottom:20px;" id="jq_id_adultCnt" class="jq_cl_personCnt">
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
                                                <hr>
                                                <li>
                                                    <div style="padding: 15px;" class="select mt-3">
                                                        <span>유아</span>
                                                        <img class="ldh_btn3" src="resources/images/item-details/review/chk.png" alt="별도문의">
                                                        <h6>별도문의</h6>
                                                        <select style="float:right; position: relative; width: 60px; bottom:20px;" id="jq_id_adultCnt" class="jq_cl_personCnt">
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
                                                </li>
                                                <hr>
                                                <div>
                                                <div class="ldh_moy">
                                                    <p>
                                                        <span style="position: relative; bottom: 20px; right: 20px;">총금액</span><span style="position: relative; left: 25px; font-size: 1.5em; color: red;">0,000,000원</span></p>
                                                    <P>    
                                                        <a style="float: right; font-size: 0.7em;" href="#">무이자할부<img src="resources/images/item-details/review/chk2.png"></a>
                                                    </p>
                                                </div>
                                        </ul>
                                </form>
                            </div>
                            <!-- End Single Block -->
                            <!-- Start Single Block -->
                            <div class="single-block ">
                                <h3>미팅장소</h3>
                                <div class="mapouter">
                                    <div class="gmap_canvas"><iframe width="100%" height="300" id="gmap_canvas"
                                            src="https://maps.google.com/maps?q=2880%20Broadway,%20New%20York&t=&z=13&ie=UTF8&iwloc=&output=embed"
                                            frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a
                                            href="https://putlocker-is.org"></a><br>
                                        <style>
                                            .mapouter {
                                                position: relative;
                                                text-align: right;
                                                height: 300px;
                                                width: 100%;
                                            }
                                        </style><a href="https://www.embedgooglemap.net">google map code for website</a>
                                        <style>
                                            .gmap_canvas {
                                                overflow: hidden;
                                                background: none !important;
                                                height: 300px;
                                                width: 100%;
                                            }
                                        </style>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Block -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Item Details -->
    <script type="text/javascript">

        const current = document.getElementById("current");
        const opacity = 0.3;
        const imgs = document.querySelectorAll(".img");

        let t_index = 1;
        const t_src = "resources/images/item-details/image";

        let t_keyframe = [
            {opacity: 0.4},
            {opacity: 1}
        ];

        let t_options = {
            duration: 500,
            easing: "ease-in-out",
        };

        imgs.forEach((img, index) => {
            img.addEventListener("click", (e) => {
                t_index = index + 1;
                imgs.forEach(img => {
                    img.style.opacity = 1;
                });
                current.src = e.target.src;
                current.animate(t_keyframe, t_options);
                e.target.style.opacity = opacity;
            });
        });

        tSlides(t_index);

        function tIndex(n) {
            tSlides(t_index += n);
        }

        function tSlides(n) {
            if (t_index > imgs.length) {
                t_index = 1;
            }
            if (t_index < 1) {
                t_index = imgs.length;
            }

            let cur_img = document.querySelector(".t" + t_index);
            
            current.src = t_src + t_index + ".png";
            current.animate(t_keyframe, t_options);
            imgs.forEach(img => {
                    img.style.opacity = 1;
                });
            cur_img.style.opacity = opacity;
        }

    </script>

<%@ include file="/WEB-INF/common/footer.jsp"%>