<link rel="stylesheet" href="/resources/write_review_modal.css">
<div class="popup-contents rw-form-wrap type-write" id="gdasLayerPop">
  <div class="pop-conts type40">
    <h1 class="ptit">리뷰 작성</h1>
    <a class="nofc" href="javascript:mypage.gdasList.moveGoodsDetailReview('A000000143870', '리뷰작성_리뷰작성상품');"
      data-attr="리뷰작성^리뷰작성상품^상품썸네일 또는 상품명클릭">
      <div class="item_info clrfix">
        <span class="thum">
          <img src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0014/A00000014387001ko.jpg?l=ko"
            alt="정샘물 스킨 세팅 톤업 선 쿠션(리필 포함)" onerror="common.errorImg(this);">
        </span>
        <dl class="txt_info">
          <dt>정샘물</dt>
          <dd>정샘물 스킨 세팅 톤업 선 쿠션(리필 포함)</dd>

          <dd class="option clrfix">
            <em class="line">옵션</em><span class="txt_op">스킨세팅톤업선쿠션</span>
          </dd>

        </dl>
      </div>
    </a>
    <ul class="write_step">
      <li class="rating">
        <span class="tit one"><span class="oyblind">필수입력</span>상품은 어떠셨나요?</span><!-- 리뷰고도화 : 변경 -->
        <div class="step_cont">
          <div class="review_star star0">
            <div class="star_inner clrfix">
              <ul>
                <li>
                  <button class="star">1점</button>
                </li>
                <li>
                  <button class="star">2점</button>
                </li>
                <li>
                  <button class="star">3점</button>
                </li>
                <li>
                  <button class="star">4점</button>
                </li>
                <li>
                  <button class="star">5점</button>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </li>
      <li>
      </li>
      <li>
        <div class="rw-photo-guide">
          <span class="rw-photo-guide__tit">리뷰 작성 TIP</span>

          <p>

            커버력이나 발색은 어떤지 전/후 변화를 보여주세요
            <br>메이크업이 완성된 셀피도 좋아요!
          </p>
        </div>
      </li>

      <li id="LitxtGdasCont">
        <span class="tit"><span class="oyblind">필수입력</span>솔직한 상품 리뷰를 남겨주세요 <button type="button"
            class="rw-btn-notice">자세히보기</button></span><!-- 리뷰 고도화 : 변경 -->
        <div class="step_cont"><!-- 리뷰 고도화 : 리뷰 작성 마크업 변경 -->
          <div class="rw-textarea-inner">

            <textarea id="txtGdasCont" title="리뷰작성"
              placeholder="꿀팁 가득, 상세한 리뷰를 작성해보세요! 반품, 환불 관련 내용은 고객센터로 별도 문의해주세요."></textarea>
            <div class="line"></div>

            <div class="bottom">

              <div class="count fix_txtNum" style="color:red"><!-- 25자 이하 입력 시 error class 추가 -->
                <b class="txt_en" style="color:red">0</b>
                <span>/</span> 1,000
              </div>
            </div>
          </div>


        </div>
      </li>

      <li class="photo photo-update">

        <div class="step_cont">
          <div class="photo-list-info">
            <strong>포토</strong>
          </div>
          <div class="rw-photo-list">
            <ul id="imgArea">
              <li class="imgArea1">
                <button class="btn_img_add btn-add" data-attr="리뷰작성^사진첨부^이미지클릭^1">추가</button>
                <form class="frmImg" enctype="multipart/form-data" method="POST">
                  <input type="file" id="tmpFile1" class="tempFile" name="upload" style="display: none;">
                </form>
              </li>
              <li class="imgArea2">

                <form class="frmImg" enctype="multipart/form-data" method="POST">
                  <input type="file" id="tmpFile2" class="tempFile" name="upload" style="display: none;">
                </form>
              </li>
              <li class="imgArea3">

                <form class="frmImg" enctype="multipart/form-data" method="POST">
                  <input type="file" id="tmpFile3" class="tempFile" name="upload" style="display: none;">
                </form>
              </li>
              <li class="imgArea4">

                <form class="frmImg" enctype="multipart/form-data" method="POST">
                  <input type="file" id="tmpFile4" class="tempFile" name="upload" style="display: none;">
                </form>
              </li>
              <li class="imgArea5">

                <form class="frmImg" enctype="multipart/form-data" method="POST">
                  <input type="file" id="tmpFile5" class="tempFile" name="upload" style="display: none;">
                </form>
              </li>
              <li id="imgAreaClone" class="" style="display: none;">
                <button class="btn_img_add btn-add" data-attr="리뷰작성^사진첨부^이미지클릭^">추가</button>
                <form class="frmImg" enctype="multipart/form-data" method="POST">
                  <input type="file" id="" class="tempFile" name="upload" style="display: none;">
                </form>
              </li>
            </ul>
            <p>
              사진은 10MB이하의 PNG, GIF, JPG 파일만 등록 가능합니다.
            </p>
          </div>
        </div>
      </li>
    </ul>
    <div class="btn_area">
      <button type="button" class="btn color1 gdasWriteLayer">닫기</button>
      <button type="button" class="btn color3" id="btnGdasReg" disabled="" data-attr="리뷰작성^리뷰등록^리뷰등록하기 버튼">리뷰 등록
        하기</button>
    
</div>