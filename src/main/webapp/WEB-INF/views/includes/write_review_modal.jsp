<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="popup-contents" id="pop_cont"
	style="display: none; top: 500px; width: 650px; margin: -258px 0px 0px -325px; z-index: 999; left: 50%;">
	<div class="popup-contents rw-form-wrap type-write" id="gdasLayerPop">
		<div class="pop-conts type40">

			<h1 class="ptit">리뷰 작성</h1>
			<a class="nofc"
				href="javascript:mypage.gdasList.moveGoodsDetailReview('A000000143870', '리뷰작성_리뷰작성상품');"
				data-attr="리뷰작성^리뷰작성상품^상품썸네일 또는 상품명클릭">
				<div class="item_info clrfix">
					<span class="thum"> <img
						src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0014/A00000014387001ko.jpg?l=ko"
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
				<li class="rating"><span class="tit one"><span
						class="oyblind">필수입력</span>상품은 어떠셨나요?</span>
				<!-- 리뷰고도화 : 변경 -->
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
					</div></li>



				<li></li>


				<li id="LitxtGdasCont"><span class="tit"><span
						class="oyblind">필수입력</span>솔직한 상품 리뷰를 남겨주세요
						<button type="button" class="rw-btn-notice">자세히보기</button></span>
				<!-- 리뷰 고도화 : 변경 -->
					<div class="step_cont">
						<!-- 리뷰 고도화 : 리뷰 작성 마크업 변경 -->
						<div class="rw-textarea-inner">
							<textarea id="txtGdasCont" title="리뷰작성"
								placeholder="꿀팁 가득, 상세한 리뷰를 작성해보세요!
도움수가 올라가면 포인트도 받고,
탑리뷰어가 될 확률도 높아져요!
반품, 환불 관련 내용은 고객센터로 별도 문의해주세요."></textarea>
							<div class="line"></div>

							<div class="bottom">

								<div class="rw-text-flip">

									<p class="point">
										<span>다른 메이크업베이스 제품과 함께 사용하셨나요? 어느 제품과의 조합이 좋으셨나요?</span>
									</p>
									<!--  가이드문구 영역 -->

									<p class="point">
										<span>많은 브랜드 중에서 이 상품을 구매하신 이유가 무엇인가요?</span>
									</p>
									<!--  가이드문구 영역 -->

									<p class="point is-active">
										<span>주로 언제 사용하셨나요? 메이크업 첫 단계에서 사용하셨나요 혹은 수정화장 시
											사용하셨나요?</span>
									</p>
									<!--  가이드문구 영역 -->

								</div>

								<!--  가이드문구 영역 -->
								<div class="count fix_txtNum" style="color: red">
									<!-- 25자 이하 입력 시 error class 추가 -->
									<b class="txt_en" style="color: red">0</b> <span>/</span> 1,000
								</div>
							</div>
						</div>
						<!-- 과거데이터 헤시태그가 없기 때문에 값이 없는경우 영역 표시하지 않음 -->


					</div></li>

				<li class="photo photo-update">
					<!-- 리뷰 고도화 : class 추가 -->

					<div class="step_cont">
						<!-- 리뷰 고도화 : 추가 -->

						<div class="photo-list-info">
							<strong>포토</strong>
						</div>
						<div class="rw-photo-list">
							<ul id="imgArea">
								<li class="imgArea1">
									<button class="btn_img_add btn-add"
										data-attr="리뷰작성^사진첨부^이미지클릭^1">추가</button>
									<form class="frmImg" enctype="multipart/form-data"
										method="POST">
										<input type="file" id="tmpFile1" class="tempFile"
											name="upload" style="display: none;">
									</form>
								</li>
								<li class="imgArea2">
									<button class="btn_img_add btn-add"
										data-attr="리뷰작성^사진첨부^이미지클릭^2">추가</button>
									<form class="frmImg" enctype="multipart/form-data"
										method="POST">
										<input type="file" id="tmpFile2" class="tempFile"
											name="upload" style="display: none;">
									</form>
								</li>
								<li class="imgArea3">
									<button class="btn_img_add btn-add"
										data-attr="리뷰작성^사진첨부^이미지클릭^3">추가</button>
									<form class="frmImg" enctype="multipart/form-data"
										method="POST">
										<input type="file" id="tmpFile3" class="tempFile"
											name="upload" style="display: none;">
									</form>
								</li>
								<li class="imgArea4">
									<button class="btn_img_add btn-add"
										data-attr="리뷰작성^사진첨부^이미지클릭^4">추가</button>
									<form class="frmImg" enctype="multipart/form-data"
										method="POST">
										<input type="file" id="tmpFile4" class="tempFile"
											name="upload" style="display: none;">
									</form>
								</li>
								<li class="imgArea5">
									<button class="btn_img_add btn-add"
										data-attr="리뷰작성^사진첨부^이미지클릭^5">추가</button>
									<form class="frmImg" enctype="multipart/form-data"
										method="POST">
										<input type="file" id="tmpFile5" class="tempFile"
											name="upload" style="display: none;">
									</form>
								</li>
								<li id="imgAreaClone" class="" style="display: none;">
									<button class="btn_img_add btn-add"
										data-attr="리뷰작성^사진첨부^이미지클릭^">추가</button>
									<form class="frmImg" enctype="multipart/form-data"
										method="POST">
										<input type="file" id="" class="tempFile" name="upload"
											style="display: none;">
									</form>
								</li>
							</ul>
							<p>사진은 10MB이하의 PNG, GIF, JPG 파일만 등록 가능합니다.</p>
						</div>
					</div>
				</li>

			</ul>
			<div class="btn_area">





				<button type="button" class="btn color1 gdasWriteLayer">닫기</button>



				<button type="button" class="btn color3" id="btnGdasReg" disabled=""
					data-attr="리뷰작성^리뷰등록^리뷰등록하기 버튼">리뷰 등록 하기</button>
			</div>

			<button type="button" class="ButtonClose gdasWriteLayer">팝업창
				닫기</button>

		</div>

		<!-- 상품평 작성 모드 일 때만 노출 -->


		<div class="loading_pc" id="loading_pc">
			<span class="icon"><img
				src="https://static.oliveyoung.co.kr/pc-static-root/image//comm/pc_loading.gif"
				alt="로딩중"></span>
		</div>



		<!-- 리뷰 고도화 1차 : pc 공통 팝업 js 적용 필요 -->
		<div class="popup-contents rw-popup-blind" id="rwNoticePop"
			style="width: 534px; margin-left: -267px; position: fixed; left: 50%; top: 50%; margin-top: -223px; display: none;">
			<!-- 리뷰고도화 : rw-form-wrap class 추가 및 팝업 사이즈 style 변경, 작성일 시 type-write class 추가 포함-->

			<div class="pop-conts type40" style="padding-bottom: 40px;">
				<h1 class="ptit">블라인드 리뷰 운영정책</h1>
				<button type="button" class="ButtonClose"
					onclick="javascript:popLayerClose('rwNoticePop');">팝업창 닫기</button>
				<div class="rw-blind-txt">
					<div class="inner">
						<span>아래 기준에 해당되거나, 신고 받은 리뷰는 별도의 안내없이 블라인드 처리될 수 있습니다.</span>
					</div>
					<div class="inner">
						<p>위법성 항목</p>
						<ul>
							<li>특정인의 명예를 훼손하거나 저작권을 침해한 경우</li>
							<li>개인정보를 포함한 경우 (연락처, 이메일, SNS, 주소 등)</li>
							<li>상업적 목적이 담긴 경우</li>
							<li>식품 등의 표시광고 법률에 따라, 제한되는 내용이 포함된 경우</li>
						</ul>
					</div>
					<div class="inner">
						<p>상품 무관 정보</p>
						<ul>
							<li>사용하지 않거나, 구매 상품과 다른 상품에 대한 리뷰<br>* 타제품을 객관적 근거없이
								비방하거나 우수하다는 표현 포함
							</li>
							<li>배송/매장 서비스에 대한 내용으로만 이루어진 리뷰</li>
							<li>단순 문의사항이나 상품과 상관없는 텍스트, 사진첨부</li>
						</ul>
					</div>
					<div class="inner">
						<p>기타</p>
						<ul>
							<li>다른 상품 리뷰에 동일한 내용을 반복 기재한 경우</li>
							<li>비정상적인 구매패턴에 따른 리뷰 작성을 한 경우</li>
							<li>다른 사람에게 위화감을 주는 경우</li>
						</ul>
					</div>
				</div>

				<button type="button" class="btn-close"
					onclick="javascript:popLayerClose('rwNoticePop');">닫기</button>

			</div>
		</div>

		<!-- 리뷰 고도화 popup : 일반 리뷰 등록 완료 -->
		<div id="rwCompleted" class="rw-alert-popup" style="display: none">
			<div class="rw-alert-popup-content">
				<strong>리뷰가 등록 됐어요!</strong>
				<p>
					소중한 리뷰 작성 감사합니다.<br> 포인트는 4일 후에 지급됩니다.
				</p>

				<div class="rw-alert-btn">
					<button type="button" data-modyn="N"
						class="btn-type1 reviewComplete">완료</button>
				</div>
			</div>
		</div>
		<!-- // popup : 일반 리뷰  등록 완료 -->

		<!-- 리뷰 고도화 popup : 사진 리뷰 등록 완료 -->
		<div id="rwCompleted3" class="rw-alert-popup" style="display: none">
			<div class="rw-alert-popup-content">
				<strong>사진 리뷰가 등록 됐어요!</strong>

				<p>
					소중한 리뷰 작성 감사합니다.<br> 포인트는 4일 후에 지급됩니다.
				</p>
				<div class="rw-alert-btn">
					<button type="button" data-modyn="N"
						class="btn-type1 reviewComplete">완료</button>
				</div>
			</div>
		</div>
		<!-- // popup : 사진 리뷰  등록 완료 -->
		<div id="rwModify" class="rw-alert-popup" style="display: none">
			<div class="rw-alert-popup-content">
				<strong>리뷰 수정이 완료 됐어요!</strong>
				<p></p>

				<div class="rw-alert-btn">
					<button type="button" data-modyn="Y"
						class="btn-type1 reviewComplete">완료</button>
				</div>
			</div>
		</div>
		<!-- // popup : 포토 리뷰  등록 완료 -->

		<!-- 리뷰 고도화 popup : 리뷰 등록 완료 -->
		<div id="rwCompleted2" class="rw-alert-popup" style="display: none">
			<div class="rw-alert-popup-content">
				<strong>리뷰가 등록 됐어요!</strong>

				<p>
					사진을 등록해 주시면<br> 더 많은 고객들에게 도움이 될 수 있어요~<br> ('도움이 돼요' 1개당
					5P 추가 지급)
				</p>
				<div class="rw-alert-btn flex">
					<button type="button" class="btn-type1 photoReg">사진 등록하기</button>
					<button type="button" data-modyn="N"
						class="btn-type3 reviewComplete">완료</button>
				</div>
			</div>
		</div>

	</div>
</div>