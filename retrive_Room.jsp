<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String id = request.getParameter("userid");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "db1";
	String userid = "root";
	String password = "root";

	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {

		e.printStackTrace();
	}

	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/bootstrap.min.css">
</head>
<body>

	<table class="table">
		<thead class="thead-dark">
		<tr>
			<th scope="col">Name</th>
			<th scope="col">ID</th>
			<th scope="col">Phone</th>
			<th scope="col">Email</th>
			<th scope="col">Room Type</th>
			<th scope="col">No of Rooms</th>
			<th scope="col">Adults</th>
			<th scope="col">Child</th>
			<th scope="col">Arrive Date</th>
			<th scope="col">Departure Date</th>
		</tr>

		<%
			try {
				connection = DriverManager.getConnection(connectionUrl + database, userid, password);
				statement = connection.createStatement();
				String sql = "select * from mrr";
				resultSet = statement.executeQuery(sql);
				while (resultSet.next()) {
		%>
		<tr>
			<th scope="col"><%=resultSet.getString("cname")%></th>
			<th scope="col"><%=resultSet.getString("cid")%></th>
			<th scope="col"><%=resultSet.getString("cphone")%></th>
			<th scope="col"><%=resultSet.getString("cemail")%></th>
			<th scope="col"><%=resultSet.getString("roomt")%></th>
			<th scope="col"><%=resultSet.getString("nroom")%></th>
			<th scope="col"><%=resultSet.getString("adult")%></th>
			<th scope="col"><%=resultSet.getString("child")%></th>
			<th scope="col"><%=resultSet.getString("adate")%></th>
			<th scope="col"><%=resultSet.getString("ddate")%></th>
			<%String temp = resultSet.getString("id"); %>
			<th scope="col"><form action=delete.jsp><input type="hidden" value=<%=temp %> name="tid"><button type="submit" class="delete">Delete</button></form></th>
		</tr>
		<%
			}
				connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</table>
	<script src="./js/bootstrap.min.js"></script>
  	<script src="./js/jquery-3.3.1.js"></script>
</body>
</html>