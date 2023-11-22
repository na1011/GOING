<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="/WEB-INF/common/header.jsp"%>

    <style>
        .post-title {
            padding: 45px 30px;
            border-bottom: 1px solid #eee;
            display: block;
            background-color: #7992bc;
            font-size: 23px;
            letter-spacing: -1px;
            color: #fff;
            font-weight: 600;
        }
    </style>
    
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
                        <li>마이페이지</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End Breadcrumbs -->  
    <!-- Start Dashboard Section -->
    <section class="dashboard section" style="padding-top: 25px">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-4 col-12">
                
                    <%@ include file="/WEB-INF/common/myPageNav.jsp"%>
                    
                </div>
                <div class="col-lg-9 col-md-8 col-12">
                    <div class="main-content">
                        <!-- Start Post Ad Block Area -->
                        <div class="dashboard-block mt-0">
                            <h3 class="block-title">상품 등록</h3>
                            <div class="inner-block">
                                <!-- Start Post Ad Tab -->
                                <div class="post-ad-tab" style="padding: 0 30px">
                                    <nav>
                                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                            <button class="nav-link active" id="nav-item-info-tab" data-bs-toggle="tab"
                                                data-bs-target="#nav-item-info" type="button" role="tab"
                                                aria-controls="nav-item-info" aria-selected="true">
                                                <span class="serial">01</span>
                                                Step
                                                <span class="sub-title">국가 선택</span>
                                            </button>
                                            <button class="nav-link" id="nav-item-details-tab" data-bs-toggle="tab"
                                                data-bs-target="#nav-item-details" type="button" role="tab"
                                                aria-controls="nav-item-details" aria-selected="false">
                                                <span class="serial">02</span>
                                                Step
                                                <span class="sub-title">상품 상세</span>
                                            </button>
                                            <button class="nav-link" id="nav-user-info-tab" data-bs-toggle="tab"
                                                data-bs-target="#nav-user-info" type="button" role="tab"
                                                aria-controls="nav-user-info" aria-selected="false">
                                                <span class="serial">03</span>
                                                Step
                                                <span class="sub-title">옵션</span>
                                            </button>
                                        </div>
                                    </nav>
                                    
                                    <form class="default-form-style" method="post" action="/myPage/register">
                                    <div class="tab-content" id="nav-tabContent">
                                        <div class="tab-pane fade show active" id="nav-item-info" role="tabpanel"
                                            aria-labelledby="nav-item-info-tab">
                                            <!-- Start Post Ad Step One Content -->
                                            <div class="step-three-content">
                                                    <div class="row">
                                                        <div class="col-lg-6 col-12">
                                                            <div class="form-group">
                                                                <label>이름</label>
                                                                <input name="name" type="text"
                                                                    placeholder="이름을 입력해주세요" />
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-12">
                                                            <div class="form-group">
                                                                <label>휴대폰번호*</label>
                                                                <input name="number" type="text"
                                                                    placeholder="번호를 입력해주세요" />
                                                            </div>
                                                        </div>
                                                        <div class="col-12">
                                                            <div class="form-group">
                                                                <label>나라*</label>
                                                                <div class="selector-head">
                                                                    <span class="arrow"><i
                                                                            class="lni lni-chevron-down"></i></span>
                                                                    <select class="user-chosen-select">
                                                                        <option value="none">
                                                                            나라를 선택해주세요
                                                                        </option>
                                                                        <option value="none">아프가니스탄</option>
                                                                        <option value="none">아메리카</option>
                                                                        <option value="none">알마니아</option>
                                                                        <option value="none">방글라데시</option>
                                                                        <option value="none">브라질</option>
                                                                        <option value="none">인도</option>
                                                                        <option value="none">대한민국</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-12">
                                                            <div class="form-group">
                                                                <label>도시선택*</label>
                                                                <div class="selector-head">
                                                                    <span class="arrow"><i
                                                                            class="lni lni-chevron-down"></i></span>
                                                                    <select class="user-chosen-select">
                                                                        <option value="none">도시선택</option>
                                                                        <option value="none">뉴욕</option>
                                                                        <option value="none">로스엔젤리스</option>
                                                                        <option value="none">시카고</option>
                                                                        <option value="none">산티아고</option>
                                                                        <option value="none">산조세</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-12">
                                                            <div class="form-group">
                                                                <label>시 선택*</label>
                                                                <div class="selector-head">
                                                                    <span class="arrow"><i
                                                                            class="lni lni-chevron-down"></i></span>
                                                                    <select class="user-chosen-select">
                                                                        <option value="none">시 선택</option>
                                                                        <option value="none">뉴욕</option>
                                                                        <option value="none">텍사스</option>
                                                                        <option value="none">아리졸라</option>
                                                                        <option value="none">플로리다</option>
                                                                        <option value="none">워싱턴</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-12">
                                                            <div class="form-group">
                                                                <label>주소*</label>
                                                                <input name="주소" type="text" placeholder="주소를 입력해주세요" />
                                                            </div>
                                                        </div>
                                                        <div class="col-12">
                                                            <div class="google-map">
                                                                <div class="mapouter">
                                                                    <div class="gmap_canvas">
                                                                        <iframe width="100%" height="300"
                                                                            id="gmap_canvas"
                                                                            src="https://maps.google.com/maps?q=2880%20Broadway,%20New%20York&t=&z=13&ie=UTF8&iwloc=&output=embed"
                                                                            frameborder="0" scrolling="no"
                                                                            marginheight="0" marginwidth="0"></iframe><a
                                                                            href="https://123movies-to.org"></a><br />
                                                                        <style>
                                                                            .mapouter {
                                                                                position: relative;
                                                                                text-align: right;
                                                                                height: 300px;
                                                                                width: 100%;
                                                                            }
                                                                        </style><a
                                                                            href="https://www.embedgooglemap.net">embed
                                                                            google maps wordpress</a>
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
                                                        </div>
                                                        <div class="col-12">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" value=""
                                                                    id="flexCheckDefault" />
                                                                <label class="form-check-label" for="flexCheckDefault">
                                                                    위치 사용에 동의합니다.
                                                                </label>
                                                            </div>
                                                            <div class="form-group button mb-0">
                                                                <button class="btn" type="button"
                                                                    onclick="secondStep()">
                                                                    다음
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                            </div>
                                            <!-- Start Post Ad Step One Content -->
                                        </div>
                                        <div class="tab-pane fade" id="nav-item-details" role="tabpanel"
                                            aria-labelledby="nav-item-details-tab">
                                            <!-- Start Post Ad Step Two Content -->
                                            <div class="step-two-content">
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <div class="form-group">
                                                                <label>상품입력*</label>
                                                                <input name="itemName" type="text"
                                                                    placeholder="상품을 입력해주세요" />
                                                            </div>
                                                        </div>

                                                        <div class="col-12">
                                                            <div class="form-group">
                                                                <label>가격 입력*</label>
                                                                <input name="price" type="text"
                                                                    placeholder="가격을 입력해주세요" />
                                                            </div>
                                                        </div>
                                                        <div class="col-12">
                                                            <div class="form-group">
                                                                <label>결제 유형*</label>
                                                                <div class="selector-head">
                                                                    <span class="arrow"><i
                                                                            class="lni lni-chevron-down"></i></span>
                                                                    <select class="user-chosen-select">
                                                                        <option value="none">
                                                                            결제 유형을 선택하세요
                                                                        </option>
                                                                        <option value="none">카드</option>
                                                                        <option value="none">현금</option>
                                                                        <option value="none">무통장</option>
                                                                        <option value="none">온라인결제</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-12">
                                                            <div class="form-group">
                                                                <label>화폐 선택*</label>
                                                                <div class="selector-head">
                                                                    <span class="arrow"><i
                                                                            class="lni lni-chevron-down"></i></span>
                                                                    <select class="user-chosen-select">
                                                                        <option value="none">
                                                                            옵션을 선택해주세요
                                                                        </option>
                                                                        <option value="none">달러</option>
                                                                        <option value="none">유로</option>
                                                                        <option value="none">루피</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-12">
                                                            <div class="upload-input">
                                                                <input type="file" id="upload" name="upload" />
                                                                <label for="upload" class="text-center content">
                                                                    <span class="text">
                                                                        <span class="d-block mb-15">업로드할 파일을
                                                                            올려주세요</span>
                                                                        <span class="mb-15 plus-icon"><i
                                                                                class="lni lni-plus"></i></span>
                                                                        <span
                                                                            class="main-btn d-block btn-hover">선택된파일</span>
                                                                        <span class="d-block">업로드 최대 크기 10MB</span>
                                                                    </span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-12">
                                                            <div class="form-group">
                                                                <label class="video-label">비디오 링크*
                                                                    <span>비디오 링크를 넣어주세요</span></label>
                                                                <input name="video" type="text" placeholder="링크입력" />
                                                                <a href="javascript:void(0)" class="add-video"><i
                                                                        class="lni lni-plus"></i> 추가영상</a>
                                                            </div>
                                                        </div>
                                                        <div class="col-12">
                                                            <div class="form-group mt-30">
                                                                <label>추가 상세설명*</label>
                                                                <textarea name="message"
                                                                    placeholder="상세설명을 입력해주세요"></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-12">
                                                            <div class="form-group">
                                                                <label>광고유형*</label>
                                                                <div class="selector-head">
                                                                    <span class="arrow"><i
                                                                            class="lni lni-chevron-down"></i></span>
                                                                    <select class="user-chosen-select">
                                                                        <option value="none">
                                                                            옵션을 선택해주세요
                                                                        </option>
                                                                        <option value="none">옵션 1</option>
                                                                        <option value="none">옵션 2</option>
                                                                        <option value="none">옵션 3</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-12">
                                                            <div class="form-group">
                                                                <label>인원수*</label>
                                                                <div class="selector-head">
                                                                    <span class="arrow"><i
                                                                            class="lni lni-chevron-down"></i></span>
                                                                    <select class="user-chosen-select">
                                                                        <option value="none">
                                                                            인원수를 선택해주세요
                                                                        </option>
                                                                        <option value="none">1</option>
                                                                        <option value="none">2</option>
                                                                        <option value="none">3</option>
                                                                        <option value="none">4</option>
                                                                        <option value="none">5</option>
                                                                        <option value="none">6</option>
                                                                        <option value="none">7</option>
                                                                        <option value="none">8</option>
                                                                        <option value="none">9</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-12">
                                                            <div class="form-group">
                                                                <label class="tag-label">상품코드*
                                                                    <span>상품코드를 입력해주세요</span></label>
                                                                <input name="tag" type="text"
                                                                    placeholder="Product Code" />
                                                            </div>
                                                        </div>
                                                        <div class="col-12">
                                                            <div class="form-group button mb-0">
                                                                <button class="btn alt-btn" type="button"
                                                                    onclick="firstStep()">
                                                                    이전
                                                                </button>
                                                                <button class="btn" type="button" onclick="thirdStep()">
                                                                    다음
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                            </div>
                                            <!-- Start Post Ad Step Two Content -->
                                        </div>
                                        <div class="tab-pane fade" id="nav-user-info" role="tabpanel"
                                            aria-labelledby="nav-user-info-tab">
                                            <!-- Start Post Ad Step Three Content -->
                                            <div class="step-one-content">
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <div class="form-group">
                                                                <label>출발일자*</label>
                                                                <td class="td_KYS">
                                                                    <input type="date" id="travel_date"
                                                                        name="travel_date" required />
                                                                </td>
                                                            </div>
                                                        </div>
                                                        <div class="col-12">
                                                            <div class="form-group">
                                                                <label>도착일자*</label>
                                                                <td class="td_KYS">
                                                                    <input type="date" id="travel_date"
                                                                        name="travel_date" required />
                                                                </td>
                                                            </div>
                                                        </div>

                                                        <div class="col-12">
                                                            <div class="form-group">
                                                                <label for="discount">할인율 (%)</label>
                                                                <input type="number" id="discount" name="discount"
                                                                    placeholder="할인율입력" />
                                                            </div>
                                                        </div>
                                                        <div class="col-12">
                                                            <div class="form-group button mb-0">
                                                                <button class="btn alt-btn" type="button"
                                                                    onclick="secondStep()">
                                                                    이전
                                                                </button>
                                                                <button class="btn" type="submit">
                                                                    제출
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                
                                            </div>
                                            <!-- Start Post Ad Step Three Content -->
                                        </div>
                                    </div>
                                    </form>
                                </div>
                                <!-- End Post Ad Tab -->
                            </div>
                        </div>
                        <!-- End Post Ad Block Area -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Dashboard Section -->
    
        <script>
	        let first = document.querySelector("#nav-item-info-tab");
	        let second = document.querySelector("#nav-item-details-tab");
	        let third = document.querySelector("#nav-user-info-tab");
	
	        function firstStep() {
	            first.click();
	            first.focus();
	        }
	        function secondStep() {
	            second.click();
	            second.focus();
	        }
	        function thirdStep() {
	            third.click();
	            third.focus();
	        }
	    </script>
	    
	    <%@ include file="/WEB-INF/common/footer.jsp"%>