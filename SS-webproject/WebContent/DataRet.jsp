<%@page import="java.io.File" %>
<%@page import="java.io.FileReader" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@page import="java.io.FileNotFoundException" %>
<%@page import="java.util.Scanner" %>
<%@page import="java.io.File" %>
<%@page import="java.util.*" %>
<%@page import="Main.*" %>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.google.gson.JsonObject"%>

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
    width: 721px;
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
    width: 721px; 
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
	
	
						<%
							Emulator emu = new Emulator();
						emu.setPanel(100,6);
						emu.setBattery(1000,2000,1500);
						emu.addACAppliance(100,3);
						emu.addDCAppliance(100,3);
							Gson gsonObj = new Gson();
							Map<Object,Object> map = null;
							List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
							float[] nums = emu.run(100);
							for( int i = 0 ; i < nums.length; i++)
							{
								map = new HashMap<Object,Object>(); map.put("label", "day "+i); map.put("y", nums[i]); list.add(map);	
							}
							map = new HashMap<Object,Object>(); map.put("label", "1973"); map.put("y", 1883.96); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1974"); map.put("y", 1814.907); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1975"); map.put("y", 1679.773); list.add(map);
							String dataPoints = gsonObj.toJson(list);
						%>
	
	
	
	
	<%!String run() throws SQLException {
		test t = new test();
		String c = t.testMethod("Hello");
		Emulator em = new Emulator();
		StringBuilder info = new StringBuilder();
		info.append("Max:" + Max);
		info.append("Min:" + Min);
		info.append("Current:" +Current);
		info.append("UNITS:" +Units);
		info.append("Hours:" + c);
		return info.toString();
	}%>
						<script type="text/javascript">
						window.onload = function() { 
						 
						var chart = new CanvasJS.Chart("chartContainer", {
							animationEnabled: true,
							theme: "light2",
							title: {
								text: "Total Industrial Sector CO2 Emissions"
							},
							axisX: {
								crosshair: {
									enabled: true,
									snapToDataPoint: true
								}
							},
							axisY: {
								title: "Emissions (in million metric tons)",
								includeZero: false,
								crosshair: {
									enabled: true,
									snapToDataPoint: true,
									valueFormatString: "##0.00",
								}
							},
							data: [{
								type: "area",
								yValueFormatString: "##0.00 million metric tons",
								dataPoints: <%out.print(dataPoints);%> 
							}]
						});
						chart.render();
						 
						}
						</script>
	</h3>
				<div id="chartContainer" style="height: 370px; width: 100%;"></div>
				<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
	<h2>
	<a href=/SS-webproject/Homepage.html>Return</a> <br>
	</h2>
</body>
</html>