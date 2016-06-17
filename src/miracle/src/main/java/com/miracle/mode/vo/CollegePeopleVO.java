package com.miracle.mode.vo;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 @author Joshua
 * 學生主要基本資料表格
 */
public class CollegePeopleVO  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	private String collegeId;
	
	private String collegeName;
	
	private String collegeArea;
	
	private String collegeGroup;
	
	private String collegeGender;
	
	private String collegeBirthday;
	
	private String collegeSchoolGrade;
	
	private String collegePhone;
	
	private String collegeTel;
	
	
	private String checkInTime;
	
	

	public String getCollegeId() {
		return collegeId;
	}

	public void setCollegeId(String collegeId) {
		this.collegeId = collegeId;
	}

	public String getCollegeName() {
		return collegeName;
	}

	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}

	public String getCheckInTime() {
		return checkInTime;
	}

	public void setCheckInTime(String checkInTime) {
		this.checkInTime = checkInTime;
	}

	public String getCollegeArea() {
		return collegeArea;
	}

	public void setCollegeArea(String collegeArea) {
		this.collegeArea = collegeArea;
	}

	public String getCollegeGroup() {
		return collegeGroup;
	}

	public void setCollegeGroup(String collegeGroup) {
		this.collegeGroup = collegeGroup;
	}

	public String getCollegeGender() {
		return collegeGender;
	}

	public void setCollegeGender(String collegeGender) {
		this.collegeGender = collegeGender;
	}

	public String getCollegeBirthday() {
		return collegeBirthday;
	}

	public void setCollegeBirthday(String collegeBirthday) {
		this.collegeBirthday = collegeBirthday;
	}

	public String getCollegeSchoolGrade() {
		return collegeSchoolGrade;
	}

	public void setCollegeSchoolGrade(String collegeSchoolGrade) {
		this.collegeSchoolGrade = collegeSchoolGrade;
	}

	public String getCollegePhone() {
		return collegePhone;
	}

	public void setCollegePhone(String collegePhone) {
		this.collegePhone = collegePhone;
	}

	public String getCollegeTel() {
		return collegeTel;
	}

	public void setCollegeTel(String collegeTel) {
		this.collegeTel = collegeTel;
	}
	
	
	
	
	
	
}
