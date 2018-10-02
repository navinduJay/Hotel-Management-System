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
	<form method="post" action="m_hall" class="form-group">


		<fieldset>

			<div class="text-center">
				<legend> Manual Hall Reservation</legend>
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
				<label class="col-md-4 control-label" for="hall_Type">Hall
					Type :</label>
				<div class="col-md-2">
					<select id="hall_Type" name="hall_Type" class="form-control">
						<option value="AC Hall">AC Hall</option>
						<option value="Non AC Hall">Non AC Hall</option>
					</select>
				</div>
			</div>

			<div class="form-row">
				<div class="form-group col-md-6">
					<label class="col-md-4 control-label" for="c_adult">Adults
						:</label>
					<div class="col-md-2">
						<input id="c_adult" name="c_adult" type="text" placeholder=""
							class="form-control input-md" required="">


					</div>

				</div>


				<div class="form-group col-md-6">
					<label class="col-md-4 control-label" for="c_child">Child :</label>
					<div class="col-md-2">
						<input id="c_child" name="c_child" type="text" placeholder=""
							class="form-control input-md" required="">
					</div>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="func_type">Function
					Type :</label>
				<div class="col-md-4">
					<input id="func_type" name="func_type" type="text" placeholder=""
						class="form-control input-md" required="">

				</div>
			</div>



			<div class="form-group ">
				<label class="col-md-4 control-label" for="c_func">Function
					Date :</label>
				<div class="col-md-4">
					<input id="c_func" name="c_func" type="date" placeholder=""
						class="form-control input-md" required="">
				</div>
			</div>

			<div class="form-row">
				<div class="form-group col-md-2">
					<input class="btn btn-success" type="submit" value="Add">
				</div>
				<div class="form-group col-md-6">
					<input class="btn btn-danger" type="reset" value="Reset">
				</div>

			</div>



		</fieldset>
	</form>
	<script src="./js/bootstrap.min.js"></script>
  	<script src="./js/jquery-3.3.1.js"></script>

</body>
</html>