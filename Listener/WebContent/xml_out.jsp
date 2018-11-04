<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>  
<%@ taglib uri="/WEB-INF/x.tld" prefix="x"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:import var="add" url="/WebContent/address.xml" charEncoding = "GBK"/>
<x:parse var="addressXml" doc ="${add}"/>
<x:set var="nameXml" scope="page" select="$addressXml/addresslist/linkman"/>
<h3>姓名:<x:out select = "$nameXml/name"/></h3>
</body>
</html>