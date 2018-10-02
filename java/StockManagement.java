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

@WebServlet("/StockManagement")
public class StockManagement extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public StockManagement() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
		
		
		
		String itemName = request.getParameter("itemName");
		String buyerName = request.getParameter("buyerName");
		String categoryItem = request.getParameter("itemCategory");
		String buyPrice = request.getParameter("buyingPrice");
		String sellPrice = request.getParameter("sellingPrice");
		String itemQty = request.getParameter("itemAmount");
		String priceUnit = request.getParameter("unitPrice");
		String discountPercentage = request.getParameter("discount");
		

		
		
	try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sujanee_hotel", "root", "root");
			
			Statement statement = connection.createStatement();
			
			statement.executeUpdate("insert into stock_mgmt(item_name,buyer,category,buy_price,sell_price,amount,unit_price,discount)values('"+itemName+"','"+buyerName+"','"+categoryItem+"','"+buyPrice+"','"+sellPrice+"','"+itemQty+"','"+priceUnit+"','"+discountPercentage+"')");
			
			System.out.println("Insertion Successful!");
			
			
			
			
		}catch(Exception e) {
			
			
			System.out.println(e);
			e.printStackTrace();
			
		}
	
	//Redirects to the following page
	RequestDispatcher dispatch = request.getRequestDispatcher("inventory.jsp");
    dispatch.forward(request, response);
	
    
	
		
		
		
		
	}

}
