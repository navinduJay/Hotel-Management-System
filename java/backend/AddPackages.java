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

@MultipartConfig(maxFileSize = 169999999)
@WebServlet("/AddPackages")
public class AddPackages extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AddPackages() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
		String packName = request.getParameter("packageName");
		String packPrice = request.getParameter("packagePrice");
		//String packPic = request.getParameter("packagePhoto2");
		Part part = request.getPart("packagePic");
		InputStream input = null;
		
		if(part != null ) {
			long fileSize = part.getSize();
			String fileContent = part.getContentType();
			input = part.getInputStream();
		}
		
		
	try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sujanee_hotel", "root", "root");
			
			PreparedStatement prepStmt = connection.prepareStatement("insert into food_packages(package_name,package_price,package_pic)values(?, ?, ?)");
			prepStmt.setString(1, packName);
			prepStmt.setString(2, packPrice);
			prepStmt.setBlob(3, input);
			
			int returCode = prepStmt.executeUpdate();
			
			
			if(returCode == 0) {
				request.setAttribute("Message", "Error inserting file");
				getServletContext().getRequestDispatcher("/customerReg.jsp").forward(request, response);
				
			}else {
				
				
				request.setAttribute("Message", "Success");
				getServletContext().getRequestDispatcher("/EditPack.jsp").forward(request, response);
				
				
			}
			
			//Statement statement = connection.createStatement();
			
			//statement.executeUpdate("insert into food_packages(package_name,package_price,package_pic)values('"+packName+"','"+packPrice+"','"+part+"')");
			
			System.out.println("Insertion Successful!");
			
			
			
			
		}catch(Exception e) {
			
			
			System.out.println(e);
			e.printStackTrace();
			
		}
	
	//Redirects to the following page
	RequestDispatcher dispatch = request.getRequestDispatcher("EditPack.jsp");
    dispatch.forward(request, response);
	
		
		
		
	}

}
