<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../includes/header.jsp"%>
<div id="Container" class="bgf6">
	<div id="Contents">
		<div class="loginArea new login">
			<div class="loginTit">
				<h2>${siteTitle}</h2>
				<p style="margin-bottom: 20px;">${siteType}</p>
			</div>

			<div class="searchIdBox" style="text-align: center;  background-color: rgb(245, 244, 244); width: 700px; margin:0 auto; padding: 70px 50px;">

				<p class="idText" style="font-size:25px; margin-bottom: 20px;">
					<c:if test="${id == null}">
						${msg}
					</c:if>
					<c:if test="${id != null}">
						<%= request.getAttribute("name") %>님의 아이디는 <strong style=" color: #fe9e54;"><%= request.getAttribute("id") %></strong>입니다.
					</c:if>
				</p>

				<p>바로가기 버튼을 클릭하면 로그인 페이지로 이동합니다.</p>
				<div class="btnArea" style="width: 200px; margin: 0 auto; margin-top: 50px; display: flex; ">
					<button type="button" class="btnGreen" style="margin-right:20px; background-color:#888;"><a onclick="goBack();" style="color:white; ">뒤로가기</a></button>
					<button type="button" class="btnGreen" ><a href="/login" style="color:white">바로가기</a></button>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
function goBack(){
	window.history.back();
}
</script>
<%@ include file="../includes/footer.jsp"%>