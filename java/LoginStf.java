package com;

import java.io.IOException;
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


@WebServlet("/LoginStf")
public class LoginStf extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginStf() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String nic = request.getParameter("nic");
		String pwd = request.getParameter("password");
		
		SaveDataStf sv = new SaveDataStf();
		sv.setId(nic);
		sv.setPassword(pwd);
		
		boolean nicstatus = sv.nullid();
		boolean pwdstatus = sv.nullPwd();
		
		String dbnic = null;
		String dbpwd = null;
		
		
		if(nicstatus && pwdstatus) {
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/itpv01", "root", "root");
				String sql = ("select * from staffdata where nic=? and pwd=?");
				PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
				ps.setString(1, nic);
				ps.setString(2, pwd);
				ResultSet rs = ps.executeQuery();
				
				while(rs.next()) {
					dbnic = rs.getString("nic");
					dbpwd = rs.getString("pwd");
				}
				
				if(nic.equals(dbnic) && pwd.equals(dbpwd)) {
					RequestDispatcher rd = request.getRequestDispatcher("profile.jsp");
					rd.forward(request, response);
					
				}
				else {
					RequestDispatcher rdd = request.getRequestDispatcher("staffLoginError.jsp");
					rdd.forward(request, response);
					
				}
				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
		else {
			
		}
		
		
		
		
		
		
		
		
	}

}
