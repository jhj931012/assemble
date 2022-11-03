<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
	<link rel="stylesheet" type="text/css" href="resources/css/reset.css"/>
	<link rel="stylesheet" type="text/css" href="resources/css/index/index.css"/>
	<script type="text/javascript" src="resources/js/index/jquery.1.12.4.js"></script>
	<script type="text/javascript" src="resources/plugins/bxslider/js/jquery.bxslider.js"></script>
	<link rel="stylesheet" type="text/css" href="resources/plugins/web-fonts-with-css/css/all.css"/>
	<script>
		$(document).ready(function(){
			$('.slider').bxSlider({
				controls:false,
				pager:false,
				auto:true
			});
		});
	</script>
</head> 
<body>
	<div class="overlay"></div>
	<div class="slider">
		<div class="main_img_01"></div>
		<div class="main_img_02"></div>
		<div class="main_img_03"></div>
	</div>
	<div class="contents">
		<p class="contents_name">ASSEMBLE</p>
		<p class="contents_job">다양한 웹툰 리뷰 플랫폼 </p>
		<div class="contents_inner">
			<ul class="contents_list">
				<li>
					<a href="main">
						<i class="fab fa-accusoft"></i>
					</a>
				</li>
				<li>
					<a href="#">
						<i class="fas fa-search"></i>
					</a>
				</li>
				<li>
					<a href="#">
						<i class="fas fa-address-book"></i>
					</a>
				</li>
				<li>
					<a href="#">
						<i class="fas fa-sign-in-alt"></i>
					</a>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>