package com.miracle.mode.vo;

import java.io.Serializable;
import java.util.List;

import org.apache.commons.lang.builder.ToStringBuilder;


/**  個人資料、牧區資料 */
public class PeopleVO implements Serializable {
	
	private static final long serialVersionUID = 1L;

	private String id;
	private String name;
	private String birthday;
	private String gender;
	private String school;
	private String grade;
	private String groupName;
	private String groupLeader;
	private String worshipName;
	private String careWeekday;
	private String caretStime;
	private String caretEtime;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	
	public String getGroupLeader() {
		return groupLeader;
	}
	public void setGroupLeader(String groupLeader) {
		this.groupLeader = groupLeader;
	}
	public String getWorshipName() {
		return worshipName;
	}
	public void setWorshipName(String worshipName) {
		this.worshipName = worshipName;
	}
	public String getCareWeekday() {
		return careWeekday;
	}
	public void setCareWeekday(String careWeekday) {
		this.careWeekday = careWeekday;
	}
	public String getCaretStime() {
		return caretStime;
	}
	public void setCaretStime(String caretStime) {
		this.caretStime = caretStime;
	}
	public String getCaretEtime() {
		return caretEtime;
	}
	public void setCaretEtime(String caretEtime) {
		this.caretEtime = caretEtime;
	}
	
	
	

	
}