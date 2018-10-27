package mypackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;
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
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 * Servlet implementation class Rooms
 */
@WebServlet("/Rooms")
public class Rooms extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Rooms() {
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
		
		try {
			String name = request.getParameter("user");
			String address = request.getParameter("Address");
			String Phone = request.getParameter("phone");
			String ID = request.getParameter("id");
			String Email = request.getParameter("email");
			String NoOfRooms = request.getParameter("norooms");
			String RoomType = request.getParameter("type");
			String ArrivalDate = request.getParameter("Adate");
			String DepatureDate = request.getParameter("Ddate");
			String Description = request.getParameter("descrip");
			
			String sql = "insert into rooms(name,address,Phone,ID,Email,NoOfRooms,RoomType,ArrivalDate,DepatureDate,Description) values(?,?,?,?,?,?,?,?,?,?)";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sakila?useSSL=false","root", "root");
			
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, address);
			ps.setString(3, Phone);
			ps.setString(4, ID);
			ps.setString(5, Email);
			ps.setString(6, NoOfRooms);
			ps.setString(7, RoomType);
			ps.setString(8, ArrivalDate);
			ps.setString(9, DepatureDate);
			ps.setString(10, Description);
			
		
			ps.executeUpdate();
			
			Properties props = new Properties();

			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.socketFactory.port", "465");
			props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.port", "465");

			Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
				protected javax.mail.PasswordAuthentication getPasswordAuthentication() {

					return new javax.mail.PasswordAuthentication("s.cityhotel1@gmail.com", "cityhotel.123");
				}
			}

			);

			try {

				javax.mail.Message message = new MimeMessage(session);
				message.setFrom(new InternetAddress("s.cityhotel1@gmail.com"));
				message.setRecipients(javax.mail.Message.RecipientType.TO, InternetAddress.parse(Email));
				message.setSubject("Reservation Successful");
				message.setText("You have successfully booked "+NoOfRooms+" "+RoomType+" rooms");
				Transport.send(message);
				RequestDispatcher rq = request.getRequestDispatcher("home_index.jsp");
				rq.forward(request, response);

			} catch (Exception e) {
				JOptionPane.showMessageDialog(null, e);
			}
			
			RequestDispatcher rq = request.getRequestDispatcher("home_index.jsp");
			rq.forward(request, response);
			
			PrintWriter out = response.getWriter();
			out.println("You have successfully registered");
			
			
			
		}catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
	}

}
