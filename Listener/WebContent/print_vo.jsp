<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "org.eldemo.vo.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Dept dept = new Dept();
	dept.setDeptno(34);
	dept.setDname("SapienceZhao");
	dept.setLoc("同济大学嘉定校区");
	request.setAttribute("allinfo", dept);
%>   
	<h3>职员编号：${allinfo.deptno}</h3>
	<h3>职员姓名：${allinfo.dname}</h3>
	<h3>职员位置：${allinfo.loc}</h3>

</body>
</html>