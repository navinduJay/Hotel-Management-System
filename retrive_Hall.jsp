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
<style>
table  {
	width: auto !important;
}

</style>

</head>
<body>



	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col">Name</th> 
				<th scope="col">ID</th> 
				<th scope="col">Phone</th>
				<th scope="col">Email</th>
				<th scope="col">Hall Type</th>
				<th scope="col">Adults</th>
				<th scope="col">Child</th>
				<th scope="col">Function Type</th>
				<th scope="col">Function Date</th>
				<th scope="col">Delete</th>
			</tr>
			</thead>
			</table>

			<%
				try {
					connection = DriverManager.getConnection(connectionUrl + database, userid, password);
					statement = connection.createStatement();
					String sql = "select * from mhr";
					resultSet = statement.executeQuery(sql);
					while (resultSet.next()) {
			%>
			
				

			<table class="table">
				<thead class="thead-light">
					<tr>
						<th scope="col"><%=resultSet.getString("name")%></th>
						<th scope="col"><%=resultSet.getString("id")%></th>
						<th scope="col"><%=resultSet.getString("phone")%></th>
						<th scope="col"><%=resultSet.getString("email")%></th>
						<th scope="col"><%=resultSet.getString("hallt")%></th>
						<th scope="col"><%=resultSet.getString("adult")%></th>
						<th scope="col"><%=resultSet.getString("child")%></th>
						<th scope="col"><%=resultSet.getString("funct")%></th>
						<th scope="col"><%=resultSet.getString("funcd")%></th>
						<%String temp = resultSet.getString("id"); %>
						<th scope="col"><form action=delete.jsp><input type="hidden" value=<%=temp %> name="tid"><button type="submit" class="delete">Delete</button></form></th>
					</tr>
				</thead>
			</table>
		

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