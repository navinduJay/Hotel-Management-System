package backend;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ContactUs
 */
@WebServlet("/ContactUs")
public class ContactUs extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactUs() {
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
		
		
		
		String nameFeed = request.getParameter("name");
		String emailFeed = request.getParameter("email");
		String subjectFeed = request.getParameter("subject");
		String messageFeed = request.getParameter("message");
		
try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sujanee_hotel", "root", "root");
			
			//Statement statement = connection.createStatement();
			
			//statement.executeUpdate("insert into menu_mgmt(menu_type, menu_item_name, menu_item_price, menu_item_pic)values('"+menuType+"','"+menuItemName+"','"+menuItemPrice+"','"+menuItemImage+"')");
			
			
			
			
			PreparedStatement prepStmt = connection.prepareStatement("insert into feedback_customer(name, email, subject, message)values(?, ?, ?, ?)");
			prepStmt.setString(1, nameFeed);
			prepStmt.setString(2, emailFeed);
			prepStmt.setString(3, subjectFeed);
			prepStmt.setString(4, messageFeed);
			
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
	

//Redirects to the following page
		RequestDispatcher dispatch = request.getRequestDispatcher("home_index.jsp");
		dispatch.forward(request, response);


		
		
		
		
		
		
		
		
		
	}

}
