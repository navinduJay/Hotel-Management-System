package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class AddEmployee
 */
@WebServlet("/AddEmployee")
public class AddEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddEmployee() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		String name = request.getParameter("name");
		String nic =  request.getParameter("nic");
		String jdate = request.getParameter("join");
		
		SaveDataStf sd = new SaveDataStf();
		sd.setId(nic);
		sd.setName(name);
		sd.setJoinDate(jdate);
		
		boolean nicstatus = sd.nullid();
		boolean namestatus = sd.nullName();
		boolean datestatus = sd.nullDate();		
		if(nicstatus && namestatus && datestatus) {
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/itpv01?autoReconnect=true&useSSL=false", "root", "root");
				Statement st = con.createStatement();
				st.executeUpdate("insert into employee(nic,name,joindate) values('"+nic+"','"+name+"','"+jdate+"')");
				st.executeUpdate("insert into transactions(nic) values('"+nic+"')");
				System.out.println("data entered");
				
				RequestDispatcher rq = request.getRequestDispatcher("employees.jsp");
				rq.forward(request, response);
				
				
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
			
		}
		
		
 	}

}
