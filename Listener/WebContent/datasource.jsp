<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String DSNAME = "java:comp/env/jdbc/mldn";
	Context ctx = new InitialContext();
	DataSource ds = (DataSource)ctx.lookup(DSNAME);
	Connection con = ds.getConnection();
%>
	<%=con %>
	<%
		con.close();
	%>

</body>
</html>