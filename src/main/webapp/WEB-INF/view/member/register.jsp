<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/common/header.jsp"%>

    <style>
        .code {
            cursor: pointer;
            padding: 1px 6px;
            border-radius: 8% !important;
            background-color: #68a6f1;
            border: none;
            font-size: 18px;
            color: white;
            font-weight: bold;
            /* line-height: 1.5; */
            min-height: calc(1.5em + 1rem + 2px);
            width: 100%;
        }
    </style>
    
    <!-- Start Breadcrumbs -->
    <div class="breadcrumbs overlay">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">회원가입</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">Home</a></li>
                        <li>회원가입</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End Breadcrumbs -->

    <!-- start Registration section -->
    <section class="login registration section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3 col-md-8 offset-md-2 col-12">
                    <div class="form-head" style="padding: 0px;">
                        <div id="infoArea">
                            <nav>
                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                    <button class="nav-link active show1"
                                        style="width: 50%; font-size: 1.5em; transition: none;" data-bs-toggle="tab"
                                        data-bs-target="#nav-grid" type="button" role="tab" aria-controls="nav-grid"
                                        aria-selected="true">고객 가입</button>
                                    <button class="nav-link show2" id="nav-list-tab" data-bs-toggle="tab"
                                        data-bs-target="#nav-list" type="button" role="tab"
                                        style="width: 50%; font-size: 1.5em; transition: none;" aria-controls="nav-list"
                                        aria-selected="false">사업자 가입</button>
                                </div>
                            </nav>
                        </div>
                        <div class="d1">
                            <form action="/member/register" method="post"
                                style=" border: 1px solid #c9c9c9; border-top: none; padding: 40px;">
                                <div style="margin:  10px;">

                                </div>
                                <div class="row mt-4">
                                    <div class="col-sm-9">
                                        <input type="tel" name="tel" id="input_tel" class="form-control form-control-lg"
                                            id="tel" placeholder="전화번호(- 빼고 작성해주세요)" pattern="[0-9]{11}"
                                            style="font-size: 1.2em;" required>
                                    </div>
                                    <div class="col-sm-3">
                                        <button type="button" class="code">코드전송</button>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-sm-9">
                                        <input type="text" name="code" id="input_code"
                                            class="form-control form-control-lg" placeholder="전송받은 코드"
                                            pattern="[0-9]{6}" style="font-size: 1.2em;" required>
                                    </div>
                                    <div class="col-sm-3">
                                        <button type="button" class="code" disabled>인증하기</button>
                                    </div>
                                </div>

                                <div class="form-floating mt-5">
                                    <input type="email" name="email" class="form-control" id="email" required>
                                    <label><span id="result">이메일</span></label>
                                </div>

                                <div class="form-floating mt-3">
                                    <input type="password" name="password" class="form-control form-control-lg mt-3"
                                        pattern="^(?=.*[a-zA-z])(?=.*[0-9]).{6,12}$" required>
                                    <label><span>비밀번호 - 대문자 혹은 소문자와 숫자를 합해 6자리 이상 12자리 이하</span></label>
                                </div>
                                <div class="form-floating mt-3">
                                    <input type="password" name="passC" class="form-control form-control-lg mt-3"
                                        pattern="^(?=.*[a-zA-z])(?=.*[0-9]).{6,12}$" required>
                                    <label><span id="passResult">비밀번호 확인</span></label>
                                </div>

                                <div class="form-floating mt-4">
                                    <input type="text" name="name" class="form-control form-control-lg mt-3" required>
                                    <label><span id="passResult">이름</span></label>
                                </div>

                                <div class="button">
                                	<input type="hidden" name="role" value="customer">
                                    <button type="submit" class="btn">가입하기</button>
                                </div>
                                <p class="outer-link">이미 아이디가 있으신가요? <a href="login.html"> 로그인 하기</a>
                                </p>
                            </form>
                        </div>
                        <div class="d2">
                            <form action="/member/register" method="post"
                                style="border: 1px solid #c9c9c9; border-top: none; padding: 40px;">
                                <div style="margin:  10px;">
                                </div>
                                <div class="row mt-4">
                                    <div class="col-sm-9">
                                        <input type="tel" name="tel" id="input_tel" class="form-control form-control-lg"
                                            id="tel" placeholder="전화번호(- 빼고 작성해주세요)" pattern="[0-9]{11}"
                                            style="font-size: 1.2em;" required>
                                    </div>
                                    <div class="col-sm-3">
                                        <button type="button" class="code">코드전송</button>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-sm-9">
                                        <input type="text" name="code" id="input_code"
                                            class="form-control form-control-lg" placeholder="전송받은 코드"
                                            pattern="[0-9]{6}" style="font-size: 1.2em;" required>
                                    </div>
                                    <div class="col-sm-3">
                                        <button type="button" class="code" disabled>인증하기</button>
                                    </div>
                                </div>

                                <div class="form-floating mt-5">
                                    <input type="email" name="email" class="form-control" id="email" required>
                                    <label><span id="result">이메일</span></label>
                                </div>

                                <div class="form-floating mt-3">
                                    <input type="password" name="password" class="form-control form-control-lg mt-3"
                                        pattern="^(?=.*[a-zA-z])(?=.*[0-9]).{6,12}$" required>
                                    <label><span>비밀번호 - 대문자 혹은 소문자와 숫자를 합해 6자리 이상 12자리 이하</span></label>
                                </div>
                                <div class="form-floating mt-3">
                                    <input type="password" name="passC" class="form-control form-control-lg mt-3"
                                        pattern="^(?=.*[a-zA-z])(?=.*[0-9]).{6,12}$" required>
                                    <label><span id="passResult">비밀번호 확인</span></label>
                                </div>

                                <div class="form-floating mt-4">
                                    <input type="text" name="name" class="form-control form-control-lg mt-3" required>
                                    <label><span id="passResult">이름</span></label>
                                </div>

                                <div class="button">
                                	<input type="hidden" name="role" value="business">
                                    <button type="submit" class="btn">가입하기</button>
                                </div>
                                <p class="outer-link">이미 아이디가 있으신가요? <a href="login.html"> 로그인 하기</a>
                                </p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Registration section -->
    
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
	    $(document).ready(function () {
	        $('.d1').show(); //페이지를 로드할 때 표시할 요소
	        $('.d2').hide(); //페이지를 로드할 때 숨길 요소
	        $('.di').css({ background: '#c9c9c9' });
	        $('.show1').css({
	            color: '#00000',
	            // backgroundColor:'#f3f9ff',
	            border: '2px solid #c9c9c9',
	            borderBottom: 'none'
	        });
	        $('.show2').css({ borderBottom: '1px solid #c9c9c9' });
	        $('.show2').click(function () {
	            $('.d1').hide(); //클릭 시 첫 번째 요소 숨김
	            $('.d2').show(); //클릭 시 두 번째 요소 표시
	            $('.show2').css({
	                color: '#00000',
	                // backgroundColor:'#f3f9ff',
	                border: '2px solid #c9c9c9',
	                borderBottom: 'none'
	            });
	            $('.show1').css({
	                color: '#00000',
	                backgroundColor: 'white',
	                border: 'none',
	                borderBottom: '1px solid #c9c9c9'
	            });
	            return false;
	        });
	    });
	    $('.show1').click(function () {
	        $('.d2').hide(); //클릭 시 첫 번째 요소 숨김
	        $('.d1').show(); //클릭 시 두 번째 요소 표시
	        $('.show1').css({
	            color: '#00000',
	            // backgroundColor: '#f3f9ff',
	            border: '2px solid #c9c9c9',
	            borderBottom: 'none'
	        });
	        $('.show2').css({
	            color: '#00000',
	            backgroundColor: 'white',
	            border: 'none',
	            borderBottom: '1px solid #c9c9c9'
	        });
	    });
    </script>
    
<%@ include file="/WEB-INF/common/footer.jsp"%>