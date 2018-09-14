package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement;

@WebServlet("/NewpwdStf")
public class NewpwdStf extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public NewpwdStf() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		String newpwd = request.getParameter("pwd");
		String nic = request.getParameter("nic");
		
		SaveDataStf sd = new SaveDataStf();
		sd.setPassword(newpwd);
		sd.setId(nic);
		
		Boolean pwdstatus = sd.nullPwd();
		
		if(pwdstatus) {
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/itpv01?autoReconnect=true&useSSL=false", "root", "root");
				java.sql.Statement stt = con.createStatement();
				
				stt.executeUpdate("update staffdata set pwd=('"+newpwd+"') where nic=('"+nic+"')");
				System.out.println("pwd updated");
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
		
		}
		else {
			
		}
	}

}
