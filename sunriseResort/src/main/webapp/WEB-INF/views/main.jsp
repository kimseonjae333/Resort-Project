<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en" data-bs-theme="auto">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">

<title>SUNRISE RESORT에 오신 것을 환영합니다</title>

<!-- 부트스트랩 css -->
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.3/examples/carousel/">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css">

<style>

#loginbox {
	width: 1800px;
	float: left;
	text-align: right;
}
</style>
</head>
<body style='background-color: #fffbee;'>
	<!-- ================================================================================================== -->

	<header data-bs-theme="dark" style='background-color: #ffffff;'>
		<div id="loginbox">
			<span> <c:choose>
					<c:when test="${empty loginId}">
						<a href="/sunriseResort/adm_login">로그인</a>
					</c:when>
					<c:otherwise>
						${loginId}님 반갑습니다! 
						<a href="/sunriseResort/adm_logout">로그아웃</a>
					</c:otherwise>
				</c:choose>
			</span> | <span><a href="/sunriseResort/adm_join"> 회원가입</a></span> | <span><a
				href="/sunriseResort/resortBoard_list"> 고객라운지</a></span>
		</div>
		<table>
			<%@ include file="./top.jsp"%>
		</table>
	</header>

	<!-- ================================================================================================== -->

	<main>
		<!-- Carousel-->
		<div id="myCarousel" class="carousel slide mb-6"
			data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img
						src="${pageContext.request.contextPath}/resources/img/resort/resort-2.jpg"
						style="object-fit: cover; width: 100%; height: 500px;" alt="slide_img1">
					<div class="carousel-caption d-none d-md-block">
						<p>This image is &copy; SUNRISE RESORT</p>
					</div>
				</div>
				<div class="carousel-item">
					<img
						src="${pageContext.request.contextPath}/resources/img/resort/resort-4.jpg"
						style="object-fit: cover; width: 100%; height: 500px;" alt="slide_img2">
					<div class="carousel-caption d-none d-md-block">
						<p>This image is &copy; SUNRISE RESORT</p>
					</div>
				</div>
				<div class="carousel-item">
					<img
						src="${pageContext.request.contextPath}/resources/img/resort/resort-5.jpg"
						style="object-fit: cover; width: 100%; height: 500px;" alt="slide_img3">
					<div class="carousel-caption d-none d-md-block">
						<p>This image is &copy; SUNRISE RESORT</p>
					</div>
				</div>
			</div>
		</div>
		<div style="width: 100%; height: 70px;"></div>
		<!-- /Carousel-->

		<!-- container -->
		<div class="container marketing">

			<div class="row">
				<div class="col-lg-4">
					<svg class="bd-placeholder-img rounded-circle" width="140"
						height="140" xmlns="http://www.w3.org/2000/svg" role="img"
						aria-label="Placeholder" preserveAspectRatio="xMidYMid slice"
						focusable="false">
						<title>Placeholder</title><rect width="100%" height="100%"
							fill="var(--bs-secondary-color)" /></svg>
					<h2 class="fw-normal">Heading</h2>
					<p>Some representative placeholder content for the three
						columns of text below the carousel. This is the first column.</p>
					<p>
						<a class="btn btn-secondary" href="#">View details &raquo;</a>
					</p>
				</div>
				<div class="col-lg-4">
					<svg class="bd-placeholder-img rounded-circle" width="140"
						height="140" xmlns="http://www.w3.org/2000/svg" role="img"
						aria-label="Placeholder" preserveAspectRatio="xMidYMid slice"
						focusable="false">
						<title>Placeholder</title><rect width="100%" height="100%"
							fill="var(--bs-secondary-color)" /></svg>
					<h2 class="fw-normal">Heading</h2>
					<p>Another exciting bit of representative placeholder content.
						This time, we've moved on to the second column.</p>
					<p>
						<a class="btn btn-secondary" href="#">View details &raquo;</a>
					</p>
				</div>
				<div class="col-lg-4">
					<svg class="bd-placeholder-img rounded-circle" width="140"
						height="140" xmlns="http://www.w3.org/2000/svg" role="img"
						aria-label="Placeholder" preserveAspectRatio="xMidYMid slice"
						focusable="false">
						<title>Placeholder</title><rect width="100%" height="100%"
							fill="var(--bs-secondary-color)" /></svg>
					<h2 class="fw-normal">Heading</h2>
					<p>And lastly this, the third column of representative
						placeholder content.</p>
					<p>
						<a class="btn btn-secondary" href="#">View details &raquo;</a>
					</p>
				</div>
			</div>
			<div style="width: 100%; height: 50px;"></div>


			<!-- START THE FEATURETTES -->

			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-7">
					<h2 class="featurette-heading fw-normal lh-1">
						First featurette heading. <span class="text-body-secondary">It’ll
							blow your mind.</span>
					</h2>
					<p class="lead">Some great placeholder content for the first
						featurette here. Imagine some exciting prose here.</p>
				</div>
				<div class="col-md-5">
						<img
						src="${pageContext.request.contextPath}/resources/img/other/restaurant.jpg"
						style="object-fit: cover; width: 500px; height: 500px;" alt="feat_img2">
				</div>
			</div>

			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-7 order-md-2">
					<h2 class="featurette-heading fw-normal lh-1">
						Oh yeah, it’s that good. <span class="text-body-secondary">See
							for yourself.</span>
					</h2>
					<p class="lead">Another featurette? Of course. More placeholder
						content here to give you an idea of how this layout would work
						with some actual real-world content in place.</p>
				</div>
				<div class="col-md-5 order-md-1">
					<img
						src="${pageContext.request.contextPath}/resources/img/other/fitness.jpg"
						style="object-fit: cover; width: 500px; height: 500px;" alt="feat_img2">
				</div>
			</div>

			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-7">
					<h2 class="featurette-heading fw-normal lh-1">
						And lastly, this one. <span class="text-body-secondary">Checkmate.</span>
					</h2>
					<p class="lead">And yes, this is the last block of
						representative placeholder content. Again, not really intended to
						be actually read, simply here to give you a better view of what
						this would look like with some actual content. Your content.</p>
				</div>
				<div class="col-md-5">
						<img
						src="${pageContext.request.contextPath}/resources/img/other/massage.jpg"
						style="object-fit: cover; width: 500px; height: 500px;" alt="feat_img2">
				</div>
			</div>

			<hr class="featurette-divider">

			<!-- /END THE FEATURETTES -->

		</div>
		<!-- /.container -->


		<!-- FOOTER -->
		<footer class="container">
			<p class="float-end">
				<a href="#">Back to top</a>
			</p>
			<p>
				&copy; 1997–2023 SUNRISERESORT
			</p>
		</footer>
	</main>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
		
</body>
</html>
