package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class RegisterStf extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterStf() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String dob = request.getParameter("dob");
		String nic = request.getParameter("nic");
		String email = request.getParameter("email");
		String pwd = request.getParameter("password");
		String ans1 = request.getParameter("ans1");
		String ans2 = request.getParameter("ans2");
		
		PrintWriter out = response.getWriter();
		out.println("entered name ::" +name);
	
		SaveDataStf sd = new SaveDataStf();
		sd.setId(nic);
		sd.setName(name);
		sd.setAddress(address);
		sd.setDob(dob);
		sd.setPassword(pwd);
		sd.setAns1(ans1);
		sd.setAns2(ans2);
		
		boolean idstatus = sd.nullid();
		boolean namestatus = sd.nullName();
		boolean pwdstatus = sd.nullPwd();
		boolean ans1Status = sd.nullAns1();
		boolean ans2Status = sd.nullAns2();
		
		if(idstatus && namestatus && pwdstatus && ans1Status && ans2Status) {
			RequestDispatcher rqst = request.getRequestDispatcher("profile.jsp");
			rqst.forward(request, response);
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/itpv01", "root", "root");
				java.sql.Statement st = con.createStatement();
				
				st.executeUpdate("insert into staffdata(nic,name,address,dob,pwd,ans1,ans2) values('"+nic+"','"+name+"','"+address+"','"+dob+"','"+pwd+"','"+ans1+"','"+ans2+"')");
				System.out.println("Data entered");
			} catch (Exception e) {
				e.printStackTrace();	
			}
				
		}
		else {
			out.println("Fill all the feilds");
			RequestDispatcher rqst = request.getRequestDispatcher("staffRegistration.jsp");
			rqst.forward(request, response);
			
		}
	}

}
