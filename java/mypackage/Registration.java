
package mypackage;

import java.util.Properties;
import javax.mail.*;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;



/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
			String name = request.getParameter("user");
			String password = request.getParameter("password");
			String Repassword = request.getParameter("repassword");
			String fname = request.getParameter("name");
			String Address = request.getParameter("address");
			String Phone = request.getParameter("phone");
			String Email = request.getParameter("email");
			String Gender = request.getParameter("gender");
			String NIC = request.getParameter("nic");
			
			//checking
			String dbNIC = null;
			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/sakila?useSSL=false","root", "root");
				String sql1 = ("select * from registration where NIC = ?");
				PreparedStatement ps1 = conn1.prepareStatement(sql1);
				ps1.setString(1, NIC);
				ResultSet rs = ps1.executeQuery();
				
				while(rs.next()) {
					dbNIC = rs.getString("NIC");
				}
				
			}catch (ClassNotFoundException | SQLException e1) {
				e1.printStackTrace();
			}
		
			if(!(NIC.equals(dbNIC))) {
				
			try {
			
			String sql = "insert into registration(name,password,Repassword,fname,Address,Phone,Email,Gender,NIC) values(?,?,?,?,?,?,?,?,?)";
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sakila?useSSL=false","root", "root");
			
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, password);
			ps.setString(3, Repassword);
			ps.setString(4, fname);
			ps.setString(5, Address);
			ps.setString(6, Phone);
			ps.setString(7, Email);
			ps.setString(8, Gender);
			ps.setString(9, NIC);
			
			
			ps.executeUpdate();
			PrintWriter out = response.getWriter();
			//out.println("You have successfully registered");
		
			SaveDataNi sa = new SaveDataNi();
			sa.setName(name);
			sa.setPassword(password);
			sa.setRepassword(Repassword);
			sa.setFname(fname);
			sa.setAddress(Address);
			sa.setPhone(Phone);
			sa.setEmail(Email);
			sa.setGender(Gender);
			sa.setNIC(NIC);
			request.setAttribute("object", sa);
			
			HttpSession session = request.getSession();
			session .setAttribute("name", name);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("prfle.jsp");
			dis.forward(request, response);
			
			//Email

			
			
			
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
			
			
			
			
			}	
			else {
				RequestDispatcher dis1 = request.getRequestDispatcher("home_index.jsp");
				dis1.forward(request, response);
			}

		
			

	}

}
