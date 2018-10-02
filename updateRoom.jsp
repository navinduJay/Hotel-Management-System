<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String rid = request.getParameter("rid");
	System.out.print(rid);
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
		String sql = "select * from mrr where cid=  '"+rid+"'";
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
	<h3>Update Room Reservation Data</h3>
	</div>
	<form method="post" action="update-process.jsp" class="form-horizontal">
	
	<fieldset>
	
		<input type="hidden" name="rid" value="<%=resultSet.getString("cid")%>">
		
		
		
		<div class="form-group">
				<label class="col-md-4 control-label" for="c_Name">Customer
					Name :</label>
				<div class="col-md-4">
					<input id="c_Name" name="c_Name" type="text" placeholder=""
						value="<%=resultSet.getString("cname")%>" class="form-control input-md" required="">

				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="c_id">Customer ID
					:</label>
				<div class="col-md-4">
					<input id="c_id" name="c_id" type="text" placeholder=""
						value="<%=resultSet.getString("cid")%>"  class="form-control input-md" required="">

				</div>
			</div>


			<div class="form-group">
				<label class="col-md-4 control-label" for="c_PhoneNum">Phone
					Number :</label>
				<div class="col-md-4">
					<input id="c_PhoneNum" name="c_PhoneNum" type="text" placeholder=""
					value="<%=resultSet.getString("cphone")%>"  class="form-control input-md" required="">

				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="c_Email">E - Mail
					:</label>
				<div class="col-md-4">
					<input id="c_Email" name="c_Email" type="email" placeholder=""
						value="<%=resultSet.getString("cemail")%>"  class="form-control input-md" required="">
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="Room_Type">Room
					Type :</label>
				<div class="col-md-2">
					<select id="Room_Type" name="Room_Type" value="<%=resultSet.getString("roomt")%>"  class="form-control">
						<option value="Single">Single</option>
						<option value="Double">Double</option>
						<option value="Triple">Triple</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="c_noRom">Number
					of Rooms :</label>
				<div class="col-md-2">
					<select id="c_noRom" name="c_noRom" value="<%=resultSet.getString("nroom")%>"  class="form-control">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				
					<label class="col-md-4 control-label" for="c_adult">Adults
						:</label>
					<div class="col-md-2">
						<select id="c_adult" name="c_adult"value="<%=resultSet.getString("adult")%>"  class="form-control">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</div>
					</div>
					
					<div class="form-group ">
					<label class="col-md-4 control-label" for="c_child">Child :</label>
					<div class="col-md-2">
						<select id="c_child" name="c_child" value="<%=resultSet.getString("child")%>" class="form-control">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</div>
				</div>
			
			
			<div class="form-group">
				
					<label class="col-md-4 control-label" for="c_Arrive">Arrive
						Date :</label>
					<div class="col-md-4">
						<input id="c_Arrive" name="c_Arrive" type="date" placeholder="Click to select a Date"value="<%=resultSet.getString("adate")%>" class="form-control input-md" required="">
					</div>
				</div>
				

      <div class="form-group ">
				
					<label class="col-md-4 control-label" for="c_depature">Departure
						Date :</label>
					<div class="col-md-4">
						<input id="c_depature" name="c_depature" type="date" placeholder="Click to select a Date" value="<%=resultSet.getString("ddate")%>" class="form-control input-md" required="">
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