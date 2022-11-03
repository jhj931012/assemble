<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<link rel="stylesheet" type="text/css"
   href="/resources/css/myPage/wish.css">

<script type="text/javascript" src="/resources/js/jquery.js"></script>


<%@ include file="../include/header.jsp"%>

<div class="listbox">
   <form name="t" method="get" action="wish">

      
  
      <div class="tag-item">
         <c:forEach var="ws" items="${w_list}">
               <div class="item" id="item">
                  <div class="web-img">
                     <img src="/resources/upload/${ws.webtoon_thumbnail}"
                        class="thumbnail" style="width: 100%; height: 100%;">
                  </div>
                  <div class="web-title" id="web-title">
                     <span><b><c:out value="${ws.webtoon_title}" /></b></span>
                  </div>
               </div>
            </a>
         </c:forEach>
      </div>
