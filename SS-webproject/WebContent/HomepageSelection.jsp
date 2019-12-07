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
<title>Data Entry</title>
<script type="text/javascript">

            var counter = 0;

            function moreFieldsAC() {
                counter++;
                var newFields = document.getElementById("readroot").cloneNode(true);
                newFields.id = '';
                newFields.style.display = 'block';
                var newField = newFields.childNodes;
                for (var i=0;i<newField.length;i++) {
                    var theName = newField[i].name;
                    if (theName)
                        newField[i].name = theName + counter;
                }
                var insertHere = document.getElementById("writeroot");
                insertHere.parentNode.insertBefore(newFields,insertHere);
            }
            function moreFieldsDC() {
                counter++;
                var newFields = document.getElementById("readrootDC").cloneNode(true);
                newFields.id = '';
                newFields.style.display = 'block';
                var newField = newFields.childNodes;
                for (var i=0;i<newField.length;i++) {
                    var theName = newField[i].name;
                    if (theName)
                        newField[i].name = theName + counter;
                }
                var insertHere = document.getElementById("writeroot");
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
    border-radius: 15px 15px 5px 5px;
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
	background-repeat: no-repeat;
	background-color:#cc99ff;
}

section {
    width:351px;
    text-align:center;
    float:left;
    padding: 65px;
    margin-left: auto;
    margin-right: auto; 
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
</style>
</head>
<body>

<header>
<h1><font face = "Arial">Sustainable Solutions Energy Manager</font></h1>
</header>
<section>
	<h1>Battery</h1>
	<form method="post" action="sss">
		<fieldset>
		Min: <input type="text" name="Min"> <br />
		Max: <input type="text" name="Max"> <br />
		Current: <input type="text" name="Current"> <br />
		<h1>Solar</h1>
		Units/Hour: <input type="text" name="Units"> <br />
		<div id="readroot" style="display: none">
            <input type="button" value="Remove AC Appliance"
                   onclick="this.parentNode.parentNode.removeChild(this.parentNode);" /><br /><br />
            <h1>AC appliance</h1>
            Watts<input type="text" name="ACUnits">
        </div>
        
        <div id="readrootDC" style="display: none">
            <input type="button" value="Remove DC Appliance"
                   onclick="this.parentNode.parentNode.removeChild(this.parentNode);" /><br /><br />
            <h1>DC appliance</h1>
            Watts<input type="text" name="DCUnits">
        </div>

            <span id="writeroot"></span>

            <input type="button" onclick="moreFieldsAC()" value="Add addition AC appliance" />
            <input type="button" onclick="moreFieldsDC()" value="Add addition DC appliance" />
            <br />
            <input type="submit" value="Submit" />
		</fieldset>
     </form>
</section>
</body>
</html>