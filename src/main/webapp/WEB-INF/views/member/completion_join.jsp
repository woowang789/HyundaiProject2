<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../includes/header.jsp"%>
<link rel="stylesheet" href="/resources/css/completion_join.css">
<div id="Container" class="bgf6">
	<div id="Contents">
		<div class="loginArea new login">
			<div class="loginTit">
				<img src="/resources/img/completion_img.png"
					style="width: 100px; height: 100px;">
				<h2>회원가입이 완료 되었습니다.</h2>
				<p>올리브영의 회원이 되신것을 환영합니다.</p>
			</div>
			<div style="margin-top: 30px;">
				<div class="box">
					<h3>올리브영의 다양한 서비스와 혜택을 누리세요.</h3>
					<div class="buttonBox">
						<div class="btnArea">
							<a href="/login">
								<button type="button" class="wt">로그인 페이지</button>
							</a> <a href="/home" style="margin-left: 10px;">
								<button type="button" class="btnGreen">메인으로</button>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../includes/footer.jsp"%>