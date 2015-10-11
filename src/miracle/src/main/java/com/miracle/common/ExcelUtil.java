package com.miracle.common;
import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jxl.*;
import jxl.read.biff.BiffException;


import org.springframework.stereotype.Component;

/**
 * 匯入EXCEl
 * @author Joshua
 *
 */
@Component
public class ExcelUtil {
	
	private List<Map<Integer, String>> list = new ArrayList<Map<Integer,String>>();
	
	
	public List<Map<Integer, String>> getCustmoers(String filePath){
		Sheet sheet = null;
		try {
			File file = new File(filePath);
			Workbook workbook = Workbook.getWorkbook(file);
			sheet = workbook.getSheet(0);
			/*
			System.out.println("Sheet="+sheet.getRows()+", "+sheet.getColumns()+", name = "+sheet.getName());
			for(int x = 1; x < sheet.getRows(); x ++){
				for(int y = 0; y < sheet.getColumns(); y++){
					String value = sheet.getCell(y, x).getContents();
					System.out.print(value+", ");
				}
				System.out.println();
			}
			*/
			if(sheet != null){
				list.clear();
				//System.out.println("Sheet="+sheet.getRows()+", "+sheet.getColumns()+", name = "+sheet.getName());
				
				for(int x = 1; x < sheet.getRows(); x ++){
					HashMap<Integer, String> map = new HashMap<Integer, String>();
					for(int y = 0; y < sheet.getColumns(); y++){
						String value = sheet.getCell(y, x).getContents();
						map.put(y, value);
					}
					list.add(map);
				}
			}
			workbook.close();
		} catch (BiffException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return list;
	}
}
