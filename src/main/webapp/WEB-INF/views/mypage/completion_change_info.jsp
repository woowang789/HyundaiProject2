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
				<img src="/resources/img/verified-user.png"
					style="width: 150px; height: 150px;">
				<h2>회원정보 수정</h2>

				<p>회원님의 소중한 정보를 안전하게 관리하세요.</p>
			</div>
			<div style="margin-top: 30px;">
				<div class="box">
					<h3>회원님의 정보가 수정되었습니다.</h3>
					<div class="buttonBox">
						<div class="btnArea">
							<a href="/home" style="margin-left: 10px;">
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