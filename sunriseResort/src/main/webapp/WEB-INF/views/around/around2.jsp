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
			<b>안방비치</b><br /> 안방 비치는 시원한 푸른 물, 길게 뻗은 백사장, 잔잔한 파도가 해안을 강타하는 옥돌 같은
			해변입니다. 다낭의 미케 해변과 함께 구시가지 중심에서 불과 7km 떨어진 안방 비치도 아시아에서 가장 아름다운 해변
			25위에 올랐습니다. 특히 안방 비치는 호이안 고대 도시의 극도로 옛날 분위기와 어우러져 조용한 낙원과 같은 평화롭고 정돈된
			모습을 간직하고 있습니다.
		</p>
	</div>
	<div style="width: 1050px;">
		<table id='photo' cellpadding='0' cellspacing='0' width='100%'
			height='800'>
			<tr>
				<td><img
					src="${pageContext.request.contextPath}/resources/img/around/beach.jpg"
					alt="beach"></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td><img
					src="${pageContext.request.contextPath}/resources/img/around/beach-2.jpg"
					alt="beach-2"></td>
			</tr>
		</table>
	</div>
	<div class="info"></div>
</body>
</html>
