package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddEvent
 */
@WebServlet("/AddEvent")
public class AddEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddEvent() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		String id = request.getParameter("evid");
		String date = request.getParameter("eventDate");
		String startTime = request.getParameter("startTime");
		String endTime = request.getParameter("endTime");
		String name = request.getParameter("eventName");
		String description = request.getParameter("eventDescription");
		String monthNo = request.getParameter("monthNo");
		
		SaveDataStf sd1 = new SaveDataStf();
		sd1.setEventID(id);;
		sd1.setDate(date);
		sd1.setStartTime(startTime);
		sd1.setEndTime(endTime);
		sd1.setName(name);
		sd1.setEventDescription(description);
		
		System.out.println(date);
		
		request.setAttribute("date", sd1);
		
		if(sd1.nullEventID()) {
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/itpv01?autoReconnect=true&useSSL=false", "root", "root");
				Statement st = con.createStatement();
				String sql = "insert into calendar(eventID,eventName,eventDate,eventStartTime,eventEndTime,eventDescription,monthNo) values('"+id+"','"+name+"','"+date+"','"+startTime+"','"+endTime+"','"+description+"','"+monthNo+"')";
				st.executeUpdate(sql);
				System.out.println("insert successful");
				
				RequestDispatcher rq = request.getRequestDispatcher("Schedule.jsp");
				rq.forward(request, response);
				
				
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
			
			
		}
		
		
	}

}
