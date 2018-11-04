<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>    
<%@ taglib prefix="mytag" uri="mldn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		List<String>all = new ArrayList<String>();
		all.add("www.baidu.com");
		all.add("www.gougou.com"); 
		all.add("www.google.com");
		request.setAttribute("all", all);
	%>
		<mytag:iterate id="uri" name="all" scope="request">
			<h2>网站：<%=uri%></h2>
		</mytag:iterate>
	
</body>
</html>