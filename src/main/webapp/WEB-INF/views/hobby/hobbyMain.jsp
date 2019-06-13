<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<title><s:message code="mblk.common.title" /></title>
		<%@ include file="/WEB-INF/views/include/head-mblk.jsp" %>

		<style>
			.w-15 {
			  width: 15% !important;
			}
			.w-35 {
			  width: 35% !important;
			}
		</style>
	</head>
  
	<script type="text/javascript">
		$(document).ready(function(){
			var container=document.getElementById('map');
			var options={
				center: new daum.maps.LatLng(36.11442514373248, 128.18170196307534),
				level: 3
			};
			var map=new daum.maps.Map(container, options);
			
			
			var imageSrc='http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png', // 마커이미지의 주소
			imageSize=new daum.maps.Size(64, 69), // 마커이미지의 크기
			imageOption={offset: new daum.maps.Point(27, 69)}; // 마커이미지의 옵션. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정
			      
			// 마커의 이미지정보를 가지고 있는 마커이미지를 생성
			var markerImage=new daum.maps.MarkerImage(imageSrc, imageSize, imageOption),
			    markerPosition=new daum.maps.LatLng(36.11442514373248, 128.18170196307534); // 마커가 표시될 위치
			
			// 마커를 생성
			var marker=new daum.maps.Marker({
			    position: markerPosition, 
			    image: markerImage // 마커이미지 설정 
			});
			
			// 마커가 지도 위에 표시되도록 설정
			marker.setMap(map);
			
			
			var iwContent='<div style="width:150px; font-weight:bold; font-size:13px; text-align:center;">몽블랑 키즈카페 <span style="font-weight:bold; font-size:20px;">3F</span></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
			iwPosition=new daum.maps.LatLng(36.11442514373248, 128.18170196307534); //인포윈도우 표시 위치
			
			// 인포윈도우를 생성
			var infowindow=new daum.maps.InfoWindow({
			    position : iwPosition, 
			    content : iwContent 
			});
			  
			// 마커 위에 인포윈도우를 표시. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시
			infowindow.open(map, marker);
			
			$("#inputResDate").datepicker();
		});
	
	</script>

<body id="page-top">

	<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
		<a class="navbar-brand js-scroll-trigger" href="#page-top">
			<span class="d-block d-lg-none">Clarence Taylor</span>
			<span class="d-none d-lg-block">
				<img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="images/profile.jpg" alt="">
			</span>
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link js-scroll-trigger" href="#about">About</a>
				</li>
				<li class="nav-item">
					<a class="nav-link js-scroll-trigger" href="#intro">Intro</a>
				</li>
				<li class="nav-item">
					<a class="nav-link js-scroll-trigger" href="#foodmenu">Food Menu</a>
				</li>
				<li class="nav-item">
					<a class="nav-link js-scroll-trigger" href="#playzone">Play Zone</a>
				</li>
				<li class="nav-item">
					<a class="nav-link js-scroll-trigger" href="#photo">Photo</a>
				</li>
				<li class="nav-item">
					<a class="nav-link js-scroll-trigger" href="#reservation">Reservation</a>
				</li>
			</ul>
		</div>
	</nav>

	<div class="container-fluid p-0">

		<section class="resume-section p-3 p-lg-5 d-flex d-column" id="about">
			<div class="my-auto">
				<h1 class="mb-0"><span class="text-primary">Instargram </span>Auto Manager</h1>
				<div class="subheading mb-1">경북 김천시 남면 혁신1로 50, 3층  키즈카페 몽블랑 /</div>
				<!-- <a href="mailto:name@email.com">name@email.com</a> -->
				<div class="subheading mb-5"><a href="/mblk/instar/instartMain.php">010. 9513. 5115 /</a></div>
				<p class="lead mb-1">MontBlanc is a wonderful kids cafe that filled up with full of fun stuffs only for your precious child.</p>
				<p class="lead mb-5">We love kids. We want your children to have a funniest day ever in MontBlanc.</p>
				<div id="map" style="width:97%;height:400px;"></div>
			</div>
		</section>

		<hr class="m-0">
		
	</div>
  </body>

</html>
