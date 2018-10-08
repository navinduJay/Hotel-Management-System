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


@WebServlet("/RemoveStockItemServlet")
public class RemoveStockItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RemoveStockItemServlet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
		String item = request.getParameter("itemCode");
		int product = Integer.parseInt(item);
		
		//setting up DB connection
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sujanee_hotel", "root", "root");
			
			Statement st = connection.createStatement();
			
			st.executeUpdate("delete from stock_mgmt where item_id = ('"+item+"')");
			
			System.out.println("Deletion successful!");
			
			
		}catch(Exception e) {
			
			System.out.print(e);
			e.printStackTrace();
			
		}
		//Re-directs to the following page
		RequestDispatcher dispatch = request.getRequestDispatcher("currentStock.jsp");
        dispatch.forward(request, response);
		
		
		
		
	}

}
