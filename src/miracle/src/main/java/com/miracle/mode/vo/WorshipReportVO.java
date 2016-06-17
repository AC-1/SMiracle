package com.miracle.mode.vo;
import java.io.Serializable;


/**
 @author Joshua
 * 查詢報表資料
 */

public class WorshipReportVO  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String year;
	private String month;
	private String week;
	private String worshCount;
	
	
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getWorshCount() {
		return worshCount;
	}
	public void setWorshCount(String worshCount) {
		this.worshCount = worshCount;
	}
	public String getWeek() {
		return week;
	}
	public void setWeek(String week) {
		this.week = week;
	}
	
	
}
