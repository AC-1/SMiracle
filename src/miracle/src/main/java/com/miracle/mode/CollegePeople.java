package com.miracle.mode;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 @author Joshua
 * 學生主要基本資料表格
 */
@Entity
@Table(name="college_people",catalog="miracle")
public class CollegePeople  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	@Id  
	@Column(name="COLLEGE_ID")
	private String collegeId;
	
	@Column(name="COLLEGE_NAME")
	private String collegeName;
	
	@Column(name="COLLEGE_AREA")
	private String collegeArea;
	
	@Column(name="COLLEGE_GROUP")
	private String collegeGroup;
	
	@Column(name="COLLEGE_GENDER")
	private String collegeGender;
	
	@Column(name="COLLEGE_BIRTHDAY")
	private String collegeBirthday;
	
	@Column(name="COLLEGE_SCHOOL_GRADE")
	private String collegeSchoolGrade;
	
	@Column(name="COLLEGE_PHONE")
	private String collegePhone;
	
	@Column(name="COLLEGE_TEL")
	private String collegeTel;
	
	@Column(name="COLLEGE_GRADE")
	private String collegeGrade;
	
	@Column(name="COLLEGE_LEADER")
	private String collegeLeader;
	
	

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

	public String getCollegeGrade() {
		return collegeGrade;
	}

	public void setCollegeGrade(String collegeGrade) {
		this.collegeGrade = collegeGrade;
	}

	public String getCollegeLeader() {
		return collegeLeader;
	}

	public void setCollegeLeader(String collegeLeader) {
		this.collegeLeader = collegeLeader;
	}

	
	
	
	
	
	
	
}
