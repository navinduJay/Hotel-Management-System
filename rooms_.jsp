<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Room Reservation</title>
<link href="css/rooms.css" rel="stylesheet">
</head>
<body>
		<form class="form-horizontal">
		<form action="Rooms" method="post">
<fieldset>

<!-- Form Name -->
<center>
<h1>Room Reservation</h1>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Name">Name</label>  
  <div class="col-md-4">
  <input id="Name" name="user" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Address">Address</label>  
  <div class="col-md-4">
  <input id="Address" name="Address" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Phone">Phone </label>  
  <div class="col-md-4">
  <input id="Phone" name="phone" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="ID Number">ID Number</label>  
  <div class="col-md-4">
  <input id="ID Number" name="id" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Email">Email</label>  
  <div class="col-md-4">
  <input id="Email" name="email" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Multiple Radios (inline) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="No Of Rooms">No Of Rooms</label>
  <div class="col-md-4"> 
    <label class="radio-inline" for="No Of Rooms-0">
      <input type="radio" name="norooms" id="No Of Rooms-0" value="1" checked="checked">
      1
    </label> 
    <label class="radio-inline" for="No Of Rooms-1">
      <input type="radio" name="norooms" id="No Of Rooms-1" value="2">
      2
    </label> 
    <label class="radio-inline" for="No Of Rooms-2">
      <input type="radio" name="norooms" id="No Of Rooms-2" value="3">
      3
    </label> 
    <label class="radio-inline" for="No Of Rooms-3">
      <input type="radio" name="norooms" id="No Of Rooms-3" value="4">
      4
    </label> 
    <label class="radio-inline" for="No Of Rooms-4">
      <input type="radio" name="norooms" id="No Of Rooms-4" value="5">
      5
    </label>
  </div>
</div>

<!-- Multiple Checkboxes -->
<div class="form-group">
  <label class="col-md-4 control-label" for="Room Type">Room Type</label>
  <div class="col-md-4">
  <div class="checkbox">
    <label for="Room Type-0">
      <input type="checkbox" name="type" id="Room Type-0" value="Standard room">
      Standard room
    </label>
	</div>
  <div class="checkbox">
    <label for="Room Type-1">
      <input type="checkbox" name="type" id="Room Type-1" value="Deluxe room">
      Deluxe room
    </label>
	</div>
  <div class="checkbox">
    <label for="Room Type-2">
      <input type="checkbox" name="type" id="Room Type-2" value="Family room">
      Family room
    </label>
	</div>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Arrival Date">Arrival Date</label>  
  <div class="col-md-4">
  <input id="Arrival Date" name="Adate" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Depature Date">Depature Dat</label>  
  <div class="col-md-4">
  <input id="Depature Date" name="Ddate" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Description">Description</label>  
  <div class="col-md-4">
  <input id="Description" name="descrip" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="submit">submit</label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-primary">Reserve</button>
  </div>
</div>

</fieldset>
</form>
</center>		
</body>
</html>