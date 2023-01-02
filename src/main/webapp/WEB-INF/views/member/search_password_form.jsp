<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../includes/header.jsp"%>
<div id="Container" class="bgf6">
	<div id="Contents">
		<div class="loginArea new login">
			<div class="box_type_1">
				<div class="title_wrap clearfix">
					<h4 class="float_left">비밀번호 찾기</h4>
				</div>
				<div class="tblwrap">
					<table class="tbl_wtype1">
						<caption>비밀번호 찾기</caption>
						<colgroup>
							<col style="width: 160px">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="pw">아이디</label></th>
								<td><input type="text" id="pw" name="passwd"
									style="width: 160px" placeholder="아이디를 입력해주세요."> <span
									class="guide_comment lh_30" id="pwMsg"></span> <span
									class="guide_comment lh_30" id="pwcapsLockMsg"></span></td>
							</tr>
							<tr>
								<th scope="row"><label for="pw2">생년월일</label></th>
								<td><input type="text" id="pwc" style="width: 310px"
									placeholder="법정생년월일 6자리를 입력해주세요."> <span
									class="guide_comment" id="pwcMsg"></span> <span
									class="guide_comment" id="pwcCapsLockMsg"></span></td>
							</tr>
							<tr>
								<th scope="row"><label for="name">휴대폰 번호</label></th>
								<td><input type="text" style="width: 310px" id="name"
									placeholder="휴대폰 번호를 입력해 주세요(ex: 010-0000-0000)"></td>
							</tr>
						</tbody>
					</table>
				</div>
				
				<div class="btnwrap">
					<input type="button" value="취소" class="btn wt" id="cancleBtn" href="/home">
					<input type="button" value="비밀번호 재설정" class="btn gray mr0" id="joinBtn" href="/login" >
				</div>
			</div>
		</div>
	</div>
</div>s
<%@ include file="../includes/footer.jsp"%>