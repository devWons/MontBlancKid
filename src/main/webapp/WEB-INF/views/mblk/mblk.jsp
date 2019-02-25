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
			var container = document.getElementById('map');
			var options = {
				center: new daum.maps.LatLng(36.11442514373248, 128.18170196307534),
				level: 3
			};
			var map = new daum.maps.Map(container, options);
			
			
			var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png', // 마커이미지의 주소입니다    
			imageSize = new daum.maps.Size(64, 69), // 마커이미지의 크기입니다
			imageOption = {offset: new daum.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
			      
			// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
			var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imageOption),
			    markerPosition = new daum.maps.LatLng(36.11442514373248, 128.18170196307534); // 마커가 표시될 위치입니다
			
			// 마커를 생성합니다
			var marker = new daum.maps.Marker({
			    position: markerPosition, 
			    image: markerImage // 마커이미지 설정 
			});
			
			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);
			
			
			var iwContent = '<div style="width:150px; font-weight:bold; font-size:13px; text-align:center;">몽블랑 키즈카페 <span style="font-weight:bold; font-size:20px;">3F</span></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
			iwPosition = new daum.maps.LatLng(36.11442514373248, 128.18170196307534); //인포윈도우 표시 위치입니다
			
			// 인포윈도우를 생성합니다
			var infowindow = new daum.maps.InfoWindow({
			    position : iwPosition, 
			    content : iwContent 
			});
			  
			// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
			infowindow.open(map, marker);
			
			
			//캐러젤 설정
			$('#myCarousel').carousel('cycle');
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
				<h1 class="mb-0">Mont Blanc<span class="text-primary"> Kids Cafe</span></h1>
				<div class="subheading mb-1">경북 김천시 남면 혁신1로 50, 3층  몽블랑 키즈카페 /</div>
				<!-- <a href="mailto:name@email.com">name@email.com</a> -->
				<div class="subheading mb-5">010. 9513. 5115 /</div>
				<p class="lead mb-1">MontBlanc is a wonderful kids cafe that filled up with full of fun stuffs only for your precious child.</p>
				<p class="lead mb-5">We love kids. We want your children to have a funniest day ever in MontBlanc.</p>
				<div id="map" style="width:800px;height:400px;"></div>
			</div>
		</section>

		<hr class="m-0">

		<section class="resume-section p-3 p-lg-5 d-flex flex-column" id="intro">
			<div class="my-auto">
				<h2 class="mb-5">INTRO</h2>
				<div class="resume-item d-flex flex-column flex-md-row mb-5">
					<div class="resume-content mr-auto">
						<h3 class="mb-0">Senior Web Developer</h3>
						<div class="subheading mb-3">Intelitec Solutions</div>
						<p>Bring to the table win-win survival strategies to ensure proactive domination. At the end of the day, going forward, a new normal that has evolved from generation X is on the runway heading towards a streamlined cloud solution. User generated content in real-time will have multiple touchpoints for offshoring.</p>
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary">March 2013 - Present</span>
					</div>
				</div>

				<div class="resume-item d-flex flex-column flex-md-row mb-5">
					<div class="resume-content mr-auto">
						<h3 class="mb-0">Web Developer</h3>
						<div class="subheading mb-3">Intelitec Solutions</div>
						<p>Capitalize on low hanging fruit to identify a ballpark value added activity to beta test. Override the digital divide with additional clickthroughs from DevOps. Nanotechnology immersion along the information highway will close the loop on focusing solely on the bottom line.</p>
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary">December 2011 - March 2013</span>
					</div>
				</div>

				<div class="resume-item d-flex flex-column flex-md-row mb-5">
					<div class="resume-content mr-auto">
						<h3 class="mb-0">Junior Web Designer</h3>
						<div class="subheading mb-3">Shout! Media Productions</div>
						<p>Podcasting operational change management inside of workflows to establish a framework. Taking seamless key performance indicators offline to maximise the long tail. Keeping your eye on the ball while performing a deep dive on the start-up mentality to derive convergence on cross-platform integration.</p>
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary">July 2010 - December 2011</span>
					</div>
				</div>

				<div class="resume-item d-flex flex-column flex-md-row">
					<div class="resume-content mr-auto">
						<h3 class="mb-0">Web Design Intern</h3>
						<div class="subheading mb-3">Shout! Media Productions</div>
						<p>Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI.</p>
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary">September 2008 - June 2010</span>
					</div>
				</div>

			</div>

		</section>

		<hr class="m-0">

		<section class="resume-section p-3 p-lg-6 d-flex flex-column" id="foodmenu">
			<div class="my-auto">
				<h2 class="mb-0">Food Menu</h2>
			</div>
			<div class="row">
				<c:forEach var="i" begin="1" end="4" step="1">
					<div class="col-sm-6 col-md-3 mw-100 mt-5">
						<div class="img-thumbnail" style="width:260px;">
						<img src="${ctx}/images/250x361.jpg" alt="Generic placeholder thumbnail">
							<div class="caption">
								<h3>Thumbnail label</h3>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
					</div>
				</c:forEach>
				
				<c:forEach var="i" begin="1" end="4" step="1">
					<div class="col-sm-6 col-md-3 mw-100 mt-5">
						<div class="img-thumbnail" style="width:260px;">
						<img src="${ctx}/images/250x361.jpg" alt="Generic placeholder thumbnail">
							<div class="caption">
								<h3>Thumbnail label</h3>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</section>

		<hr class="m-0">

		<section class="resume-section p-3 p-lg-5 d-flex flex-column" id="playzone">
			<div class="my-auto">
				<h2 class="mb-5">PLAY ZONE</h2>
			
				<div class="subheading mb-3">Programming Languages &amp; Tools</div>
				<div id="photoCarousel" class="carousel slide" data-ride="carousel" data-interval="1000">
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1" class=""></li>
						<li data-target="#myCarousel" data-slide-to="2" class=""></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="item active">
						<img data-src="holder.js/1200x500/text:First slide">
						</div>
						<div class="item">
						<img data-src="holder.js/1200x500/text:Second slide">
						</div>
						<div class="item">
						<img data-src="holder.js/1200x500/text:Third slide">
						</div>
					</div>
					<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
		
				<div class="subheading mb-3">Workflow</div>
				<ul class="fa-ul mb-0">
				  <li>
					<i class="fa-li fa fa-check"></i>
					Mobile-First, Responsive Design</li>
				  <li>
					<i class="fa-li fa fa-check"></i>
					Cross Browser Testing &amp; Debugging</li>
				  <li>
					<i class="fa-li fa fa-check"></i>
					Cross Functional Teams</li>
				  <li>
					<i class="fa-li fa fa-check"></i>
					Agile Development &amp; Scrum</li>
				</ul>
			</div>
		</section>

		<hr class="m-0">

		<section class="resume-section p-3 p-lg-5 d-flex flex-column" id="photo">
			<div class="my-auto">
				<h2 class="mb-5">PHOTO</h2>
				<p>Apart from being a web developer, I enjoy most of my time being outdoors. In the winter, I am an avid skier and novice ice climber. During the warmer months here in Colorado, I enjoy mountain biking, free climbing, and kayaking.</p>
				<p class="mb-0">When forced indoors, I follow a number of sci-fi and fantasy genre movies and television shows, I am an aspiring chef, and I spend a large amount of my free time exploring the latest technology advancements in the front-end web development world.</p>
			</div>
		</section>

		<hr class="m-0">

		<section class="resume-section p-3 p-lg-5 d-flex flex-column" id="reservation">
			<div class="my-auto">
				<h2 class="mb-5">Reservation</h2>
				<p class="lead mb-1">대관 예약시 가능한 일정을 문의 주세요</p>
				<p class="lead mb-5">예약 일정을 확인 후 연락드리겠습니다</p>
				
				<form class="form-horizontal">
					<div class="form-group">
						<label for="inputResName" class="col-sm-2 control-label">예약자</label>
						<div class="col-sm-10">
							<input type="text" class="form-control w-35" id="inputResName" placeholder="예약자명을 입력해주세요">
						</div>
					</div>
					<div class="form-group">
						<label for="inputResPhone" class="col-sm-2 control-label">연락처</label>
						<div class="col-sm-10">
							<input type="text" class="form-control w-35" id="inputResPhone" placeholder="'-' 를 제외한 연락처를 입력해주세요">
						</div>
					</div>
					<div class="form-group" style="display:inline-block;">
						<div><label for="inputResDate" class="col-sm-2 control-label">예약일자</label></div>
						<div class="col-sm-2" style="float:left; width:20%; display: inline-block;"><input type="text" class="form-control" id="inputResDate" placeholder="예약 일자"></div>
						<div class="col-sm-2" style="float:left; width:20%;"><input type="text" class="form-control" id="startTime" placeholder="시작시간"></div>
						<div style="float:left;"> ~ </div>
						<div class="col-sm-2" style="float:left; width:20%;"><input type="text" class="form-control" id="endTime" placeholder="종료시간"></div>
					</div>
					<div class="form-group">
						<label for="inputResDate" class="col-sm-2 control-label">남기실말씀</label>
						<div class="col-sm-10">
							<textarea class="form-control col-6" rows="6"></textarea>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">신청하기</button>
						</div>
					</div>
				</form>
			</div>
		</section>

    </div>

	<!-- Plugin JavaScript -->
	<script src="${ctx}/vendor/jquery-easing/jquery.easing.min.js"></script>
	
	<!-- Custom scripts for this template -->
	<%-- <script src="${ctx}/js/resume.min.js"></script> --%>
	<script src="${ctx}/js/resume.js"></script>
	
  </body>

</html>
