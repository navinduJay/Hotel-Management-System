package com;
import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/GenerateReport")
public class GenerateReport extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public GenerateReport() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		JasperReport jasperReport;
		try {
			jasperReport = JasperCompileManager.compileReport("D:\\eclipse-workspace\\FinalITP\\WebContent\\ScheduleReport.jrxml");
			JRDataSource jrDataSource = new JREmptyDataSource();
			
			
			JasperPrint jasperPrint;
			jasperPrint = JasperFillManager.fillReport(jasperReport, null, jrDataSource);
			JasperExportManager.exportReportToPdfFile(jasperPrint, "D:\\report\\MonthReport.pdf");
			
		}  catch (JRException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		/*RequestDispatcher rq = request.getRequestDispatcher("Schedule.jsp");
		rq.forward(request, response);*/
		
		
	}

}
