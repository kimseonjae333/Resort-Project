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
</style>
</head>
<body>
	<table>
		<%@ include file="../top.jsp"%>
	</table>
	<div style="width: 100%; height: 50px;"></div>
	<div class="info">
		<p>
			<b>호이안 올드타운</b><br /> 호이안 올드타운 (Hoi An Ancient Town)은 다낭시에서 남쪽으로 약
			30km 떨어진 베트남 꽝남성 해안 평야의 투본강 하류에 위치한 고대 도시입니다. 호이안은 16세기 후반, 레 왕조 시대에
			탄생했으며 수백 년 후 이 무역항의 역사상 가장 번영한 시기를 열었습니다. 유리한 지리적 및 기후적 요인 덕분에 호이안은
			17세기와 18세기 동안 일본, 중국 및 서양 상선이 만나는 곳인 번화한 국제 무역 항구였습니다.
		</p>
	</div>
	<div style="width: 1050px;">
		<table id='photo' cellpadding='0' cellspacing='0' width='100%'
			height='800'>
			<tr>
				<td><img
					src="${pageContext.request.contextPath}/resources/img/around/oldtown.jpg"
					alt="oldtown"></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td><img
					src="${pageContext.request.contextPath}/resources/img/around/oldtown-2.jpg"
					alt="oldtown-2"></td>
			</tr>
		</table>
	</div>
	<div class="info"></div>
</body>
</html>
