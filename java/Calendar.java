package com;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Calendar")
public class Calendar extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Calendar() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		String dayno = request.getParameter("evday");
		String month = request.getParameter("evmonth");
		String year = request.getParameter("evyear");
		
		
		Integer i = new Integer(month);
		i = i+1;
		String monthFormat=null;
		if(i<10) {
			monthFormat = "0"+i;
			System.out.println(monthFormat);
		}
		monthFormat = ""+i;
		
		String completeDate = year+"-"+monthFormat+"-"+dayno;
		
		System.out.println(completeDate);
		
		if(dayno != null) {
			SaveDataStf s1 = new SaveDataStf();
			s1.setDate(completeDate);
			request.setAttribute("date", s1);
			
			RequestDispatcher rq = request.getRequestDispatcher("Schedule.jsp");
			rq.forward(request, response);
	
		}
		RequestDispatcher rq = request.getRequestDispatcher("calendar.jsp");
		rq.forward(request, response);

		
		
		

	}

}
