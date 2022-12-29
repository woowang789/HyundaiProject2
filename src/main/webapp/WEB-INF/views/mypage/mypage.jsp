<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="./my_top.jsp"%>

  <div class="title-area mgT15">
    <h2 class="tit">좋아요</h2>
  </div>
  <div class="list-four">
    <!-- 상품 3개 list-three, 상품 4개 list-four -->
    <ul class="cate_prd_list" id="wishList" name="wishList">
      <!-- 상품 4개 일때 -->
      <li data-goods-no="A000000119871">
        <div class="prd_info">
          <a href="javascript:;" class="prd_thumb goodsList" data-ref-goodsno="A000000119871" data-ref-dispcatno="" data-ref-itemno="007">
            <span class="thumb_flag best">베스트</span>
            <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0011/A00000011987116ko.jpg?l=ko" alt="W.DRESSROOM 퍼퓸드 핸드크림 5종 택 1" onerror="common.errorImg(this);">
          </a>
          <div class="prd_name">
            <a href="javascript:;" class="goodsList" data-ref-goodsno="A000000119871" data-ref-dispcatno="" data-ref-itemno="007">
              <span class="tx_brand">더블유드레스룸</span>
              <p class="tx_name">W.DRESSROOM 퍼퓸드 핸드크림 5종 택 1</p>
            </a>
          </div>
          <button class="btn_zzim jeem on" data-ref-goodsno="A000000119871">
            <span>찜하기후</span>
          </button>
          <p class="prd_price">
            <span class="tx_org">
              <span class="tx_num">7,900</span>
              원 ~
            </span>
            <span class="tx_cur">
              <span class="tx_num">5,500</span>
              원 ~
            </span>
          </p>
          <p class="prd_flag">
            <span class="icon_flag sale">세일</span>
            <span class="icon_flag delivery">오늘드림</span>
          </p>
        </div>
      </li>
      <li data-goods-no="A000000176898">
        <div class="prd_info">
          <a href="javascript:;" class="prd_thumb goodsList" data-ref-goodsno="A000000176898" data-ref-dispcatno="" data-ref-itemno="001">
            <span class="thumb_flag best">베스트</span>
            <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017689802ko.jpg?l=ko" alt="닥터자르트 세라마이딘 하이드레이트 핸드크림 100ml 홀리데이 기획(100ml+50ml)" onerror="common.errorImg(this);">
          </a>
          <div class="prd_name">
            <a href="javascript:;" class="goodsList" data-ref-goodsno="A000000176898" data-ref-dispcatno="" data-ref-itemno="001">
              <span class="tx_brand">닥터자르트</span>
              <p class="tx_name">닥터자르트 세라마이딘 하이드레이트 핸드크림 100ml 홀리데이 기획(100ml+50ml)</p>
            </a>
          </div>
          <button class="btn_zzim jeem on" data-ref-goodsno="A000000176898">
            <span>찜하기후</span>
          </button>
          <p class="prd_price">
            <span class="tx_org">
              <span class="tx_num">19,000</span>
              원
            </span>
            <span class="tx_cur">
              <span class="tx_num">13,300</span>
              원
            </span>
          </p>
          <p class="prd_flag">
            <span class="icon_flag sale">세일</span>
            <span class="icon_flag coupon">쿠폰</span>
            <span class="icon_flag delivery">오늘드림</span>
          </p>
        </div>
      </li>
      <li data-goods-no="A000000156811">
        <div class="prd_info">
          <a href="javascript:;" class="prd_thumb goodsList" data-ref-goodsno="A000000156811" data-ref-dispcatno="" data-ref-itemno="002">
            <span class="thumb_flag best">베스트</span>
            <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0015/A00000015681117ko.jpg?l=ko" alt="[원우 PICK] 헉슬리 퍼퓸 핸드크림 3종 택 1" onerror="common.errorImg(this);">
          </a>
          <div class="prd_name">
            <a href="javascript:;" class="goodsList" data-ref-goodsno="A000000156811" data-ref-dispcatno="" data-ref-itemno="002">
              <span class="tx_brand">헉슬리</span>
              <p class="tx_name">[원우 PICK] 헉슬리 퍼퓸 핸드크림 3종 택 1</p>
            </a>
          </div>
          <button class="btn_zzim jeem on" data-ref-goodsno="A000000156811">
            <span>찜하기후</span>
          </button>
          <p class="prd_price">
            <span class="tx_org">
              <span class="tx_num">15,000</span>
              원
            </span>
            <span class="tx_cur">
              <span class="tx_num">12,000</span>
              원
            </span>
          </p>
          <p class="prd_flag">
            <span class="icon_flag sale">세일</span>
            <span class="icon_flag delivery">오늘드림</span>
          </p>
        </div>
      </li>
    </ul>
  </div>
</div>
</div>
</div>
<%@ include file="../includes/footer.jsp"%>