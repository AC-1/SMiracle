package com.miracle.mode;
import java.io.Serializable;


/**
 @author Joshua
 * 關懷時間
 */

public class CareTime  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String weekDay;
	private String stime;
	private String etime;
	
	
	
	public String getWeekDay() {
		return weekDay;
	}
	public void setWeekDay(String weekDay) {
		this.weekDay = weekDay;
	}
	public String getStime() {
		return stime;
	}
	public void setStime(String stime) {
		this.stime = stime;
	}
	public String getEtime() {
		return etime;
	}
	public void setEtime(String etime) {
		this.etime = etime;
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
