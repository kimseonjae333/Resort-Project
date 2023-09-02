<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선라이즈 리조트 예약확인창</title>
<style>
.button {
	width: 1050px;
	height: 100px;
	text-align: center;
}

.insert {
	width: 450px;
	height: 400px;
	border-collapse: collapse;
	margin: 0 auto; /* Center the table horizontally */
	margin-bottom: 20px;
}

.insert td {
	border: 1px solid #ddd;
	padding: 10px;
	text-align: center;
}
</style>

</head>
<body>
	<table>
		<%@ include file="../top.jsp"%>
	</table>
	<div style="width: 100%; height: 50px;"></div>

	<div style="width: 1050px;">
		<form method="post" id="resvInsertForm" onsubmit="return submitForm()">
			<table class="insert">
				<tr>
					<td style="width: 100px;"><p align="left">
							<b>날짜</b>
						</p></td>
					<td><input type="text" name="date" value="${Date}" size=20;
						style='float: left;' readonly></td>
				</tr>
				<tr>
					<td><p align="left">
							<b>룸 타입</b>
						</p></td>
					<td><input type="text" name="room" value="${roomType}"
						size=20; style='float: left;' readonly></td>
				</tr>
				<tr>
					<td><p align="left">
							<b>예약자명</b>
						</p></td>
					<td><input type="text" name="name" value="" size=20;
						style='float: left;'></td>
				</tr>
				<tr>
					<td><p align="left">
							<b>입금자명</b>
						</p></td>
					<td><input type="text" name="depname" value="" size=20;
						style='float: left;'></td>
				</tr>
				<tr>
					<td><p align="left">
							<b>남기실 말</b>
						</p></td>
					<td><textarea name="comment" rows="11" cols="100"
							style="width: 300px; height: 50px; resize: none; overflow: auto; float: left;"></textarea>
					</td>
				</tr>
			</table>
			<div class="button">
				<input type="button" value="취소"
					onClick="location.href='/sunriseResort/calendar'"> <input
					type="submit" value="예약">
			</div>
		</form>
	</div>
	<div class="info"></div>

</body>
</html>
