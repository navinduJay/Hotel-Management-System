package backend;


import java.io.IOException;
import java.sql.Blob;
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
 * Servlet implementation class AddMenuServlet
 */
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

		doGet(request, response);


		response.setContentType("text/html");

		String menuType = request.getParameter("menuType");
		String menuItemName = request.getParameter("name");
		String menuItemPrice = request.getParameter("price");
		String menuItemImage = request.getParameter("pic");

		//setting-up DB connection

		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sujanee_hotel", "root", "root");

			Statement statement = connection.createStatement();

			statement.executeUpdate("insert into menu_mgmt(menu_type, menu_item_name, menu_item_price, menu_item_pic)values('"+menuType+"','"+menuItemName+"','"+menuItemPrice+"','"+menuItemImage+"')");

			System.out.println("Insertion Successful!");


		}catch(Exception e) {


			System.out.println(e);
			e.printStackTrace();

		}
		//Redirects to the following page
		RequestDispatcher dispatch = request.getRequestDispatcher("menuManagement.jsp");
        dispatch.forward(request, response);


	}



}
