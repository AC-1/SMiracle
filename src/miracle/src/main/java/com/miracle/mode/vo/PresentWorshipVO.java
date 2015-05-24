package com.miracle.mode.vo;
import java.io.Serializable;


/**
 @author Joshua
 * 崇拜活動
 */

public class PresentWorshipVO  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String pid;
	private String chkinTime;
	private String note;
	private String worshipName;
	
	
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	
	public String getWorshipName() {
		return worshipName;
	}
	public void setWorshipName(String worshipName) {
		this.worshipName = worshipName;
	}
	public String getChkinTime() {
		return chkinTime;
	}
	public void setChkinTime(String chkinTime) {
		this.chkinTime = chkinTime;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	
	
	
	
	
}
