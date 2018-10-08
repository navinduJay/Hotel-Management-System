package backend;

import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;

public class FruitReport {

		public static void main(String[] args) throws Exception {
			
			
			generateReport();
			
			
		}
		

		public static void generateReport() {
			
			

			JasperReport jasperReport;
			try {
				jasperReport = JasperCompileManager.compileReport("D:\\SLIIT\\Projects\\ITP 2018\\Hotel-Management-System\\ITP 2018\\WebContent\\Blank_A4.jrxml");
				JRDataSource jrDataSource = new JREmptyDataSource();
				
				
				JasperPrint jasperPrint;
				jasperPrint = JasperFillManager.fillReport(jasperReport, null, jrDataSource);
				JasperExportManager.exportReportToPdfFile(jasperPrint, "D:\\SLIIT\\Projects\\ITP 2018\\Hotel-Management-System\\ITP 2018\\WebContent\\Blank_A4.pdf");
				
			}  catch (JRException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
			
			
			
		
		
	

	
}