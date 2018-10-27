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
 * Servlet implementation class RemoveWareHouseItem
 */
@WebServlet("/RemoveWareHouseItem")
public class RemoveWareHouseItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveWareHouseItem() {
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
		

		String item = request.getParameter("itemCode");
		int product = Integer.parseInt(item);
		
		
		

		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sujanee_hotel", "root", "root");
			
			Statement st = connection.createStatement();
			
			st.executeUpdate("delete from warehouse_mgmt where item_ID = ('"+item+"')");
			
			System.out.println("Deletion successful!");
			
			
		}catch(Exception e) {
			
			System.out.print(e);
			e.printStackTrace();
			
		}
		//Re-directs to the following page
		RequestDispatcher dispatch = request.getRequestDispatcher("warehouse.jsp");
        dispatch.forward(request, response);
		
		
		
		
	}

}
