<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ taglib uri="/WEB-INF/fmt.tld" prefix="fmt"%>  
<%@ page import="java.util.*"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<fmt:bundle basename="Message">
	<fmt:message key = "name" var = "nameref"/>
</fmt:bundle>
<h3>ĞÕÃû£º${nameref}</h3>
<fmt:bundle basename="Message">
	<fmt:message key = "info" var = "inforef">
		<fmt:param value="MLDN"/>
	</fmt:message>
</fmt:bundle>
<h3>ĞÅÏ¢£º${inforef}</h3>
</body>
</html>