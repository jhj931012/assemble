<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<link rel="stylesheet" type="text/css"
   href="/resources/css/myPage/wish.css">

<script type="text/javascript" src="/resources/js/jquery.js"></script>


<%@ include file="../include/header.jsp"%>
<div class="wish_warp">
   <div class="listbox">
      <form name="t" method="get" action="wish">



<%--          <div class="tag-item">
            <div>
               <span><b>찜목록</b></span>
            </div>
            <c:forEach var="ws" items="${w_list}" varStatus="status">
               <div class="item" id="item">
                  <div class="web-img">
                     <img src="/resources/upload/${ws.webtoonVo.webtoon_thumbnail}"
                        class="thumbnail" style="width: 100%; height: 100%;">
                  </div>
                  <div class="web-title" id="web-title">
                     <span><b><c:out value="${ws.wish_title}" /></b></span>
                  </div>
               </div>
               <div class="wish_btn">
                  <input type="button" value="삭제"
                     onclick="location='wish_del?wish_title=${ws.wish_title}';" />
               </div>
            </c:forEach>
         </div> --%>


   <div>
      <div class="ContentSeriesSection">
         <div class="ContentTitleSection">
            <span class="Text-ContentTitleSection">찜목록</span>
         </div>
         <div class="ScrollableHorizontalList">
            <div class="List-ScrollableHorizontalList" draggable="true">
               <div><a href="#" class="css-0">
                     <div data-obj="#" class="PosterViewItem1">
                        <div class="PosterViewItem2">
                           <div class="PosterImage">
                              <div class="PosterImage2"></div>
                              <c:forEach var="ws" items="${w_list}" varStatus="status">
                                 <div class="item" id="item">
                                    <div class="web-img">
                                       <img
                                          src="/resources/upload/${ws.wish_thumbnail}"
                                          alt="썸네일" class="ThumbnailImage3">
                                    </div>
                                    <div class="PosterViewItem-PosterViewItem"></div>
                                 </div>
                                 <div class="Text-PosterViewItem">
                                    <div class="Text-PosterViewItem1">
                                       <c:out value="${ws.wish_title}" />
                                    </div>
                                    <div class="Metadata-PosterViewItem">
                                       <div class="BadgesWithSpace"></div>
                                       <div class="TextsWithSeparator-Metadata">
                                          <span class="Text">연재중</span> <img alt="메타데이터 구분점"
                                             src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTAiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxMCAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iNSIgY3k9IjgiIHI9IjEiIGZpbGw9ImJsYWNrIiBmaWxsLW9wYWNpdHk9IjAuMjUiLz4KPC9zdmc+Cg=="
                                             class="Separator"> <span class="Text"> 액션 </span>

                                       </div>
                                       <div class="wish_btn">
                                          <input type="button" value="삭제"
                                             onclick="location='wish_del?wish_title=${ws.wish_title}';" />
                                       </div>
                                    </div>
                                 </div>
                                 </c:forEach>
                           </div>
               </a></div>
            </div>
         </div>
      </div>
   </div>

      </form>
   </div>
</div>