<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
<%@ taglib prefix = "mytag" uri = "mldn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String scope = "session";
		session.setAttribute("username","��Ծ��");
	%>
	<mytag:present name="username" scope="<%=scope%>">
		<h2><%=scope%>��Χ�������ԣ�������:"${sessionScope.username}"</h2>
	</mytag:present>
	
	<%-- <mytag:present name="allusers" scope="<%=request%>">
		<h2><%=scope%>��Χ�������ԣ�������:"${requestScope.allusers}"</h2>
	</mytag:present> --%>

</body>
</html>