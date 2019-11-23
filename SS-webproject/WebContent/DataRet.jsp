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
							Gson gsonObj = new Gson();
							Map<Object,Object> map = null;
							List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
							map = new HashMap<Object,Object>(); map.put("label", "1973"); map.put("y", 1883.96); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1974"); map.put("y", 1814.907); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1975"); map.put("y", 1679.773); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1976"); map.put("y", 1794.96); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1977"); map.put("y", 1844.13); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1978"); map.put("y", 1829.944); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1979"); map.put("y", 1911.103); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1980"); map.put("y", 1776.497); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1981"); map.put("y", 1698.761); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1982"); map.put("y", 1501.657); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1983"); map.put("y", 1473.308); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1984"); map.put("y", 1603.901); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1985"); map.put("y", 1558.17); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1986"); map.put("y", 1510.808); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1987"); map.put("y", 1568.088); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1988"); map.put("y", 1647.77); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1989"); map.put("y", 1675.294); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1990"); map.put("y", 1695.454); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1991"); map.put("y", 1650.595); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1992"); map.put("y", 1720.721); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1993"); map.put("y", 1718.338); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1994"); map.put("y", 1748.211); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1995"); map.put("y", 1752.434); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1996"); map.put("y", 1804.221); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1997"); map.put("y", 1823.662); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1998"); map.put("y", 1811.003); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "1999"); map.put("y", 1779.849); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "2000"); map.put("y", 1787.086); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "2001"); map.put("y", 1711.619); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "2002"); map.put("y", 1684.157); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "2003"); map.put("y", 1693.878); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "2004"); map.put("y", 1731.715); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "2005"); map.put("y", 1676.595); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "2006"); map.put("y", 1664.477); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "2007"); map.put("y", 1666.223); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "2008"); map.put("y", 1608.085); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "2009"); map.put("y", 1399.889); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "2010"); map.put("y", 1507.555); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "2011"); map.put("y", 1497.764); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "2012"); map.put("y", 1487.709); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "2013"); map.put("y", 1505.784); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "2014"); map.put("y", 1511.255); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "2015"); map.put("y", 1457.119); list.add(map);
							map = new HashMap<Object,Object>(); map.put("label", "2016"); map.put("y", 1424.077); list.add(map);
							String dataPoints = gsonObj.toJson(list);
					%>
	
	
	
	
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