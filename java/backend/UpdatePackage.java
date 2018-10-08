package backend;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdatePackage
 */
@WebServlet("/UpdatePackage")
public class UpdatePackage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UpdatePackage() {
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
		
		String packageID = request.getParameter("packageCode");
		String packageNewPrice = request.getParameter("newPrice");
		
		if(!packageNewPrice.isEmpty()) {
			
			try {
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sujanee_hotel", "root", "root");
				
				Statement statement = connection.createStatement();
				
				statement.executeUpdate("update food_packages set package_price = ('"+packageNewPrice+"') where package_id = ('"+packageID+"')");
				
				System.out.println("Updation Successful!");
				
				
				
				
			}catch(Exception e) {
				
				
				System.out.println(e);
				e.printStackTrace();
				
			}
		
		//Redirects to the following page
		RequestDispatcher dispatch = request.getRequestDispatcher("EditPack.jsp");
	    dispatch.forward(request, response);
			
		}
			
			
			
			
		
		
	
		
		
	}

}
