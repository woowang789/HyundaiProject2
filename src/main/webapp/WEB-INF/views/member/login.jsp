<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../includes/header.jsp"%>
	<div id="Container" class="bgf6">
		<div id="Contents">
			<div class="loginArea new login">
				<div class="loginTit">
					<h2>로그인</h2>
					<p>올리브영의 다양한 서비스와 혜택을 누리세요.</p>
				</div>
				<form id="formLogin" name="formLogin">
					<input type="hidden" id="bSId" name="bSId" value=""> <input
						type="hidden" id="captchaYn" name="captchaYn" value="N">

					<div class="loginForm">
						<ul>
							<li><input type="text" id="loginId"
								placeholder="CJ ONE 통합회원 아이디 입력" name="loginId" width="100"
								value="" autocomplete="off" title="아이디를 입력해 주세요."></li>
							<li><input type="password" value="" id="password"
								placeholder="비밀번호 (8-12자 영문자+숫자+특수문자)" name="password"
								width="100" onkeyup="javascript:login.tryLogin(event);"
								autocomplete="off" title="비밀번호를 입력해 주세요."></li>
						</ul>

						<div class="linkChk">
							<div class="save" style="margin-bottom:5px;">
								<input type="checkbox" id="chk01" name="saveLoginIdYn"
									title="아이디 저장 선택" value="Y" checked="checked"><label
									for="chk01">아이디 저장</label> <input type="hidden"
									name="loginFormYn" value="Y">
							</div>
							<div class="link">
								<a href="javascript:;" onclick="javascirpt:login.findId();">아이디
									찾기</a> <a href="javascript:;"
									onclick="javascirpt:login.findPasswd();">비밀번호 찾기</a>
							</div>
						</div>
						<div class="btnArea">
							<button type="button" class="btnGreen"
								onclick="javascript:login.doLogin();" data-attr="로그인^로그인^로그인">로그인</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
<%@ include file="../includes/footer.jsp"%>