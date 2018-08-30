package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement;

@WebServlet("/ForgotpwdStf")
public class ForgotpwdStf extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ForgotpwdStf() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
		
		String nic = request.getParameter("nic");
		
		SaveDataStf sd = new SaveDataStf();
		sd.setId(nic);
		request.setAttribute("obj", sd);
		
		
		PrintWriter out = response.getWriter();
		out.println("entered nic :" +nic);
		
		boolean idstatus = sd.nullid();
		
		String dbnic = null;
		String dbques1 = null;
		
		if(idstatus) {
			
			
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/itpv01?autoReconnect=true&useSSL=false", "root", "root");
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("select * from staffdata where nic=?");
			ps.setString(1,nic);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				dbnic = rs.getString("nic");
			}
			
			if(nic.equals(dbnic)) {
				
				
				RequestDispatcher rq = request.getRequestDispatcher("ResetpwdStf.jsp");
				rq.forward(request, response);
				
			}
		
			
			else {
				RequestDispatcher rqq = request.getRequestDispatcher("NoNic.jsp");
				rqq.forward(request, response);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		
		}
		else {
			out.println("null id");
		}
		
		
	}

}
