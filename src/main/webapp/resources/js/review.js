const writeBase = `
<div class="popup-contents" id="pop_cont"
	style="display: block; top: 500px; width: 650px; margin: -258px 0px 0px -325px; z-index: 999; left: 50%;">
	<div class="popup-contents rw-form-wrap type-write" id="gdasLayerPop">
		<div class="pop-conts type40">

			<h1 class="ptit">리뷰 작성</h1>
			<a class="nofc"
				href="{prodID}">
				<div class="item_info clrfix">
					<span class="thum"> <img
						src="{prodThumb}">
					</span>
					<dl class="txt_info">
						<dt>{brandName}</dt>
						<dd>{prodName}</dd>

						<dd class="option clrfix">
							<em class="line">옵션</em><span class="txt_op">{optionName}</span>
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
				<!-- 리뷰 고도화 : 변경 -->
					<div class="step_cont">
						<!-- 리뷰 고도화 : 리뷰 작성 마크업 변경 -->
						<div class="rw-textarea-inner">
							<textarea id="txtGdasCont" title="리뷰작성"
								placeholder="꿀팁 가득, 상세한 리뷰를 작성해보세요!
							도움수가 올라가면 포인트도 받고,
							탑리뷰어가 될 확률도 높아져요!
							반품, 환불 관련 내용은 고객센터로 별도 문의해주세요.">
							
							</textarea>
							<div class="line"></div>

							<div class="bottom">

								<!--  가이드문구 영역 -->
								<div class="count fix_txtNum" style="color: red">
									<!-- 25자 이하 입력 시 error class 추가 -->
									<b class="txt_en" style="color: red">0</b> <span>/</span> 1,000
								</div>
							</div>
						</div>
					</div>
				</li>

				<li class="photo photo-update">

					<div class="step_cont">
						<!-- 리뷰 고도화 : 추가 -->

						<div class="photo-list-info">
							<strong>포토</strong>
						</div>
						<div class="rw-photo-list">
							<ul id="imgArea">
								<li class="imgArea1">
									<button class="btn_img_add btn-add">추가</button>
									<form class="frmImg" enctype="multipart/form-data"
										method="POST">
										<input type="file" id="tmpFile1" class="tempFile"
											name="upload" style="display: none;">
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
		

	</div>
</div>
`;
