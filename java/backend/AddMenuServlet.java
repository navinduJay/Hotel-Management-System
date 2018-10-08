package backend;


import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class AddMenuServlet
 */
@MultipartConfig(maxFileSize = 1073741824)
@WebServlet("/AddMenuServlet")
public class AddMenuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddMenuServlet() {
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
		
		
		
		
		
		
		//response.setContentType("text/html");
		
		String menuType = request.getParameter("menuType");
		String menuItemName = request.getParameter("name");
		String menuItemPrice = request.getParameter("price");
		//String menuItemImage = request.getParameter("pic");
		Part part2 = request.getPart("pic");
		InputStream inputStream = null;
		
		if(part2 != null ) {
			long fileSize = part2.getSize();
			String fileContent = part2.getContentType();
			inputStream = part2.getInputStream();
		}
			
		//setting-up DB connection
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sujanee_hotel", "root", "root");
			
			//Statement statement = connection.createStatement();
			
			//statement.executeUpdate("insert into menu_mgmt(menu_type, menu_item_name, menu_item_price, menu_item_pic)values('"+menuType+"','"+menuItemName+"','"+menuItemPrice+"','"+menuItemImage+"')");
			
			
			
			
			PreparedStatement prepStmt = connection.prepareStatement("insert into menu_mgmt(menu_type, menu_item_name, menu_item_price, menu_item_pic)values(?, ?, ?, ?)");
			prepStmt.setString(1, menuType);
			prepStmt.setString(2, menuItemName);
			prepStmt.setString(3, menuItemPrice);
			prepStmt.setBlob(4, inputStream);
			
			int returCode = prepStmt.executeUpdate();
			
		
			/*
			if(returCode == 0) {
				request.setAttribute("Message", "Error inserting file");
				getServletContext().getRequestDispatcher("/customerReg.jsp").forward(request, response);
				
			}else {
				
				
				request.setAttribute("Message", "Success");
				getServletContext().getRequestDispatcher("/contactUs.jsp").forward(request, response);
				
				
			}
			
			
			*/
			
			
			
			System.out.println("Insertion Successful!");
			
			
			
			
		}catch(Exception e) {
			
			
			System.out.println(e);
			e.printStackTrace();
			
		}
		/*
		//Redirects to the following page
		RequestDispatcher dispatch = request.getRequestDispatcher("menuManagement.jsp");
        dispatch.forward(request, response);
		
        */
		
	}
	
	

}
