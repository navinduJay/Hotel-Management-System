
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.mysql.cj.Session;

/**
 * Servlet implementation class m_room
 */
@WebServlet("/m_room")
public class m_room extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public m_room() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		try {

			String c_Name = request.getParameter("c_Name");
			String c_id = request.getParameter("c_id");
			String c_PhoneNum = request.getParameter("c_PhoneNum");
			String c_Email = request.getParameter("c_Email");
			String Room_Type = request.getParameter("Room_Type");
			String c_noRom = request.getParameter("c_noRom");
			String c_adult = request.getParameter("c_adult");
			String c_child = request.getParameter("c_child");
			String c_Arrive = request.getParameter("c_Arrive");
			String c_depature = request.getParameter("c_depature");

			String sql = "insert into mrr(cname,cid,cphone,cemail,roomt,nroom,adult,child,adate,ddate) values(?,?,?,?,?,?,?,?,?,?)";
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1", "root", "root");

			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setString(1, c_Name);
			ps.setString(2, c_id);
			ps.setString(3, c_PhoneNum);
			ps.setString(4, c_Email);
			ps.setString(5, Room_Type);
			ps.setString(6, c_noRom);
			ps.setString(7, c_adult);
			ps.setString(8, c_child);
			ps.setString(9, c_Arrive);
			ps.setString(10, c_depature);

			ps.executeUpdate();
			
			
			response.sendRedirect("retrive_Room.jsp");
			
			PrintWriter out = response.getWriter();
			out.println("successfull");
			
			
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
