<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<style>
.info {
	width: 1050px;
	height: 100px;
	text-align: center;
}

.cal_body {
	width: 800px;
	margin: 0 auto; /* Center the table horizontally */
	border: 1px solid black;
}

.cal_body th, .cal_body td {
	width: 200px;
	padding: 5px;
	border: 1px solid black;
	text-align: center;
}
</style>
<meta charset="UTF-8">
<title>선라이즈 리조트 예약현황</title>
</head>
<body>
	<table>
		<%@ include file="../top.jsp"%>
	</table>
	<div style="width: 100%; height: 50px;"></div>
	<div class="info">
		<p>
			<b>원하는 예약 날짜를 선택해 주세요</b><br /> (클릭시 해당 날짜의 예약 페이지로 이동합니다)
		</p>
	</div>
	<div style="width: 1050px;">
		<form name="calendarForm" id="calendarForm" method="GET">
			<table cellspacing="0" width="800" class="cal_body">
				<thead>
					<tr>
						<th><p>날짜</p></th>
						<th><p>일반룸</p></th>
						<th><p>디럭스룸</p></th>
						<th><p>패밀리룸</p></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="set" items="${sets}">
						<tr>
							<td>${set[0]}</td>
							<td><c:choose>
									<c:when test="${set[1] == '예약가능'}">
										<a href="/sunriseResort/cal_insert?date=${set[0]}&room=일반룸">${set[1]}</a>
									</c:when>
									<c:otherwise>${set[1]}</c:otherwise>
								</c:choose></td>
							<td><c:choose>
									<c:when test="${set[2] == '예약가능'}">
										<a href="/sunriseResort/cal_insert?date=${set[0]}&room=디럭스룸">${set[2]}</a>
									</c:when>
									<c:otherwise>${set[2]}</c:otherwise>
								</c:choose></td>
							<td><c:choose>
									<c:when test="${set[3] == '예약가능'}">
										<a href="/sunriseResort/cal_insert?date=${set[0]}&room=패밀리룸">${set[3]}</a>
									</c:when>
									<c:otherwise>${set[3]}</c:otherwise>
								</c:choose></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>
	</div>
	<div class="info"></div>
</body>
</html>
