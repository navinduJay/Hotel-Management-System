package com;

import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;

public class ReportGen {
	public static void main(String[] args) {
		generateReport();
		
	}
	
	public static void generateReport() {
		JasperReport jasperReport;
		try {
			jasperReport = JasperCompileManager.compileReport("D:\\eclipse-workspace\\FinalITP\\WebContent\\Leaf_Violet.jrxml");
			JRDataSource jrDataSource = new JREmptyDataSource();
			
			
			JasperPrint jasperPrint;
			jasperPrint = JasperFillManager.fillReport(jasperReport, null, jrDataSource);
			JasperExportManager.exportReportToPdfFile(jasperPrint, "D:\\report\\MonthReport.pdf");
			
		}  catch (JRException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
