<%@ page import="com.devdaily.calendar.Month, java.util.*,java.io.*,java.sql.*,com.devdaily.*" errorPage="error.jsp" %>
<%-- TODO: CLEAN UP THE PAGE TAG ABOVE --%>

<%@ include file="calendarCommon.jsp" %>

<html>
<head>
  <title>Calendar</title>
<link href="css/bootstrap.css" rel="stylesheet">  
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="css/stylish-portfolio.css" rel="stylesheet">
<link href="css/stylish-portfolio.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/demo.css">
<link href="scss/anime.css" rel="stylesheet">
<link rel="stylesheet" href="css/sociel.css">
<link rel="stylesheet" href="css/footer-basic-centered.css">
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
<link rel="StyleSheet" href="css/calendar.css" type="text/css" media="screen" />
<!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<script>
function myFunction() {
    var x = document.getElementById("myBtn").value;
    alert(x);
    //document.getElementById("demo").innerHTML = x;  
}
</script>
</head>

<body id="regular_page">

<div id="calendar_main_div">
<table border="1" cellspacing="0" cellpadding="4" id="calendar_table" class="animated bounceInUp">
  <tr>
    <td width="100%" colspan="7" class="month_year_header">
      <%=monthName%>, <%=intYear%>
    </td>
  </tr>
  <tr class="week_header_row">
    <th width="14%" class="th_day_cell day">Sun</th>
    <th width="14%" class="th_day_cell day">Mon</th>
    <th width="14%" class="th_day_cell day">Tue</th>
    <th width="14%" class="th_day_cell day">Wed</th>
    <th width="14%" class="th_day_cell day">Thu</th>
    <th width="15%" class="th_day_cell day">Fri</th>
    <th width="15%" class="th_day_cell day">Sat</th>
  </tr>
<%
{
  Month aMonth = Month.getMonth( Integer.parseInt(currentMonthString), Integer.parseInt(currentYearString) );
  int [][] days = aMonth.getDays();
  for( int i=0; i<aMonth.getNumberOfWeeks(); i++ )
  {
    %><tr class="week_data_row"><%
    for( int j=0; j<7; j++ )
    {
      if( days[i][j] == 0 )
      {
        %><td class="empty_day_cell">&nbsp;</td><%
      }
      else
      {
        // this is "today"
        if( currentDayInt == days[i][j] && currentMonthInt == aMonth.getMonth() && currentYearInt == aMonth.getYear() )
        {
          %><td class="today_cell"><form action="Calendar" method="post">
          <input type="hidden" value="<%=days[i][j]%>" name="evday">
          <input type="hidden" value="<%=currentMonthInt%>" name="evmonth">
          <input type="hidden" value="<%=intYear%>" name="evyear">
          <input type="submit" value="<%=days[i][j]%>" class="btn">
          </form>
		</td><%
        }
        else
        {
        %><td class="day_cell"><form action="Calendar" method="post">
          <input type="hidden" value="<%=days[i][j]%>" name="evday">
          <input type="hidden" value="<%=intMonth%>" name="evmonth">
          <input type="hidden" value="<%=intYear%>" name="evyear">
          <input type="submit" value="<%=days[i][j]%>" class="btn">
          </form>
		</td><%
        }
      } // end outer if
    } // end for
    %>
    </tr>
  <%}
}
%>
</table>

<%-- end of "calendar_div" --%>
</div>

<!-- navigation links -->
<%-- sorry, i don't know how to get this look without a table --%>
<table id="calendar_nav_table" border="0">
  <tr>
    <td id="prev_link">
      <form method="post">
        <input type="submit" name="PREV" value=" << ">
        <input type="hidden" name="month" value="<%=prevMonth%>">
        <input type="hidden" name="year" value="<%=prevYear%>">
      </form>
    </td>
    <td id="link_to_month_view">
      <!--<form action="calendarMonthPrintView.jsp" method="post">
          <input type="submit" value="  Full-Screen Print View  " class="submit_button"> 
        <input type="hidden" name="month" value="<%=intMonth%>">
        <input type="hidden" name="year"  value="<%=intYear%>">
      </form>-->
    </td>
    <td id="next_link">
      <form method="post">
        <input type="submit" name="NEXT" value=" >> ">
        <input type="hidden" name="month" value="<%=nextMonth%>">
        <input type="hidden" name="year" value="<%=nextYear%>">
      </form>
    </td>
  </tr>
</table>

<p id="demo"></p>
  <!-- navigation links end -->
 <!--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script> --> 
</body>
</html>


