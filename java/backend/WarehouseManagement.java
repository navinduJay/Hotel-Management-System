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
 * Servlet implementation class WarehouseManagement
 */
@WebServlet("/WarehouseManagement")
public class WarehouseManagement extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WarehouseManagement() {
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
		
		String itemCategory = request.getParameter("wItemCategory");
		String itemName = request.getParameter("wItemName");
		String itemQuantity = request.getParameter("wItemQty");

		
		
	try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sujanee_hotel", "root", "root");
			
			Statement statement = connection.createStatement();
			
			statement.executeUpdate("insert into warehouse_mgmt(item_name,quantity,category)values('"+itemName+"','"+itemQuantity+"','"+itemCategory+"')");
			
			System.out.println("Insertion Successful!");
			
			
			
			
		}catch(Exception e) {
			
			
			System.out.println(e);
			e.printStackTrace();
			
		}
	
	//Redirects to the following page
	RequestDispatcher dispatch = request.getRequestDispatcher("stock.jsp");
    dispatch.forward(request, response);
	
    
	
		
		
		
	}

}
