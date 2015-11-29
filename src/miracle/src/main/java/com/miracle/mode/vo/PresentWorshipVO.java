package com.miracle.mode.vo;
import java.io.Serializable;


/**
 @author Joshua
 * 崇拜活動
 */

public class PresentWorshipVO  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String id;
	private String pid;
	private String activityId;
	private String chkinTime;
	private String note;
	private String worshipName;
	private String name;
	private String grade;
	private String gender;
	
	
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getActivityId() {
		return activityId;
	}
	public void setActivityId(String activityId) {
		this.activityId = activityId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
	
	
	
}
