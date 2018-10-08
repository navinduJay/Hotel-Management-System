package com;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.PreparedStatement;
import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

/**
 * Servlet implementation class Register
 */
@WebServlet("/RegisterStf")
public class RegisterStf extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public RegisterStf() {
        super();
    
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
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
		String ques1 = request.getParameter("select1");
		String ques2 = request.getParameter("select2");
		
		PrintWriter out = response.getWriter();
		out.println("entered name ::" +name);
	
		SaveDataStf sd = new SaveDataStf();
		sd.setId(nic);
		sd.setEmail(email);
		sd.setName(name);
		sd.setAddress(address);
		sd.setDob(dob);
		sd.setPassword(pwd);
		sd.setAns1(ans1);
		sd.setAns2(ans2);
		sd.setQues1(ques1);
		sd.setQues2(ques2);
		
		boolean idstatus = sd.nullid();
		boolean emailstatus = sd.nullEmail();
		boolean namestatus = sd.nullName();
		boolean pwdstatus = sd.nullPwd();
		boolean ans1Status = sd.nullAns1();
		boolean ans2Status = sd.nullAns2();
		boolean ques1status = sd.nullQues1();
		boolean ques2status = sd.nullQues2();
		
		String dbnic = null;
		
		if(idstatus && namestatus && pwdstatus && ans1Status && ans2Status && ques1status && ques2status && emailstatus) {
			/*RequestDispatcher rqst = request.getRequestDispatcher("profile.jsp");
			rqst.forward(request, response);*/
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/itpv01?autoReconnect=true&useSSL=false", "root", "root");
				String sql = ("select * from staffdata where nic=?");
				PreparedStatement st = (PreparedStatement) con.prepareStatement(sql);
				st.setString(1, nic);
				ResultSet rs = st.executeQuery();
				
				while(rs.next()) {
					dbnic = rs.getString("nic");
				}	
				
			} catch (ClassNotFoundException | SQLException e1) {
				
				e1.printStackTrace();
			}
			
			//checking if user already exists in the system
			if(!(nic.equals(dbnic))) {
			
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/itpv01?autoReconnect=true&useSSL=false", "root", "root");
				java.sql.Statement stt = conn.createStatement();
				
				stt.executeUpdate("insert into staffdata(nic,name,address,dob,pwd,ans1,ans2,question1,question2,email) values('"+nic+"','"+name+"','"+address+"','"+dob+"','"+pwd+"','"+ans1+"','"+ans2+"','"+ques1+"','"+ques2+"','"+email+"')");
				System.out.println("Data entered");
			} catch (Exception e) {
				e.printStackTrace();	
			}
			
			HttpSession session = request.getSession();
			session.setAttribute("snic", nic);
			session.setAttribute("sname", name);
			RequestDispatcher rqst = request.getRequestDispatcher("profileStf.jsp");
			rqst.forward(request, response);
			
			//Mail function begins
			Properties props = new Properties();
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.socketFactory.port", "465");
			props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.port", "465");
			
			Session session1 = Session.getDefaultInstance(props,
					new javax.mail.Authenticator() {
						protected javax.mail.PasswordAuthentication getPasswordAuthentication(){
							return new javax.mail.PasswordAuthentication("s.cityhotel1@gmail.com", "cityhotel.123");
						}				
					}
					);
			
			try {
				Message message = new MimeMessage(session1);
				message.setFrom(new InternetAddress("pamudithamaduranga2@gmail.com"));
				message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
				message.setSubject("Sujanee City Hotel");
				message.setText("Welcome "+name+ " to Sujanee City Hotel Management System and thanks for starting the registration process.You can access your Management tools once you login.. .\r\n" + "Thankyou");
				Transport.send(message);
				
				out.println("message sent");
				
				
			}catch(Exception e) {
				System.out.println("failed");
			}	
			
			
			//Mail function ends
		
			}
			else {
				RequestDispatcher rq = request.getRequestDispatcher("UserExistRegStf.jsp");
				rq.forward(request, response);
				
			}
				
		}
		else {
			
			RequestDispatcher rqst = request.getRequestDispatcher("NullValRegStf.jsp");
			rqst.forward(request, response);
			
		}
	}

}
