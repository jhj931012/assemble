<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css"
	href="../css/thema/thema-content.css">


<script type="text/javascript">
	function openLayer(){
		document.getElementById("popup-layer").style.display = "block";
	}
	
	function closeLayer() {
	    document.getElementById("popup-layer").style.display = "none";
	}
	
	
	
	var num=1;
	
	function changePic(idx){
		if(idx){
			if(num == 3) return;
			num++;
		}else{
			if(num == 1) return;
			num--;
		}
		var img = document.getElementById("manhwa");
		img.setAttribute("src", "../images/themaImages/" + num + ".jpg");
	}
</script>
<%@include file="../include/header.jsp"%>


<div class=all-page>

	<div class="thema-title">
		<h1>테마 111111</h1>
		<h3>내용 111111111111111</h3>
	</div>

	<div class="content-page">

		<div class="content-box">
			<div class="content-img">
				<a class="content-a" href="javascript:openLayer()"><img
					class="image" src="../images/tagPage/main/resource.jpg"></a>
				<div class="text-hover" id="double-hover">웹툰 맛보기</div>
			</div>
			<div class="content-text">
				<h2>갓오브하이스쿨(예시)</h2>
				<br />
				<div class="tag-box">

					<div class="grade">평점 1.0 <i class="fa-regular fa-star"></i></div>
					<button class="tag">태그1</button>
					<button class="tag">태그2</button>

				</div>

				<div class="text">
					<p>박용제 스토리, 판타지 | 미완결</p>
					<br />
					<p>
						전국, 전세계 고등학생 중 가장 쎈 녀석을 뽑는 대회가 열린다.<br> 허구 100% 막장 액션의 끝!!
						기대하시라!!!
					</p>
					<br/>
					<p> 추가 내용 ~~~~~~~~~~~~~</p>
				</div>
			</div>
		</div>


	</div>


	
</div>

<div id="popup-layer">
	<div class="popup-box">
		<img id="manhwa" src="../images/themaImages/1.jpg">
		<a id="close-btn" href="javascript:closeLayer();">
		<span id="exit"><i class="fa-solid fa-circle-xmark" style="font-size:40px; color:black;"></i></span>
		</a>
		<button id="next-btn" onclick="changePic(0);">
		<span id="arrow"><i class="fa-solid fa-chevron-left" style="font-size:80px; color:white;"></i></span>
		</button>
		<button id="back-btn" onclick="changePic(1);">
		<span id="arrow"><i class="fa-solid fa-chevron-right" style="font-size:80px; color:white;"></i></span>
		</button>
	</div>
</div>
<%@include file="../include/footer.jsp"%>