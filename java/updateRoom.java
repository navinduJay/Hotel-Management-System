

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updateRoom
 */
@WebServlet("/updateRoom")
public class updateRoom extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateRoom() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
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
			
			try {
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1", "root", "root");
				
				Statement statement = connection.createStatement();
				
				statement.executeUpdate("Update mrr Set cname = ('"+c_Name+"'), cid = ('"+c_id+"') , cphone = ('"+c_PhoneNum+"') , cemail = ('"+c_Email+"') ,roomt = ('"+Room_Type+"') ,nroom = ('"+c_noRom+"'), adult = ('"+c_adult+"') , child = ('"+c_child+"') ,adate = ('"+c_Arrive+"') , ddate = ('"+c_depature+"') where cid = ('"+c_id+"')");
				
				System.out.println("Updation Successful!");
				
				RequestDispatcher rq = request.getRequestDispatcher("retrive_Room.jsp");
				rq.forward(request, response);
				
				
				
				
			}catch(Exception e) {
				
				
				System.out.println(e);
				e.printStackTrace();
				
			}
			
			
	}
}



