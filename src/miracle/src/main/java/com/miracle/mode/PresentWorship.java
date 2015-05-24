package com.miracle.mode;
import java.io.Serializable;


/**
 @author Joshua
 * 崇拜活動
 */

public class PresentWorship  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String pid;
	private String activityName;
	private String chkinTime;
	private String note;
	
	
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getActivityName() {
		return activityName;
	}
	public void setActivityName(String activityName) {
		this.activityName = activityName;
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
