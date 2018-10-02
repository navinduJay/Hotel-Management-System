<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String tid = request.getParameter("tid");
	System.out.print(tid);
	String driver = "com.mysql.jdbc.Driver";
	
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
<%
	try {
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1" , "root", "root");
		statement = connection.createStatement();
		String sql = "select * from mhr where id =  '"+tid+"'";
		resultSet = statement.executeQuery(sql);
		while (resultSet.next()) {
%>
<!DOCTYPE html>
<html>
<head>
<title>Update Room</title>
<link rel="stylesheet" href="./css/bootstrap.min.css"></head>
<body>

<div class="text-center">
	<h3>Update hall Reservation Data</h3>
	</div>
	<form method="post" action="m_hall" class="form-horizontal">


		<fieldset>

			<div class="text-center">
				<legend> Manual Hall Reservation</legend>
			</div>
			<legend> </legend>

			<input type="hidden" name="tid" value="<%=resultSet.getString("id")%>">

			<div class="form-group">
				<label class="col-md-4 control-label" for="c_Name">Customer
					Name :</label>
				<div class="col-md-4">
					<input id="c_Name" name="c_Name" type="text" placeholder=""
					value="<%=resultSet.getString("name")%>"
						class="form-control input-md" required="">

				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="c_id">Customer ID
					:</label>
				<div class="col-md-4">
					<input id="c_id" name="c_id" type="text" placeholder=""
					value="<%=resultSet.getString("id")%>"
						class="form-control input-md" required="">

				</div>
			</div>




			<div class="form-group">
				<label class="col-md-4 control-label" for="c_PhoneNum">Phone
					Number :</label>
				<div class="col-md-4">
					<input id="c_PhoneNum" name="c_PhoneNum" type="text" placeholder="" value="<%=resultSet.getString("phone")%>"
						class="form-control input-md" required="">

				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="c_Email">E - Mail
					:</label>
				<div class="col-md-4">
					<input id="c_Email" name="c_Email" type="email" placeholder="" value="<%=resultSet.getString("email")%>"
						class="form-control input-md" required="">
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="hall_Type">Hall
					Type :</label>
				<div class="col-md-2">
					<select id="hall_Type" name="hall_Type" class="form-control" value="<%=resultSet.getString("hallt")%>">
						<option value="AC Hall">AC Hall</option>
						<option value="Non AC Hall">Non AC Hall</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				
					<label class="col-md-4 control-label" for="c_adult" ">Adults
						:</label>
					<div class="col-md-2">
						<input id="c_adult" name="c_adult" type="text" placeholder="" value="<%=resultSet.getString("adult")%>"
							class="form-control input-md" required="">


					</div>

				
				</div>

<div class="form-group">
				
					<label class="col-md-4 control-label" for="c_child" >Child :</label>
					<div class="col-md-2">
						<input id="c_child" name="c_child" type="text" placeholder="" value="<%=resultSet.getString("child")%>"
							class="form-control input-md" required="">
					
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="func_type" >Function
					Type :</label>
				<div class="col-md-4">
					<input id="func_type" name="func_type" type="text" placeholder="" value="<%=resultSet.getString("funct")%>"
						class="form-control input-md" required="">

				</div>
			</div>



			<div class="form-group ">
				<label class="col-md-4 control-label" for="c_func">Function
					Date :</label>
				<div class="col-md-4">
					<input id="c_func" name="c_func" type="date" placeholder=""  value="<%=resultSet.getString("funcd")%>"
						class="form-control input-md" required="">
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-8 control-label">
					<input class="btn btn-success" type="Submit" value="Submit">
					<input class="btn btn-danger" type="Reset" value="Reset"></label>
				</div>

		</fieldset>
	</form>
	<%
		}
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
	<script src="./js/bootstrap.min.js"></script>
  	<script src="./js/jquery-3.3.1.js"></script>
</body>
</html>