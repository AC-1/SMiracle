package com.miracle.mode.jpa;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 @author Joshua
 * 崇拜活動
 */
@Entity
@Table(name="people",catalog="miracle")
public class People  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id  
	@Column(name="ID")
	private String id;
	
	@Column(name="NAME")
	private String name;
	
	@Column(name="GENDER")
	private String gender;
	
	@Column(name="BIRTHDAY")
	private String birthday;
	
	@Column(name="ROLE")
	private String role;
	
	@Column(name="STATUS")
	private String status;
	
	@Column(name="TEL1")
	private String tel1;
	
	@Column(name="TEL2")
	private String tel2;
	
	@Column(name="ADDR")
	private String addr;
	
	@Column(name="EMAIL")
	private String email;
	
	@Column(name="COMM")
	private String comm;
	
	@Column(name="GROUP_ID")
	private String groupId;
	
	@Column(name="EDU")
	private String edu;
	
	@Column(name="SCHOOL")
	private String school;
	
	@Column(name="GRADE")
	private String grade;
	
	@Column(name="WORSHIP")
	private String worship;
	
	@Column(name="CREATE_TIME")
	private String createTime;
	
	@Column(name="LAST_UPDATE")
	private Timestamp lastUpdate=new Timestamp(System.currentTimeMillis());
	
	@Column(name="NOTE")
	private String note;

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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getTel1() {
		return tel1;
	}

	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}

	public String getTel2() {
		return tel2;
	}

	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getComm() {
		return comm;
	}

	public void setComm(String comm) {
		this.comm = comm;
	}

	public String getGroupId() {
		return groupId;
	}

	public void setGroupId(String groupId) {
		this.groupId = groupId;
	}

	public String getEdu() {
		return edu;
	}

	public void setEdu(String edu) {
		this.edu = edu;
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

	public String getWorship() {
		return worship;
	}

	public void setWorship(String worship) {
		this.worship = worship;
	}

	

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public Timestamp getLastUpdate() {
		return lastUpdate;
	}

	public void setLastUpdate(Timestamp lastUpdate) {
		this.lastUpdate = lastUpdate;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	
	
	
	
	
	
	
	
}
