<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../includes/header.jsp"%>
<div id="Container">
  <div id="Contents">
    <div class="mypage-head rate_04">
      <h1 class="tit">
        <a href="/mypage">마이페이지</a>
      </h1>
      <div class="grd-box">
        <div class="info_user clrfix">
          <div class="thum">
            <span class="bg"></span>
            <img src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/my_picture_base.jpg" alt="" onerror="common.errorImg(this);">
          </div>
          <p class="txt">
            <strong class="name"><sec:authentication property="principal.user.user_name"/></strong>님 반갑습니다.
          </p>
        </div>
      </div>
    </div>
    <div class="mypage-ix">
      <div class="mypage-lnb">
        <ul>
          <li>
            <h2>마이 쇼핑</h2>
            <ul>
              <li class="subMenu on">
                <a href="/mypage/order-lists">주문 조회</a>
              <li class="subMenu">
                <a href="/mypage">좋아요</a>
              </li>
          </li>
          <li class="subMenu">
            <a href="/cart">장바구니</a>
          </li>
          <li class="subMenu">
            <a href="/mypage/reviews-write">리뷰</a>
          </li>
        </ul>
        </li>
        <li>
          <h2>마이 정보</h2>
          <ul>
            <li class="subMenu">
              <a href="/mypage/info-change">회원정보 수정</a>
            </li>
            <li class="subMenu">
              <a href="/mypage/info-remove">회원탈퇴</a>
            </li>
          </ul>
        </li>
        </ul>
      </div>
      <!-- //마이페이지 SUB 메뉴 -->
      <!-- //마이페이지 SUB -->
      <div class="mypage-conts">
