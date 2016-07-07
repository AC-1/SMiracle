package com.miracle.common;

import java.io.ByteArrayOutputStream;

import javax.servlet.http.HttpServletResponse;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRExporterParameter;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.export.JRPdfExporter;
import net.sf.jasperreports.engine.export.JRXlsAbstractExporterParameter;
import net.sf.jasperreports.engine.export.JRXlsExporter;

import org.springframework.stereotype.Component;

/**
 * 
 * 報表產生格式
 *
 */
@Component
public class ExporterUtil {
	
	public static final String MEDIA_TYPE_EXCEL = "application/vnd.ms-excel";
	
	public static final String MEDIA_TYPE_PDF = "application/pdf";
	
	public static final String EXTENSION_TYPE_EXCEL = "xls";
	
	public static final String EXTENSION_TYPE_PDF = "pdf";
	
	public static final String EXTENSION_TYPE_PDF_SHOW = "pdfShow";
	
	public static final String EXTENSION_TYPE_TXT = "txt";
	
	public HttpServletResponse export(String type, String name, 
			JasperPrint jp, 
			HttpServletResponse response,
			ByteArrayOutputStream baos) {

		if (type.equalsIgnoreCase(EXTENSION_TYPE_EXCEL)) {
			exportXls(jp, baos);

			String fileName = name + ".xls";
			response.setHeader("Content-Disposition", "attachment; filename=" + fileName);//attachment 下載方式
//			response.setHeader("Content-Disposition", "inline; filename=" + fileName); //inline 網頁開啟

			response.setContentType(MEDIA_TYPE_EXCEL);
			response.setContentLength(baos.size());

			return response;
		}

		if (type.equalsIgnoreCase(EXTENSION_TYPE_PDF)) {
			exportPdf(jp, baos);

			String fileName = name + ".pdf";
			response.setContentType("application/octet-stream");
			response.setHeader("Content-Disposition", "attachment;filename="+ fileName);

			response.setContentType(MEDIA_TYPE_PDF);
			response.setContentLength(baos.size());

			return response;

		} 
		
		if (type.equalsIgnoreCase(EXTENSION_TYPE_PDF_SHOW)) {
			exportPdf(jp, baos);

			String fileName = name + ".pdf";
//			response.setContentType("application/octet-stream");
			response.setHeader("Content-Disposition", "inline;filename="+ fileName);

			response.setContentType(MEDIA_TYPE_PDF);
			response.setContentLength(baos.size());

			return response;

		} 
		
		if (type.equalsIgnoreCase(EXTENSION_TYPE_TXT)) {
			
			String fileName = name + ".txt";
			response.setContentType("application/octet-stream");
			response.setHeader("Content-Disposition", "attachment;filename="+ fileName);

			response.setContentType(MEDIA_TYPE_PDF);
			response.setContentLength(baos.size());

			return response;

		}

		throw new RuntimeException("No type set for type " + type);
	}

	public void exportXls(JasperPrint jp, ByteArrayOutputStream baos) {
		JRXlsExporter exporter = new JRXlsExporter();
		exporter.setParameter(JRExporterParameter.JASPER_PRINT, jp);
		exporter.setParameter(JRExporterParameter.OUTPUT_STREAM, baos);

		exporter.setParameter(JRXlsAbstractExporterParameter.IS_ONE_PAGE_PER_SHEET, Boolean.FALSE);
		exporter.setParameter(JRXlsAbstractExporterParameter.IS_REMOVE_EMPTY_SPACE_BETWEEN_ROWS, Boolean.TRUE);
		exporter.setParameter(JRXlsAbstractExporterParameter.IS_WHITE_PAGE_BACKGROUND, Boolean.FALSE);

		try {
			exporter.exportReport();

		} catch (JRException e) {
			throw new RuntimeException(e);
		}
	}

	public void exportPdf(JasperPrint jp, ByteArrayOutputStream baos) {
		JRPdfExporter exporter = new JRPdfExporter();

		exporter.setParameter(JRExporterParameter.JASPER_PRINT, jp);
		exporter.setParameter(JRExporterParameter.OUTPUT_STREAM, baos);

		try {
			exporter.exportReport();

		} catch (JRException e) {
			throw new RuntimeException(e);
		}
	}
	
}
