<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en" class="h-100" data-bs-theme="auto">
<head>
<script src="/docs/5.3/assets/js/color-modes.js"></script>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">

<title>SUNRISE RESORT에 오신 것을 환영합니다</title>

<!-- 부트스트랩 css -->
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.3/examples/cover/">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
	
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css">


<style>
body {
	background-image:
		url('${pageContext.request.contextPath}/resources/img/mainH.jpg');
	background-size: cover; /* 이미지가 화면 전체를 덮도록 설정합니다 */
	background-repeat: no-repeat; /* 이미지 반복을 막습니다 */
}

</style>

<link href="cover.css" rel="stylesheet">
</head>
<body class="d-flex h-100 text-center text-bg-dark">

	<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
		<header class="mb-auto"> </header>

		<main class="px-3">
			<h1>
				<b>WELCOME TO SUNRISE</b>
			</h1>
			<p class="lead">Sunrise Resort has been striving to provide you
				with the finest services since 1997. We invite you to the beautiful
				world of nature.</p>
			<p class="lead">
				<a href="/sunriseResort/main"
					class="btn btn-lg btn-light fw-bold border-white bg-white">Click Here</a>
			</p>
		</main>

		<footer class="mt-auto text-white-100">
			<p>
				This image is &copy; SUNRISE RESORT, <a href="/sunriseResort/main"
					style="color: white;">Visit the homepage</a>
			</p>
		</footer>
	</div>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
</body>
</html>
