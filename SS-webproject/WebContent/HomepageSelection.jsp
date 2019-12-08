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
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" import="java.sql.*"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
		
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Data Entry</title>




<script type="text/javascript">

            var counterAC = 0;

            function moreFieldsAC() {
                counterAC++;
                var newFields = document.getElementById("readrootAC").cloneNode(true);
                newFields.id = '';
                newFields.style.display = 'block';
                var newField = newFields.childNodes;
                for (var i=0;i<newField.length;i++) {
                    var theNameAC = newField[i].name;
                    if (theNameAC)
                        newField[i].name = theNameAC + counterAC;
                }
                var insertHere = document.getElementById("writerootAC");
                insertHere.parentNode.insertBefore(newFields,insertHere);
            }
            window.onload = moreFields;
</script>

<script type="text/javascript">

var counterDC = 0;
    function moreFieldsDC() {
    counterDC++;
    var newFields = document.getElementById("readrootDC").cloneNode(true);
    newFields.id = '';
    newFields.style.display = 'block';
    var newField = newFields.childNodes;
    for (var i=0;i<newField.length;i++) {
        var theNameDC = newField[i].name;
        if (theNameDC)
            newField[i].name = theNameDC + counterDC;
    }
    var insertHere = document.getElementById("writerootDC");
    insertHere.parentNode.insertBefore(newFields,insertHere);
    }
    window.onload = moreFields;
</script>

<style>
header {
    background-color: #ffb6c1;
    color:white;
    text-align:center;
    padding:5px;	
    border-radius: 0px 0px 0px 0px;
    width: 720px;
    border-style: outset;
    text-shadow: 2px 2px #939799;
    margin-left: auto;
    margin-right: auto;
   
}
nav {
    line-height:30px;
    height:75px;
    width:100px;
    float:left;
    padding:5px;	
    margin-left: auto;
    margin-right: auto;      
}

body{
	background-image: url("https://i.imgur.com/N4HoIKM.jpg");
	background-repeat: repeat;
	background-color:#cc99ff;
}

section {
    width:351px;
    text-align:center;
    padding: 65px;
    width: 400px;
    margin:auto;

}
h1 {
   color: white;
   text-shadow: 2px 2px #939799;
   margin-left: auto;
   margin-right: auto;
}
legend{
	color: white;
	text-shadow: 2px 2px #939799;
	margin-left: auto;
    margin-right: auto;
}
label{
	color: white;
	text-shadow: 2px 2px #939799;
	margin-left: auto;
    margin-right: auto;
}
form{
    margin-left: auto;
    margin-right: auto;
}
footer {
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
fieldset {
	background: rgba(40, 230, 21, 1.00);
	width: 400px;
  	margin-left: auto;
    margin-right: auto;
}
fieldset2 {
	background: rgba(240, 240, 240, 1);
	
}

</style>
</head>
<body>

<header>
<h1><font face = "Arial">Sustainable Solutions Energy Manager</font></h1>
</header>
<section>



<%
	String driverName = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://ec2-13-59-224-79.us-east-2.compute.amazonaws.com:3306/SSDB";
	String userId = "rickyremote";
	String password = "xenoblade7";
	
	try {
	Class.forName(driverName);
	} catch (ClassNotFoundException e) {
	e.printStackTrace();
	}
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
<div class="row">
  <div class="column">
<h2 align="center"><font color="#FF00FF"><strong>AC Examples</strong></font></h2>
<table align="center" cellpadding="4" cellspacing="4">
<tr bgcolor="#008000">
<td><b>Name</b></td>
<td><b>Watts</b></td>
</tr>
<%
	try {
	connection = DriverManager.getConnection(
	connectionUrl, userId, password);
	statement = connection.createStatement();
	String sql = "SELECT * FROM AC";
	
	resultSet = statement.executeQuery(sql);
	while (resultSet.next()) {
%>
	<tr bgcolor="#8FBC8F">
	
	<td><%=resultSet.getString("name")%></td>
	<td><%=resultSet.getString("watts")%></td>
</tr>
<%
	}
	
	} catch (Exception e) {
	e.printStackTrace();
	}
%>
</table>

<div class="row">
  <div class="column">
<h2 align="center"><font color="#FF00FF"><strong>DC Examples</strong></font></h2>
<table align="center" cellpadding="4" cellspacing="4">
<tr bgcolor="#008000">
<td><b>Name</b></td>
<td><b>Watts</b></td>
</tr>
<%
	try {
	connection = DriverManager.getConnection(
	connectionUrl, userId, password);
	statement = connection.createStatement();
	String sql = "SELECT * FROM DC";
	
	resultSet = statement.executeQuery(sql);
	while (resultSet.next()) {
%>
	<tr bgcolor="#8FBC8F">
	
	<td><%=resultSet.getString("name")%></td>
	<td><%=resultSet.getString("watts")%></td>
</tr>
<%
	}
	
	} catch (Exception e) {
	e.printStackTrace();
	}
%>
</table>

</div>


	

	<form method="post" action="sss">
		
		<fieldset>
		<h1>Battery</h1>
		Amp Hours: <input type="text" name="batteryAH"> <br />
		Depth of Discharge Limit: <input type="text" name="batteryDODLimit"> <br />
		Current Depth of Discharge: <input type="text" name="batteryCurrentDOD">
		</fieldset>
		<fieldset>
		<h1>Solar</h1>
		Watts: <input type="text" name="solarWatts"> <br />
		Hours of use: <input type="text" name="solarHOU"> <br />
		</fieldset>
		
		
		
		
		<fieldset>
        <h1>DC Appliances</h1>
        <div id="readrootDC" style="display: none">
            <fieldset2>
            <input type="button" value="Remove DC Appliance"
                   onclick="this.parentNode.parentNode.removeChild(this.parentNode);" />
                   
            Watts<input type="text" name="DCWatts">
            Hours of use: <input type="text" name="DCHOU"> <br />
        	</fieldset2>
        </div>
        	<span id="writerootDC"></span>
            <input type="button" onclick="moreFieldsDC()" value="Add addition DC appliance" />
            <br />
            
        </fieldset>





		
		
		<fieldset>
		<h1>AC Appliances</h1>
		<div id="readrootAC" style="display: none">
            <fieldset2>
            <input type="button" value="Remove AC Appliance"
                   onclick="this.parentNode.parentNode.removeChild(this.parentNode);" />
			
            <br />
            Watts<input type="text" name="ACWatts">
            <br />
            Hours of use: <input type="text" name="ACHOU"> <br />
			</fieldset2>
		</div>
            <span id="writerootAC"></span>
            <input type="button" onclick="moreFieldsAC()" value="Add addition AC appliance" />
        </fieldset>
            <br />
        
        
        
        
        
        
         
        
        
        
        
        
        <input type="submit" value="Submit" />
     </form>
</section>
</body>
</html>