<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@page import="java.sql.*,java.util.*"%>

<body>

<%String tid = request.getParameter("tid"); %>
<%System.out.print(tid); %>
<% //String id=request.getParameter("id"); 
try {
	Class.forName("com.mysql.jdbc.Driver"); 
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1", "root","root");
	Statement st=conn.createStatement(); 
	st.executeUpdate("DELETE FROM mhr WHERE id='"+tid+"'");
	System.out.println("Data Deleted Successfully!"); } 


catch(Exception e)
	{ System.out.print(e); e.printStackTrace(); }

%>

</body>
</html>