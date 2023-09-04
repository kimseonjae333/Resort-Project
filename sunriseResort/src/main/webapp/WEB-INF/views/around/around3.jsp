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

#photo {
	width: 100%;
	height: 100%;
	display: flex;
	flex-direction: column; /* Stack images vertically */
	align-items: center;
	overflow: hidden;
}

#photo img {
	max-width: 70%;
	max-height: 70%;
	margin: 20px 0; /* Add margin between images */
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
			<b>베이마우 코코넛 숲</b><br /> 베이마우 코코넛 숲은 호이안의 유명한 생태 관광 지역입니다. 베이마우 코코넛
			숲에 오기 위해 방문객들은 호이안의 바뜨당 부두에서 남동쪽으로 약 4km 떨어진 강을 따라 큰 보트를 타게 됩니다. 이곳에
			오면 평화로운 공간 한가운데에 있는 녹색 코코넛 숲을 방문하기 위해 바구니 보트에 앉아 바구니 댄스, 보트 경주를 감상하고
			지역 특산품을 즐기는 경험을 하게 될 것입니다.
		</p>
	</div>
	<div style="width: 1050px;">
		<table id='photo' cellpadding='0' cellspacing='0' width='100%'
			height='800'>
			<tr>
				<td><img
					src="${pageContext.request.contextPath}/resources/img/around/coconut.jpg"
					alt="coconut"></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td><img
					src="${pageContext.request.contextPath}/resources/img/around/coconut-2.jpg"
					alt="coconut-2"></td>
			</tr>
		</table>
	</div>
	<div class="info"></div>
</body>
</html>
