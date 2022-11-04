<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<link rel="stylesheet" type="text/css"
   href="/resources/css/myPage/wish.css">

<script type="text/javascript" src="/resources/js/jquery.js"></script>


<%@ include file="../include/header.jsp"%>

<div class="listbox">

<h1></h1><h2>님의 찜목록</h2>


   <form name="t" method="get" action="wish">



      <div class="tag-item">
         <c:forEach var="ws" items="${w_list}">
            <div class="item" id="item">
               <div class="web-img">
                  <img src="/resources/upload/<c:out value="${ws.wish_title}" />.jpg"
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
      </div>

   </form>
</div>