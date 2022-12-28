<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="./my_top.jsp"%>
  <div class="mypage-conts">
    <div class="title-area linezero">
      <h2 class="tit">리뷰</h2>
    </div>
    <ul class="comm1sTabs mgzero">
      <li><a href="/mypage/reviews">리뷰 작성</a></li>
      <li class="on" title="선택됨"><a href="javascript:void(0);" data-attr="리뷰^리뷰_SortingTab^나의 리뷰">나의 리뷰</a></li>
    </ul>
    <ul class="dot_list">
      <li>리뷰 정책 위반으로 블라인드된 리뷰는 상품상세페이지 리뷰목록에 노출되지 않습니다.<br>
        블라인드 리뷰 운영정책을 확인해주세요.</li>
    </ul>
    <div class="con_txt">
      <h3 class="tit">누적 리뷰 건수<span>2</span>건</h3>
    </div>
    <table class="board-list-2s mgT20 new board-list-2s_myreview">
      <caption>상품, 리뷰로 이루어진 리뷰 목록 표</caption>
      <colgroup>
        <col style="width:359px;">
        <col style="width:310px;">
        <col style="width:auto">
      </colgroup>
      <thead>
        <tr>
          <th scope="col">상품</th>
          <th scope="col" colspan="2">리뷰</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td class="subject">
            <div class="area">
              <div class="area">
                <a class="thum" href="javascript:mypage.gdasList.moveGoodsDetailReview('A000000176104','리뷰_리뷰상품');"
                  data-attr="리뷰^리뷰상품^상품클릭">
                  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0017/A00000017610403ko.jpg?l=ko"
                    alt="[2022어워즈]아누아 어성초 77 토너 어워즈 한정 기획 (500ml+250ml)" onerror="common.errorImg(this);">
                </a>
                <div class="textus">
                  <dl class="data review-data">
                    <dt>구매일자</dt>
                    <dd>2022.12.14
                      <span>매장</span>
                    </dd>
                  </dl>
                  <a class="" href="javascript:mypage.gdasList.moveGoodsDetailReview('A000000176104','리뷰_리뷰상품');"
                    data-attr="리뷰^리뷰상품^상품클릭">
                    <span class="tit">아누아</span>
                    <span class="txt oneline">[2022어워즈]아누아 어성초 77 토너 어워즈 한정 기획 (500ml+250ml)</span>
                  </a>
                </div>
              </div>
            </div>
          </td>
          <td class="subject">
            <div class="area">
              <div class="textus" style="width:90%;">
                <dl class="data review-data">
                  <dt>작성일자</dt>
                  <dd>2022.12.26</dd>
                </dl>
                <div class="rating">
                  <span class="txt">
                  </span>
                  <span class="point pt5"></span>
                </div>
                <div class="review-flag-wrap">
                </div>
                <span class="link " data-gdas-seq="16654086" data-ord-no="12022121413110306100200056"
                  data-goods-no="A000000176104" data-gdas-tp-cd="20" data-gdas-sct-cd="60"></span>
                  아주 좋네요~~~ 촉촉하니 ㅇ좋습니당~!!!!ㅇㅇ111
                </span>
              </div>
            </div>
          </td>
          <td>
            <button type="button" class="btn-review--small">리뷰수정</button><br>
            <br>
          </td>
        </tr>
        <tr>
          <td class="subject">
            <div class="area">
              <div class="area">
                <a class="thum" href="javascript:mypage.gdasList.moveGoodsDetailReview('A000000129772','리뷰_리뷰상품');"
                  data-attr="리뷰^리뷰상품^상품클릭">
                  <img src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0012/A00000012977209ko.jpg?l=ko"
                    alt="피지오겔 레드수딩 AI 진정보습 로션 100ml" onerror="common.errorImg(this);">
                </a>
                <div class="textus">
                  <dl class="data review-data">
                    <dt>구매일자</dt>
                    <dd>2022.12.14
                      <span>매장</span>
                    </dd>
                  </dl>
                  <a class="" href="javascript:mypage.gdasList.moveGoodsDetailReview('A000000129772','리뷰_리뷰상품');"
                    data-attr="리뷰^리뷰상품^상품클릭">
                    <span class="tit">피지오겔</span>
                    <span class="txt oneline">피지오겔 레드수딩 AI 진정보습 로션 100ml</span>
                  </a>
                </div>
              </div>
            </div>
          </td>
          <td class="subject">
            <div class="area">
              <div class="textus" style="width:90%;">
                <dl class="data review-data">
                  <dt>작성일자</dt>
                  <dd>2022.12.26</dd>
                </dl>
                <div class="rating">
                  <span class="txt">
                  </span>
                  <span class="point pt5"></span>
                </div>
                <div class="review-flag-wrap">
                  <span class="review-flag">재구매</span>
                </div>
                <span class="link " data-gdas-seq="16649950" data-ord-no="12022121413110306100200056"
                  data-goods-no="A000000129772" data-gdas-tp-cd="20" data-gdas-sct-cd="60">
                  아주 좋아요!!!!!!! 여드름이 안나고 좋네용ㅇ굿굿
                </span>
              </div>
            </div>
          </td>
          <td>
            <button type="button" class="btn-review--small">리뷰수정</button><br>
            <br>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</div>
</div>
</div>
</div>
<%@ include file="../includes/footer.jsp"%>
