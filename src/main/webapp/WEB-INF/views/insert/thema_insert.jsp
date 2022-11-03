<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@ include file="../include/header.jsp"%>
<div style="width: 100%; height: 500px;">
	<form method="post" action="/thema_insert_ok">
		웹툰 : <select name="thema_title">
			<option value="">웹툰선택</option>
			<c:forEach var="thema" items="${thlist}">
				<option value="${thema.webtoon_title}"><c:out value="${thema.webtoon_title}"/></option>
			</c:forEach>
		</select>
		<br>
		개발자 한줄평 : <textarea name="thema_cont"></textarea>
		<br>
		<input type="submit" value="전송">
	</form>
</div>
<%@ include file="../include/footer.jsp"%>

