<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="dashboard-sidebar">
    <div class="user-image">
        <img src="${pageContext.request.contextPath}/resources/images/MyPage/imgMy.jpg" alt="#" />
        <h3>
            김여행님
            <span><a href="javascript:void(0)">환영합니다!</a></span>
        </h3>
    </div>
    <div class="dashboard-menu">
        <ul>
            <li><a href="profile-settings.html"><i class="lni lni-pencil-alt"></i> 회원정보 관리</a></li>
            <li><a  href="/myPage/reserve"><i class="lni lni-dashboard"></i>
                    예약/결제 관리</a></li>
            <li><a href="/myPage/history"><i class="lni lni-heart"></i> 결제 내역</a></li>
            <li><a href="/myPage/travelRegister"><i class="lni lni-circle-plus"></i> 상품등록(사업자)</a></li>
            <li><a href="bookmarked-items.html"><i class="lni lni-bookmark"></i> 장바구니</a></li>
            <li><a href="messages.html"><i class="lni lni-envelope"></i> 1:1 문의</a></li>
            <li><a href="delete-account.html"><i class="lni lni-trash"></i> 회원탈퇴</a></li>
        </ul>
        <div class="button">
            <a class="btn" href="javascript:void(0)">로그아웃</a>
        </div>
    </div>
</div>