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
					<h4 class="float_left">아이디 찾기</h4>
				</div>
				<form action="/search-id" method="post">
					<div class="tblwrap">
						<table class="tbl_wtype1">
							<caption>아이디 찾기</caption>
							<colgroup>
								<col style="width: 160px">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><label for="pw">이름</label></th>
									<td><input type="password" id="pw" name="user_name"
										style="width: 150px" placeholder="이름을 입력해주세요.">
								</tr>
								<tr>
									<th scope="row"><label for="pw2">생년월일</label></th>
									<td><input type="password" id="pwc" name="user_birth" 
										style="width: 310px" placeholder="법정생년월일 6자리를 입력해주세요.">
								</tr>
								<tr>
									<th scope="row"><label for="name">휴대폰 번호</label></th>
									<td><input type="text" style="width: 310px" name="user_tel" 
										id="name" placeholder="휴대폰 번호를 입력해 주세요(ex: 010-0000-0000)"></td>
								</tr>
							</tbody>
						</table>
					</div>
				</form>


				<div class="btnwrap">
					<input type="button" value="취소" class="btn wt" id="cancleBtn" href="/login">
					<input type="button" value="아이디 찾기" class="btn gray mr0" id="joinBtn" href="/search-id">
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../includes/footer.jsp"%>