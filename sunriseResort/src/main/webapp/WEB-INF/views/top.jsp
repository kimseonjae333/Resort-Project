<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>SUNRISE RESORT에 오신 것을 환영합니다</title>

<!-- bootstrap css -->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">

<link rel="stylesheet" href="/css/top_style.css">

<script language='javascript' type='text/javascript'> //<![CDATA[
	
	function fncShow(pos) {
		var muCnt = 5; // 메뉴 개수에 맞게 수정
		var i = 0;
		for(i; i < muCnt; i++) {
			var obj = document.getElementById("menu"+i);
			var obj2 = document.getElementById("m"+i);
			if(i==pos) {
				obj.style.display = '';
				obj2.style.color="#ff0000";
			} else {
				obj.style.display = 'none';
				obj2.style.color = "#000000";
			}
		}
	}
	function fncHide() {
		var obj = document.getElementById(bottommenu);
		obj.style.display = 'none';
	}
	
//]]></script>
</head>
<body>
	<table width='100%' height='60'>
		<tr>
			<!-- 상단 메뉴 -->
			<td class='blank'></td>
			<td width='100'><a href='home'><img
					src="${pageContext.request.contextPath}/resources/img/sunrise.png"
					alt="logo" width='80' height='70' border='0'></a></td>
			<td width='200'><a href='home'><b style='font-size: 220%;'>SUNRISE</b></a></td>
			<td>
				<table width='1200' height='60'>
					<tr height='50'>
						<td class='blank'></td>
						<td width='150' onmouseover='fncShow(0);' id='m0'
							style='padding-top: 10px;'><a href='introduce'><b>리조트
									소개</b></a></td>
						<td width='150' onmouseover='fncShow(1);' id='m1'
							style='padding-top: 10px;'><a href='room1'><b>객실 안내</b></a></td>
						<td width='150' onmouseover='fncShow(2);' id='m2'
							style='padding-top: 10px;'><a href='calendar'><b>예약
									안내</b></a></td>
						<td width='150' onmouseover='fncShow(3);' id='m3'
							style='padding-top: 10px;'><a href='around1'><b>주변
									관광지</b></a></td>
						<td width='150' onmouseover='fncShow(4);' id='m4'
							style='padding-top: 10px;'><a href='resortBoard_list'><b>리조트
									소식</b></a></td>
						<td class='blank'></td>
					</tr>

					<!-- 하단 메뉴 -->
					<tr height='50' id='bottommenu' onmouseout='fncHide();'>
						<td colspan='7'>
							<table id='menu0' style='display: none;' class='bottom_table'>
								<tr>
									<td width='90'></td>
									<td style='text-align: left;' onmouseout='fncHide(0);'><a
										href='introduce'><span onmouseover=this.style.color=
											'#ff0000' onmouseout=this.style.color='#000000'> 선라이즈
												리조트</span></a><a href='place'><span onmouseover=this.style.color=
											'#ff0000' onmouseout=this.style.color='#000000'> | 오시는
												길</span></a></td>
								</tr>
							</table>
							<table id='menu1' style='display: none;' class='bottom_table'>
								<tr>
									<td width='290'></td>
									<td style='text-align: left;'><a href='room1'><span
											onmouseover=this.style.color=
											'#ff0000' onmouseout=this.style.color='#000000'>일반룸</span></a><a
										href='room2'><span onmouseover=this.style.color=
											'#ff0000' onmouseout=this.style.color='#000000'> |
												디럭스룸</span></a><a href='room3'><span onmouseover=this.style.color=
											'#ff0000' onmouseout=this.style.color='#000000'> |
												패밀리룸</span></a></td>
								</tr>
							</table>
							<table id='menu2' style='display: none;' class='bottom_table'>
								<tr>
									<td width='510'></td>
									<td style='text-align: left;'><a href='calendar'><span
											onmouseover=this.style.color=
											'#ff0000' onmouseout=this.style.color='#000000'> 예약하기</span></a><a
										href='resv_check'><span onmouseover=this.style.color=
											'#ff0000' onmouseout=this.style.color='#000000'> |
												예약확인</span></a></td>
								</tr>
							</table>
							<table id='menu3' style='display: none;' class='bottom_table'>
								<tr>
									<td width='600'></td>
									<td style='text-align: left;'><a href='around1'><span
											onmouseover=this.style.color=
											'#ff0000' onmouseout=this.style.color='#000000'>호이안
												올드타운</span></a><a href='around2'><span
											onmouseover=this.style.color=
											'#ff0000' onmouseout=this.style.color='#000000'> |
												안방비치</span></a><a href='around3'><span
											onmouseover=this.style.color=
											'#ff0000' onmouseout=this.style.color='#000000'> |
												베이마우 코코넛 숲</span></a></td>
								</tr>
							</table>
							<table id='menu4' style='display: none;' class='bottom_table'>
								<tr>
									<td width='880'></td>
									<td style='text-align: left;'><a href='resortBoard_list'><span
											onmouseover=this.style.color=
											'#ff0000' onmouseout=this.style.color='#000000'>리조트 소식</span>
									</a><a href='userBoard_list'><span
											onmouseover=this.style.color=
											'#ff0000' onmouseout=this.style.color='#000000'> | 방문객
												후기 </span></a></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
</body>
</html>