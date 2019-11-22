<%@page import="java.io.File" %>
<%@page import="java.io.FileReader" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@page import="java.io.FileNotFoundException" %>
<%@page import="java.util.Scanner" %>
<%@page import="java.io.File" %>
<%@page import="Main.*" %>

<%@ page language="java" import="java.sql.*"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Usage Report</title>
<style>
h1 {
    background-color:#cc99ff;
    color:white;
    text-align:center;
    padding:5px;	 
}
h3 {
    background-color:#f2e6ff;  	      
}
h2 {
    background-color:#cc99ff;
    color:white;
    clear:both;
    text-align:center;
    padding:5px;	 	 
}
</style>
</head>
<body>

	<h1 align="center"> Usage for this month </h1>
	<h3>

	
	<%!String Max;%>
	<%!String Min;%>
	<%!String Current;%>
	<%!String Units;%>
	<%!String Hours;%>
	<%Max = request.getParameter("Max");%>
	<%Min = request.getParameter("Min");%>
	<%Current = request.getParameter("Current");%>
	<%Units = request.getParameter("Units");%>
	<%Hours = request.getParameter("Hours");%>
	<%=run()%>
	<%!String run() throws SQLException {
		test t = new test();
		StringBuilder info = new StringBuilder();
		info.append("Max:" + Max);
		info.append("Min:" + Min);
		info.append("Current:" +Current);
		info.append("UNITS:" +Units);
		info.append("Hours:" +Hours);
		int x = t.testMethod(10);
		info.append(x);
		return info.toString();
	}%>
	</h3>
	<h2>
	<a href=/SS-webproject/Homepage.html>Return</a> <br>
	</h2>
</body>
</html>