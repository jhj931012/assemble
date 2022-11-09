<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
	$('.pop-slider').bxSlider({
		controls : false,
		pager : false,
		auto : true,
		minSlides:1,
		maxSlides:1,
		moveSlides:1,
		
	});
});
    
</script>
    
<div class="pop-slider">
						<div class="pop-img">
							<img id="pop-cont-image"
								src="/resources/upload/${pop.webtoon_image1}"
								style="position: absolute; width: 100%; height: 100%;">
						</div>
						<div class="pop-img">
							<img id="pop-cont-image"
								src="/resources/upload/${pop.webtoon_image2}"
								style="position: absolute; width: 100%; height: 100%;">
						</div>
						<div class="pop-img">
							<img id="pop-cont-image"
								src="/resources/upload/${pop.webtoon_image3}"
								style="position: absolute; width: 100%; height: 100%;">
						</div>
					</div>