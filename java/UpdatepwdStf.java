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

/**
 * Servlet implementation class UpdatepwdStf
 */
@WebServlet("/UpdatepwdStf")
public class UpdatepwdStf extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdatepwdStf() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String nictemp = request.getParameter("nic");
		String answer1 = request.getParameter("ans1");
		String answer2 = request.getParameter("ans2");
		
		SaveDataStf sd = new SaveDataStf();
		sd.setAns1(answer1);
		sd.setAns2(answer2);
		sd.setId(nictemp);
		request.setAttribute("obj", sd);
		
		boolean a1status = sd.nullAns1();
		boolean a2status = sd.nullAns2();
		
		String dbans1 = null;
		String dbans2 = null;
		
		if(a1status && a2status) {
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/itpv01?autoReconnect=true&useSSL=false", "root", "root");
				PreparedStatement ps = (PreparedStatement) con.prepareStatement("select ans1 from staffdata where nic = ('"+nictemp+"')");
				ResultSet rs = ps.executeQuery();
				
				while(rs.next()) {
					dbans1 = rs.getString("ans1");
				}
				
				PreparedStatement pss = (PreparedStatement) con.prepareStatement("select ans2 from staffdata where nic = ('"+nictemp+"')");
				ResultSet rss = pss.executeQuery();
				
				while(rss.next()) {
					dbans2 = rss.getString("ans2");
				}
				
				if(answer1.equals(dbans1) && answer2.equals(dbans2)) {
					
					RequestDispatcher rq = request.getRequestDispatcher("UpdatepwdStf.jsp");
					rq.forward(request, response);
					
				}
				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
		
		
	}

}
