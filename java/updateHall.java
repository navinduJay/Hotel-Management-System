

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updateHall
 */
@WebServlet("/updateHall")
public class updateHall extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateHall() {
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
		
		try {

			String c_Name = request.getParameter("c_Name");
			String c_id = request.getParameter("c_id");
			String c_PhoneNum = request.getParameter("c_PhoneNum");
			String c_Email = request.getParameter("c_Email");
			String hall_Type = request.getParameter("hall_Type");
			String c_adult = request.getParameter("c_adult");
			String c_child = request.getParameter("c_child");
			String func_type = request.getParameter("func_type");
			String c_func = request.getParameter("c_func");
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1", "root", "root");
			
			Statement statement = connection.createStatement();
			
			statement.executeUpdate("Update mhr Set name = ('"+c_Name+"'), id = ('"+c_id+"') , phone = ('"+c_PhoneNum+"') , email = ('"+c_Email+"') ,hallt = ('"+hall_Type+"') ,adult = ('"+c_adult+"'), child = ('"+c_child+"') , funct = ('"+func_type+"') , funcd = ('"+c_func+"') where id = ('"+c_id+"')");
			
			System.out.println("Updation Successful!");
			
			
			
			
		}catch(Exception e) {
			
			
			System.out.println(e);
			e.printStackTrace();
			
		}
		
		
	}

}
