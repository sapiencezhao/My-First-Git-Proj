<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/fmt.tld" prefix="fmt"%>  
<%@ page import="java.util.*"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		pageContext.setAttribute("date", new Date());
	%>
	<h3>中文日期显示：
	<fmt:setLocale value="zh_CN"/>
		<fmt:formatDate value="${date}"/></h3>
	<h3>英文日期显示：
	<fmt:setLocale value="en_US"/>
		<fmt:formatDate value="${date}"/></h3>


</body>
</html>