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

@WebServlet("/Deductions")
public class Deductions extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Deductions() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		String id = request.getParameter("nic");
		String name = request.getParameter("name");
		String amount = request.getParameter("amount");
		String date = request.getParameter("date");
		String basic = request.getParameter("basic");
		
		SaveDataStf sd = new SaveDataStf();
		sd.setId(id);
		sd.setName(name);
		request.setAttribute("obj", sd);
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/itpv01", "root", "root");
			Statement st = con.createStatement();
			st.executeUpdate("insert into transactions(nic,basic,d_amount,d_date) values('"+id+"','"+basic+"','"+amount+"','"+date+"')");
			System.out.println("data entered");
			
			RequestDispatcher rq = request.getRequestDispatcher("SalaryInfo.jsp");
			rq.forward(request, response);
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		
		
	}

}
