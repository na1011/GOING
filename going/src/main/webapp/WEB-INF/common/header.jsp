<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>GOING - 여행검색 플랫폼</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon.svg" />
    <!-- Place favicon.ico in the root directory -->

    <!-- Web Font -->
    <link
        href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- ========================= CSS here ========================= -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/LineIcons.2.0.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/tiny-slider.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/glightbox.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" />
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom.css" />

<!-- 	<style>
        @font-face {
		  font-family: 'LineIcons';
		  src: url('${pageContext.request.contextPath}/resources/fonts/LineIcons.eot') format('embedded-opentype'),
		  	url('${pageContext.request.contextPath}/resources/fonts/LineIcons.woff2') format('woff2'),
		  	url('${pageContext.request.contextPath}/resources/fonts/LineIcons.woff') format('woff'), 
		  	url('${pageContext.request.contextPath}/resources/fonts/LineIcons.ttf') format('truetype'), 
		  	url('${pageContext.request.contextPath}/resources/fonts/LineIcons.svg') format('svg');
		  font-weight: normal;
		  font-style: normal;
		}
		
		.lni {
		  display: inline-block;
		  font: normal normal normal 1em/1 'LineIcons';
		  speak: none;
		  text-transform: none;
		  /* Better Font Rendering */
		  -webkit-font-smoothing: antialiased;
		  -moz-osx-font-smoothing: grayscale;
		}
    </style> -->

</head>

<body>
    <!-- Preloader -->
    <div class="preloader">
        <div class="preloader-inner">
            <div class="preloader-icon">
                <span></span>
                <span></span>
            </div>
        </div>
    </div>
    <!-- /End Preloader -->

    <!-- Start Header Area -->
    <header class="header navbar-area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <div class="nav-inner">
                        <nav class="navbar navbar-expand-lg">
                            <a class="navbar-brand" href="/">
                                <img src="${pageContext.request.contextPath}/resources/images/logo/colorlogo.png" alt="Logo">
                            </a>
                            <button class="navbar-toggler mobile-menu-btn" type="button" data-bs-toggle="collapse"
                                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
                                <ul id="nav" class="navbar-nav ms-auto">
                                    <li class="nav-item">
                                        <a class="active" href="index.html"
                                            aria-label="Toggle navigation">Home</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#" aria-label="Toggle navigation">고객센터</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="/myPage/home" aria-label="Toggle navigation">마이페이지</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class=" dd-menu collapsed" href="javascript:void(0)"
                                            data-bs-toggle="collapse" data-bs-target="#submenu-1-3"
                                            aria-controls="navbarSupportedContent" aria-expanded="false"
                                            aria-label="Toggle navigation">여행관리</a>
                                        <ul class="sub-menu collapse" id="submenu-1-3">
                                            <li class="nav-item"><a href="#">장바구니</a></li>
                                            <li class="nav-item"><a href="./myReserve.html">예약내역</a></li>
                                            <li class="nav-item"><a href="./myPaymentHistory.html">리뷰관리</a></li>
                                            <li class="nav-item"><a href="./travelRegister.html">여행지 등록(사업자 전용)</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div> <!-- navbar collapse -->
                            <div class="login-button">
                                <ul>
                                    <li>
                                        <a href="Sign_In.html"><i class="lni lni-enter"></i> 로그인</a>
                                    </li>
                                    <li>
                                        <a href="Sign_up.html"><i class="lni lni-user"></i> 회원가입</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="button header-button">
                                <a href="search.html" class="btn">여행지 검색</a>
                            </div>
                        </nav> <!-- navbar -->
                    </div>
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </header>
    <!-- End Header Area -->