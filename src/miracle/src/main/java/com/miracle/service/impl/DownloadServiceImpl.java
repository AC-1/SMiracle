package com.miracle.service.impl;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.HashMap;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.miracle.common.ExporterUtil;
import com.miracle.common.TokenUtil;
import com.miracle.service.DownloadService;

@Service
public class DownloadServiceImpl implements DownloadService{
	
	private final Logger logger = Logger.getLogger(getClass());
	
	@Autowired
	private ExporterUtil exporterUtil;
	
	@Autowired
	private TokenUtil tokenUtil;
	
	@Override
	public void download(String type, String token, String report, 
			String reportName, JRDataSource jrDataSource, HttpServletResponse response) {

		try {
			// 1. Add report parameters
			HashMap<String, Object> params = new HashMap<String, Object>(); 
			params.put("title", reportName);

			// 2.  Retrieve template
			InputStream reportStream = this.getClass().getResourceAsStream(report); 

			// 3. Convert template to JasperDesign
			JasperDesign jd = JRXmlLoader.load(reportStream);

			// 4. Compile design to JasperReport
			JasperReport jr = JasperCompileManager.compileReport(jd);
			// 5. Create the JasperPrint object
			JasperPrint jp = JasperFillManager.fillReport(jr, params, jrDataSource);
			
			// 6. Create an output byte stream where data will be written
			ByteArrayOutputStream baos = new ByteArrayOutputStream();

			// 7. Export report
			exporterUtil.export(type, reportName, jp, response, baos);

			// 8. Write to reponse stream
			write(token, response, baos);

		} catch (JRException jre) {
			logger.error("Unable to process download");
			throw new RuntimeException(jre);
		}
	}
	
	@Override
	public void download(String type, String token, String report, String reportName, HashMap<String, Object> params, JRDataSource jrDataSource, HttpServletResponse response) {

		try {
			InputStream reportStream = this.getClass().getResourceAsStream(report); 

			// 3. Convert template to JasperDesign
			JasperDesign jd = JRXmlLoader.load(reportStream);

			// 4. Compile design to JasperReport
			JasperReport jr = JasperCompileManager.compileReport(jd);
			// 5. Create the JasperPrint object
			JasperPrint jp = JasperFillManager.fillReport(jr, params, jrDataSource);
			
			// 6. Create an output byte stream where data will be written
			ByteArrayOutputStream baos = new ByteArrayOutputStream();

			// 7. Export report
			exporterUtil.export(type, reportName, jp, response, baos);

			// 8. Write to reponse stream
			write(token, response, baos);

		} catch (JRException jre) {
			logger.error("Unable to process download");
			throw new RuntimeException(jre);
		}
	}
	
	/**
	* Writes the report to the output stream
	*/
	private void write(String token, HttpServletResponse response,
			ByteArrayOutputStream baos) {

		try {
			//logger.debug(baos.size());

			// Retrieve output stream
			ServletOutputStream outputStream = response.getOutputStream();
			// Write to output stream
			baos.writeTo(outputStream);
			// Flush the stream
			outputStream.flush();

			// Remove download token
//			tokenUtil.remove(token);

		} catch (Exception e) {
			logger.error("Unable to write report to the output stream");
			throw new RuntimeException(e);
		}
	
	}

}
