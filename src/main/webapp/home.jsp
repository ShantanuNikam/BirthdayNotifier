<!DOCTYPE html >

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.example.uproot.Crud"%>
    <%@ page import="com.example.uproot.Logic" %>
    <%@ page import="com.example.uproot.CurrentDate" %>
     <%@ page import="com.example.uproot.Date" %>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.lang.*" %>
<%@ page import="java.io.*" %> 
<%@ page import ="javafx.util.Pair" %>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>Home</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
	
    <div id="header" style="text-align:center"></div>
    <div id="search"><form action="">
    <input class="textfield"  type="text" id="query" size="45" maxlength="100" name="q" value="" >
    <input class="button" type="submit" value="Search"></form></div>
    <div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/welcome" class="navbar-brand">WebApp</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/login">Login</a></li>
					<li><a href="/register">New Registration</a></li>
					<li><a href="/show-users">All Users</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container" id="homediv">
		<div class="jumbotron text-center">
			<h1>Welcome to Web Application</h1>
		</div>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
<table width="59%" border="1">
<TABLE cellpadding="15" border="1" style="background-color: #ffffcc;">
   <%
   Crud os = new Crud();
   Pair<ResultSet,Connection> p=os.Connect();
   ResultSet rs = p.getKey();
   Connection con= p.getValue();
while (rs.next()) {
%>
<TR>
<TD><%=rs.getInt(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getInt(3)%></TD>
<TD><%=rs.getInt(4)%></TD>
<TD><%=rs.getInt(5)%></TD>
<%
 
 int date = rs.getInt(3);
 int month = rs.getInt(4);
 int year = rs.getInt(5);
 Date d1 = new Date(date,month,year);
 CurrentDate d = new CurrentDate();
 Date d2 =new Date (Integer.parseInt(d.Curentyear()),Integer.parseInt(d.Currentmonth()),Integer.parseInt(d.Currentdate()));
 Logic o = new Logic();
 int count=o.getDifference(d1, d2);
 
%>
<TD><%=count%></TD>
</TR>
<% 
} 
%>
<%

// close all the connections.
rs.close();
con.close();

%>


</body>
</html>