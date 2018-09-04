package com;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SalaryInfo")
public class SalaryInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SalaryInfo() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		String id = request.getParameter("tnic");
		String nm = request.getParameter("tname");
		
		SaveDataStf sd = new SaveDataStf();
		sd.setId(id);
		sd.setName(nm);
		request.setAttribute("obj", sd);
		
		
		RequestDispatcher rq = request.getRequestDispatcher("SalaryInfo.jsp");
		rq.forward(request, response);
	}

}
