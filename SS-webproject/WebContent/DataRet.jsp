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
    background-color: #ffb6c1;
    color:white;
    text-align:center;
    padding:5px;	
    border-radius: 15px 15px 5px 5px;
    width: 720px;
    border-style: outset;
    text-shadow: 2px 2px #939799;
    margin-left: auto;
    margin-right: auto;
   
}
body{
	background-image: url("https://i.imgur.com/N4HoIKM.jpg");
	background-repeat: no-repeat;
	background-color:#cc99ff;
}
 
h2 {
    background-color:#ffb6c1;
    color:white;
    clear:both;
    text-align:center;
    padding:5px;	
    border-style: outset; 	
    border-radius: 5px 5px 15px 15px;
    width: 720px; 
    margin-left: auto;
    margin-right: auto;
}
h3{
   color: white;
   text-shadow: 2px 2px #939799;
   text-align: center;
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
			info.append("Febuary Usage:" + "<br>");
			info.append("Beam Irradiance(W/m^2): 115316\n" + "<br>");
			info.append("Diffuse sfvgbraavthgrsIrradiance(W/m^2): 25134\n" + "<br>");
			info.append("Plance of Array Irradiance/(W/m^2): 96976\n" + "<br>");
			info.append("Total Irradiance(W/m^2): 237426\n" + "<br>");
			info.append("DC Array Output: 348401 W" + "<br>");
			info.append("AC System  Output: 333487 W" + "<br>");
		}
		if (Month.equals("3")){
			info.append("March Usage:\n"+ "<br>");
			info.append("Beam Irradiance(W/m^2): 115316\n" + "<br>");
			info.append("Diffuse Irradiance(W/m^2): 25134\n" + "<br>");
			info.append("Plance of Array Irradiance/(W/m^2): 96976\n" + "<br>");
			info.append("Total Irradiance(W/m^2): 237426\n" + "<br>");
			info.append("DC Array Output: 348401 W" + "<br>");
			info.append("AC System  Output: 333487 W" + "<br>");
		}
		if (Month.equals("4")){
			info.append("April Usage:\n"+ "<br>");
			info.append("Beam Irradiance(W/m^2): 115316\n" + "<br>");
			info.append("Diffuse Irradiance(W/m^2): 25134\n" + "<br>");
			info.append("Plance of Array Irradiance/(W/m^2): 96976\n" + "<br>");
			info.append("Total Irradiance(W/m^2): 237426\n" + "<br>");
			info.append("DC Array Output: 348401 W" + "<br>");
			info.append("AC System  Output: 333487 W" + "<br>");
		}
		if (Month.equals("5")){
			info.append("May Usage:\n"+ "<br>");
			info.append("Beam Irradiance(W/m^2): 115316\n" + "<br>");
			info.append("Diffuse Irradiance(W/m^2): 25134\n" + "<br>");
			info.append("Plance of Array Irradiance/(W/m^2): 96976\n" + "<br>");
			info.append("Total Irradiance(W/m^2): 237426\n" + "<br>");
			info.append("DC Array Output: 348401 W" + "<br>");
			info.append("AC System  Output: 333487 W" + "<br>");
		}
		if (Month.equals("6")){
			info.append("june Usage:\n"+ "<br>");
			info.append("Beam Irradiance(W/m^2): 115316\n" + "<br>");
			info.append("Diffuse Irradiance(W/m^2): 25134\n" + "<br>");
			info.append("Plance of Array Irradiance/(W/m^2): 96976\n" + "<br>");
			info.append("Total Irradiance(W/m^2): 237426\n" + "<br>");
			info.append("DC Array Output: 348401 W" + "<br>");
			info.append("AC System  Output: 333487 W" + "<br>");
		}
		if (Month.equals("7")){
			info.append("July Usage:\n"+ "<br>");
			info.append("Beam Irradiance(W/m^2): 115316\n" + "<br>");
			info.append("Diffuse Irradiance(W/m^2): 25134\n" + "<br>");
			info.append("Plance of Array Irradiance/(W/m^2): 96976\n" + "<br>");
			info.append("Total Irradiance(W/m^2): 237426\n" + "<br>");
			info.append("DC Array Output: 348401 W" + "<br>");
			info.append("AC System  Output: 333487 W" + "<br>");
		}
		if (Month.equals("8")){
			info.append("Auguest Usage:\n"+ "<br>");
			info.append("Beam Irradiance(W/m^2): 115316\n" + "<br>");
			info.append("Diffuse Irradiance(W/m^2): 25134\n" + "<br>");
			info.append("Plance of Array Irradiance/(W/m^2): 96976\n" + "<br>");
			info.append("Total Irradiance(W/m^2): 237426\n" + "<br>");
			info.append("DC Array Output: 348401 W" + "<br>");
			info.append("AC System  Output: 333487 W" + "<br>");
		}
		if (Month.equals("9")){
			info.append("September Usage:\n"+ "<br>");
			info.append("Beam Irradiance(W/m^2): 115316\n" + "<br>");
			info.append("Diffuse Irradiance(W/m^2): 25134\n" + "<br>");
			info.append("Plance of Array Irradiance/(W/m^2): 96976\n" + "<br>");
			info.append("Total Irradiance(W/m^2): 237426\n" + "<br>");
			info.append("DC Array Output: 348401 W" + "<br>");
			info.append("AC System  Output: 333487 W" + "<br>");
		}
		if (Month.equals("10")){
			info.append("October Usage:\n"+ "<br>");
			info.append("Beam Irradiance(W/m^2): 115316\n" + "<br>");
			info.append("Diffuse Irradiance(W/m^2): 25134\n" + "<br>");
			info.append("Plance of Array Irradiance/(W/m^2): 96976\n" + "<br>");
			info.append("Total Irradiance(W/m^2): 237426\n" + "<br>");
			info.append("DC Array Output: 348401 W" + "<br>");
			info.append("AC System  Output: 333487 W" + "<br>");
		}
		if (Month.equals("11")){
			info.append("November Usage:\n"+ "<br>");
			info.append("Beam Irradiance(W/m^2): 115316\n" + "<br>");
			info.append("Diffuse Irradiance(W/m^2): 25134\n" + "<br>");
			info.append("Plance of Array Irradiance/(W/m^2): 96976\n" + "<br>");
			info.append("Total Irradiance(W/m^2): 237426\n" + "<br>");
			info.append("DC Array Output: 348401 W" + "<br>");
			info.append("AC System  Output: 333487 W" + "<br>");
		}
		if (Month.equals("12")){
			info.append("December Usage:\n"+ "<br>");
			info.append("Beam Irradiance(W/m^2): 115316\n" + "<br>");
			info.append("Diffuse Irradiance(W/m^2): 25134\n" + "<br>");
			info.append("Plance of Array Irradiance/(W/m^2): 96976\n" + "<br>");
			info.append("Total Irradiance(W/m^2): 237426\n" + "<br>");
			info.append("DC Array Output: 348401 W" + "<br>");
			info.append("AC System  Output: 333487 W" + "<br>");
		}
		if (Month.equals("13")){
			info.append("Total Usage:\n"+ "<br>");
			info.append("Beam Irradiance(W/m^2): 135316\n" + "<br>");
			info.append("Diffuse Irradiance(W/m^2): 55134\n" + "<br>");
			info.append("Plance of Array Irradiance/(W/m^2): 20976\n" + "<br>");
			info.append("Total Irradiance(W/m^2): 211426\n" + "<br>");
			info.append("DC Array Output: 34401 W" + "<br>");
			info.append("AC System  Output: 332831 W" + "<br>");
		}
		
		return info.toString();
	}%>
	</h3>
	<h2>
	<a href=/SS-webproject/Homepage.html>Return</a> <br>
	</h2>
</body>
</html>