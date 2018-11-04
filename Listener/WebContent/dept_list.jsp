<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	List all =(List)request.getAttribute("alldept");
	if(all != null){
%>
	<table border = "1" width = "90%">
		<tr>
			<td>部门编号</td>
			<td>部门名称</td>
			<td>部门位置</td>
		</tr>
		<%
			Iterator iter = all.iterator();
				while(iter.hasNext()){
					pageContext.setAttribute("dept",iter.next());
		%>
			<tr>
				<td>${dept.deptno}</td>
				<td>${dept.dname}</td>
				<td>${dept.loc}</td>
			</tr>
		<%
			}
		%>
	</table>
<%
	}
%>
</body>
</html>