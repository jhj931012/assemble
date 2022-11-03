<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<link rel="stylesheet" type="text/css"
	href="/resources/css/tagpage/tag.css">

<%@ include file="../include/header.jsp"%>

<script
	 src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/537cf02f0b.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet"
	href="//http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/index/main.css">
<script type="text/javascript"
	src="/resources/js/index/jquery.1.12.4.js"></script>
<script type="text/javascript"
	src="/resources/plugins/bxslider/js/jquery.bxslider.js"></script>
<link rel="stylesheet" type="text/css"
	href="/resources/plugins/web-fonts-with-css/css/all.css" />

<script type="text/javascript">

$(document).ready(function() {
	$('.slider-wrap').bxSlider({
		controls : false,
		pager : false,
		auto : true,
		minSlides:1,
		maxSlides:3,
		moveSlides:1
	});
});

function openLayer(i) {
	document.getElementById(i).style.display = "block";
}

function closeLayer(i) {
	document.getElementById(i).style.display = "none";
}


</script>

<div id="subheader">
	<div id="menu">
		<ul class="menu">
			<br />
			<li class="current"><a href="#">HOME</a></li>
			<li><a href="#">네이버</a></li>
			<li><a href="#">카카오</a></li>

		</ul>
	</div>


	<div style="clear: both;"></div>

	<div id="submenu">
		<ul class="submenu">
			<li class="current"><a href="#">all</a></li>
			<li><a href="#">미완결</a></li>
			<li><a href="#">완결</a></li>

		</ul>
	</div>

	<div style="clear: both;"></div>

	<div id="submenutab">
		<ul class="submenutab">
			<li class="current"><a href="#">all</a></li>
			<li><a href="#">판타지</a></li>
			<li><a href="#">드라마</a></li>
			<li><a href="#">로맨스</a></li>
			<li><a href="#">액션</a></li>
			<li><a href="#">무협</a></li>
			<li><a href="#">개그</a></li>
			<li><a href="#">스릴러</a></li>
			<li><a href="#">일상</a></li>
		</ul>
	</div>
	<div style="clear: both;"></div>

</div>



<div class="listbox">

	<form name="t" method="get" action="tagpage_tag">

		<c:if test="${!empty wblist }">
			<div class="tag-item">
				<c:forEach var="wblist" items="${wblist}">
					<a onclick="openLayer(<c:out value="${wblist.webtoon_no}"/>)"
						value="<c:out value="${wblist.webtoon_no}"/>">
						<div class="item" id="item">
							<div class="web-img">
								<img src="/resources/upload/${wblist.webtoon_thumbnail}"
									class="thumbnail" style="width: 100%; height: 100%;">
							</div>
							<div class="web-title" id="web-title">
								<span><b><c:out value="${wblist.webtoon_title}" /></b></span>
							</div>
						</div>
					</a>
				</c:forEach>
			</div>
		</c:if>

		<div>
			<%-- 검색 전 페이징 --%>
			<c:if test="${(empty find_field)&&(empty find_name)}">
				<c:if test="${page<=1}">
            [이전]&nbsp;
         </c:if>
				<c:if test="${page>1}">
					<a href="tagpage_tag?page=${page-1}">[이전]</a>&nbsp;
         </c:if>

				<%-- 쪽번호 출력부분 --%>
				<c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
					<c:if test="${a==page}"><${a}></c:if>

					<c:if test="${a!=page}">
						<a href="tagpage_tag?page=${a}">[${a}]</a>&nbsp;
            </c:if>
				</c:forEach>

				<c:if test="${page>=maxpage}">[다음]</c:if>
				<c:if test="${page<maxpage}">
					<a href="tagpage_tag?page=${page+1}">[다음]</a>
				</c:if>
			</c:if>

			<%-- 검색 후 페이징 --%>
			<c:if test="${(!empty find_field) || (!empty find_name)}">
				<c:if test="${page <=1}">
            [이전]&nbsp;
         </c:if>
				<c:if test="${page >1}">
					<a
						href="tagpage_tag?page=${page-1}&find_field=${find_field}&find_name=${find_name}">[이전]</a>&nbsp;
         </c:if>


				<%-- 쪽번호 출력부분 --%>
				<c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
					<c:if test="${a == page}"><${a}></c:if>

					<c:if test="${a != page}">
						<a
							href="tagpage_tag?page=${a}&find_field=${find_field}&find_name=${find_name}">[${a}]</a>&nbsp;
         </c:if>
				</c:forEach>

				<c:if test="${page>=maxpage}">[다음]</c:if>
				<c:if test="${page<maxpage}">
					<a
						href="tagpage_tag?page=${page+1}&find_field=${find_field}&find_name=${find_name}">[다음]</a>
				</c:if>
			</c:if>

		</div>
		<%-- 검색폼 --%>
		<div>
			<select name="find_field">
				<option value="webtoon_title"
					<c:if test="${find_field=='webtoon_title'}">${'selected'}</c:if>>제목
				</option>
				<option value="webtoon_writer"
					<c:if test="${find_field=='webtoon_writer'}">${'selected'}</c:if>>작가
				</option>
			</select> <input name="find_name" id="find_name" size="14"
				value="${find_name}" /> <input type="submit" value="검색" />
		</div>

	</form>
</div>

<c:forEach var="pop" items="${wblist}">
	<div class="popup-layer" id="<c:out value="${pop.webtoon_no}"/>">
		<div class="popup-box">
			<div class="content-part" id="content-part">
				<div class="pop-text">
					<div class="pop-title" id="pop-title">
						<h3>${pop.webtoon_title}</h3>
						<form action="/wish_ok" method="POST"
							onclick="this.submit();">
							<input type="hidden" name="title" value="${pop.webtoon_title}" />♥
						</form>
					</div>
					<div class="pop-author">
						<b> 플랫폼 : &nbsp;${pop.webtoon_platform}<br>
							&nbsp;작가&nbsp;&nbsp;: &nbsp;${pop.webtoon_writer}<br>
							&nbsp;장르&nbsp;&nbsp;:&nbsp; <c:if
								test="${empty pop.webtoon_tag2}">
                        ${pop.webtoon_tag1}
                     	</c:if> <c:if test="${!empty pop.webtoon_tag2}">
                     	${pop.webtoon_tag1} , ${pop.webtoon_tag2}
                     	</c:if></b>
					</div>
					<div class="pop-cont">${pop.webtoon_cont}</div>
				</div>
				<div class="popup-btn">
					<a id="close-btn"
						onclick="closeLayer(<c:out value="${pop.webtoon_no}"/>)"><i
						class="fa-solid fa-rectangle-xmark"></i></a>
				</div>
				<div class="total">
					<div class="slider-wrap">

						<div class="pop-img">
							<img src="resources/upload/${pop.webtoon_image1 }"
								style="height: 300px; width: 330px;">
						</div>


						<div class="pop-img">
							<img src="resources/upload/${pop.webtoon_image2 }"
								style="height: 300px; width: 330px;">
						</div>

						<div class="pop-img">
							<img src="resources/upload/${pop.webtoon_image3 }"
								style="height: 300px; width: 330px;">
						</div>
					</div>
				</div>
			</div>
			<div class="review-part">
				<form name="review-write" method="post" action="/review_write">

					<textarea>
					</textarea>

					<select name="rating">
						<option value="1">★☆☆☆☆</option>
						<option value="2">★★☆☆☆</option>
						<option value="3">★★★☆☆</option>
						<option value="4">★★★★☆</option>
						<option value="5">★★★★★</option>
					</select> <input type="submit" value="리뷰쓰기">
				</form>
				<h3 class="review-title">리뷰</h3>
				<c:forEach var="rev" items="${revlist}">
					<div class="review-wrap">
						<div id="review-list">
							<div class="review">
								<div class="review-user-part">
									<div id="rating">
										<i class="fa-regular fa-star"></i>&nbsp;${rev.review_rating}
									</div>
									<div id="user">
										<i class="fa-solid fa-user-secret"></i>&nbsp;jhj931012
									</div>
								</div>
								<div id="review-cont">${review_cont}</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>

</c:forEach>


