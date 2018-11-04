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
		pageContext.setAttribute("info", "<www.mldn.cn>");
	%>
	<h2>属性存在：<c:out value="${info}"/></h2>
	<h2>属性不存在：<c:out value="${ref}" default ="没有此内容 ！"/></h2>
	<h2>属性不存在：<c:out value="${ref}">没有此内容 !</c:out></h2>
</body>
</html>