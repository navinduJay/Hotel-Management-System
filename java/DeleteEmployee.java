package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteEmployee")
public class DeleteEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeleteEmployee() {
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
		
		String dbnic = null;
		
		if(sd.nullid()) {
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/itpv01?autoReconnect=true&useSSL=false", "root", "root");
				String sql = ("select * from employee where nic=?");
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, nic);
				ResultSet rs = ps.executeQuery();
				
				while(rs.next()) {
					dbnic = rs.getString("nic");
					
				}
				
				
				
				
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
			
			if(nic.equals(dbnic)) {
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/itpv01?autoReconnect=true&useSSL=false", "root", "root");
					java.sql.Statement stt = conn.createStatement();
				
					stt.executeUpdate("delete from employee where nic=('"+dbnic+"')");
					System.out.println("Data deleted");
					
					
				}catch(Exception e) {
					e.printStackTrace();
				}
				
				RequestDispatcher rqst = request.getRequestDispatcher("employees.jsp");
				rqst.forward(request, response);
				
			}else {
				
			}
			
			
			
			
			
			
			
			
		}
		
		
		
		
		
		
		
		
		
	}

}
