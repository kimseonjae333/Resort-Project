<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SUNRISE RESORT에 오신 것을 환영합니다</title>
<style>
.info {
	width: 1050px;
	height: 100px;
	text-align: center;
}

.body {
	width: 1050px;
	text-align: center;
	display: flex;
	justify-content: center;
}

#loginbox {
	float: right;
}
</style>
</head>
<body>
	<div style="width: 90%;">
		<div id="loginbox">
			<span><a href="/sunriseResort/adm_login">로그인</a></span> | <span><a
				href="/sunriseResort/adm_join"> 회원가입</a></span> | <span><a
				href="/sunriseResort/resortBoard_list"> 고객라운지</a></span>
		</div>
	</div>
	<table>
		<%@ include file="../top.jsp"%>
	</table>
	<div style="width: 100%; height: 50px;"></div>
	<div class="info">
		<p>
			<b>오시는 길</b><br />
		</p>
	</div>
	<div class="body">
		<div id="googleMap" style="width: 600px; height: 400px;"></div>
		<script>
			function myMap() {
				var mapOptions = {
					center : new google.maps.LatLng(15.887283789165053,
							108.31952948340593),
					zoom : 10
				};

				var map = new google.maps.Map(document
						.getElementById("googleMap"), mapOptions);

				var marker = new google.maps.Marker({
					position : new google.maps.LatLng(15.887283789165053,
							108.31952948340593),
					title : "Hello World!"
				});

				// To add the marker to the map, call setMap();
				marker.setMap(map);
			}
		</script>
		<script
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBHRFMIJtArYoKq5qW3MF6Gcf1er5rT7mM&callback=myMap"></script>
	</div>
	<div class="info"></div>
</body>
</html>
