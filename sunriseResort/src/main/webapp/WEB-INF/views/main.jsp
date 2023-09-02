<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SUNRISE RESORT에 오신 것을 환영합니다</title>
<style>
  body, html {
    margin: 0;
    padding: 0;
    height: 100%;
  }
  #main {
    width: 90%;
    height: 90%;
    display: flex;
    justify-content: center;
    align-items: center;
    overflow: hidden;
  }
  #main img {
    max-width: 70%;
    max-height: 70%;
  }
</style>
</head>
<body>
  <table>
    <%@ include file="./top.jsp"%>
  </table>
  <div style="width: 100%; height: 20px;"></div>
  <div style="width: 1050px;">
    <table id='main' cellpadding='0' cellspacing='0' width='100%' height='800'>
      <tr>
        <td><img src="${pageContext.request.contextPath}/resources/img/mainV.jpg" alt="MainImg"></td>
      </tr>
    </table>
  </div>
</body>
</html>
