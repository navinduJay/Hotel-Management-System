<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/bootstrap.min.css">
</head>
<body>
	<form method="post" action="m_room" class="form-horizontal">


		<fieldset>

			<div class="text-center">
				<legend> Manual Room Reservation</legend>
			</div>
			<legend> </legend>


			<div class="form-group">
				<label class="col-md-4 control-label" for="c_Name">Customer
					Name :</label>
				<div class="col-md-4">
					<input id="c_Name" name="c_Name" type="text" placeholder=""
						class="form-control input-md" required="">

				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="c_id">Customer ID
					:</label>
				<div class="col-md-4">
					<input id="c_id" name="c_id" type="text" placeholder=""
						class="form-control input-md" required="">

				</div>
			</div>


			<div class="form-group">
				<label class="col-md-4 control-label" for="c_PhoneNum">Phone
					Number :</label>
				<div class="col-md-4">
					<input id="c_PhoneNum" name="c_PhoneNum" type="text" placeholder=""
						class="form-control input-md" required="">

				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="c_Email">E - Mail
					:</label>
				<div class="col-md-4">
					<input id="c_Email" name="c_Email" type="email" placeholder=""
						class="form-control input-md" required="">
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="Room_Type">Room
					Type :</label>
				<div class="col-md-2">
					<select id="Room_Type" name="Room_Type" class="form-control">
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
					<select id="c_noRom" name="c_noRom" class="form-control">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
				</div>
			</div>


			<div class="form-row">
				<div class="form-group col-md-4">
					<label class="col-md-4 control-label" for="c_adult">Adults
						:</label>
					<div class="col-md-2">
						<select id="c_adult" name="c_adult" class="form-control">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</div>

				</div>


				<div class="form-group col-md-4">
					<label class="col-md-4 control-label" for="c_child">Child :</label>
					<div class="col-md-2">
						<select id="c_child" name="c_child" class="form-control">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</div>
				</div>
			</div>

			<div class="form-row">
				<div class="form-group col-md-8">
					<label class="col-md-4 control-label" for="c_Arrive">Arrive
						Date :</label>
					<div class="col-md-4">
						<input id="c_Arrive" name="c_Arrive" type="date" placeholder=""
							class="form-control input-md" required="">
					</div>
				</div>


				<div class="form-group col-md-8">
					<label class="col-md-4 control-label" for="c_depature">Departure
						Date :</label>
					<div class="col-md-4">
						<input id="c_depature" name="c_depature" type="date"
							placeholder="" class="form-control input-md" required="">
					</div>
				</div>

				<div class="form-group col-md-8">
					<input class="btn btn-success" type="Submit" value="Submit"> <input
						class="btn btn-danger" type="Reset" value="Reset">
				</div>

			</div>



		</fieldset>
	</form>
	<script src="./js/bootstrap.min.js"></script>
  	<script src="./js/jquery-3.3.1.js"></script>

</body>
</html>