package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SetBasic")
public class SetBasic extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SetBasic() {
        super();
    
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		String basic = request.getParameter("basic");
		String nic = request.getParameter("nic");
		String name = request.getParameter("name");
		
		SaveDataStf sd = new SaveDataStf();
		sd.setId(nic);
		sd.setName(name);
		request.setAttribute("obj", sd);
		
		String dbnic = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/itpv01", "root", "root");
			PreparedStatement ps = con.prepareStatement("select * from transactions where nic=('"+nic+"')");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				dbnic = rs.getString("nic");
				
			}
			if(nic.equals(dbnic)) {
				Statement st = con.createStatement();
				st.executeUpdate("update transactions set basic=('"+basic+"') where nic=('"+nic+"')");
				
				RequestDispatcher rq = request.getRequestDispatcher("SalaryInfo.jsp");
				rq.forward(request, response);
			}
			
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		
	}

}
