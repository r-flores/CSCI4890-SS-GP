<%@page import="java.io.File" %>
<%@page import="java.io.FileReader" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@page import="java.io.FileNotFoundException" %>
<%@page import="java.util.Scanner" %>
<%@page import="java.io.File" %>
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

	<%!String Month;%>
	<%Month = request.getParameter("myList");%>
	<%=run()%>
	<%!String run() throws SQLException {
		StringBuilder info = new StringBuilder();
		if (Month.equals("1")){
			info.append("January Usage :" + "<br>");
			info.append("Beam Irradiance(W/m^2): 115316\n" + "<br>");
			info.append("Diffuse Irradiance(W/m^2): 25134\n" + "<br>");
			info.append("Plance of Array Irradiance/(W/m^2): 96976\n" + "<br>");
			info.append("Total Irradiance(W/m^2): 237426\n" + "<br>");
			info.append("DC Array Output: 348401 W" + "<br>");
			info.append("AC System  Output: 333487 W" + "<br>");
			
		}
		if (Month.equals("2")){
			info.append("Febuary Usage:\n");
		}
		if (Month.equals("3")){
			info.append("March Usage:\n");
		}
		if (Month.equals("4")){
			info.append("April Usage:\n");
		}
		if (Month.equals("5")){
			info.append("May Usage:\n");
		}
		if (Month.equals("6")){
			info.append("june Usage:\n");
		}
		if (Month.equals("7")){
			info.append("July Usage:\n");
		}
		if (Month.equals("8")){
			info.append("Auguest Usage:\n");
		}
		if (Month.equals("9")){
			info.append("September Usage:\n");
		}
		if (Month.equals("10")){
			info.append("October Usage:\n");
		}
		if (Month.equals("11")){
			info.append("November Usage:\n");
		}
		if (Month.equals("12")){
			info.append("December Usage:\n");
		}
		if (Month.equals("13")){
			info.append("Total Usage:\n");
		}
		
		return info.toString();
	}%>
	</h3>
	<h2>
	<a href=/SS-webproject/Homepage.html>Return</a> <br>
	</h2>
</body>
</html>