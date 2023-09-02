<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
      <b>디럭스룸</b><br /> 최대 2인
    </p>
  </div>
  <div style="width: 1050px;">
    <table id='photo' cellpadding='0' cellspacing='0' width='100%' height='800'>
      <tr>
        <td><img src="${pageContext.request.contextPath}/resources/img/room2/room2.jpg" alt="room2"></td>
      </tr>
      <tr><td></td></tr>
      <tr>
        <td><img src="${pageContext.request.contextPath}/resources/img/room2/room2-2.jpg" alt="room2-2"></td>
      </tr>
      <tr><td></td></tr>
      <tr>
        <td><img src="${pageContext.request.contextPath}/resources/img/room2/room2-3.jpg" alt="room2-3"></td>
      </tr>
      <tr><td></td></tr>
      <tr>
        <td><img src="${pageContext.request.contextPath}/resources/img/room2/room2-5.jpg" alt="room2-5"></td>
      </tr>
       <tr><td></td></tr>
      <tr>
        <td><img src="${pageContext.request.contextPath}/resources/img/room2/room2-4.jpg" alt="room2-4"></td>
      </tr>
    </table>
  </div>
  <div class="info"></div>
</body>
</html>
