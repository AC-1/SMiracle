package com.miracle.service;


import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;

import net.sf.jasperreports.engine.JRDataSource;


public interface DownloadService {
	void download(String type, String token, String report, String reportName, JRDataSource jrDataSource, HttpServletResponse response);
	void download(String type, String token, String report, String reportName, HashMap<String, Object> params, JRDataSource jrDataSource, HttpServletResponse response);
}
