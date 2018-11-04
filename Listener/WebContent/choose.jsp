<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	pageContext.setAttribute("num", 10);
%>
<c:choose>
	<c:when test="${num==100}">
		<h2>num1属性的内容是10！</h2>
	</c:when>
	<c:when test="${num==20}">
		<h2>num1属性的内容是20！</h2>
	</c:when>
	<c:otherwise>
		<h2>没有一个条件满足！</h2>
	</c:otherwise>
</c:choose>

</body>
</html>