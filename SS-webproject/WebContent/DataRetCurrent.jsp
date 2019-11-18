<%@page import="java.io.File" %>
<%@page import="java.io.FileReader" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@page import="java.io.FileNotFoundException" %>
<%@page import="java.util.Scanner" %>
<%@page import="java.io.File" %>
<%@page import="java.lang.Math" %>
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

	<h1 align="center"> Current Usage </h1>
	<h3>
	<%=run()%>
	<%!String run() throws SQLException {
		StringBuilder info = new StringBuilder();
		double avalible = 199690;
		double totalac = 90046;
		double totaldc = 104058;
		double output = totalac + totaldc;
		info.append("Beam Irradiance(W/m^2): 87560\n" + "<br>");
		info.append("Diffuse Irradiance(W/m^2): 47350\n" + "<br>");
		info.append("Plance of Array Irradiance/(W/m^2): 64780\n" + "<br>");
		info.append("Total Irradiance(W/m^2): 199690\n" + "<br>");
		info.append("DC Array Output: 194058 W" + "<br>");
		info.append("AC System  Output: 100046 W" + "<br>");
		info.append("<br>");
		info.append("<br>");
		info.append("Current Usage is at: " + Math.round((output/avalible)*100) + "% Limiting appliance usage is advised");
		return info.toString();
	}%>
	</h3>
	<h2>
	<a href=/SS-webproject/Homepage.html>Return</a> <br>
	</h2>
</body>
</html>