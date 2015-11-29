package com.miracle.mode;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.apache.commons.lang.builder.ToStringBuilder;


/**
@author Joshua
* 崇拜堂數
*/
@Entity
@Table(name="worship",catalog="miracle")
public class Worship implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Id  
	@Column(name="ID")
	private String id;
	
	@Column(name="NAME")
	private String name;
	
	@Column(name="PIC")
	private String pic;
	
	@Column(name="STATUS")
	private String status;
	
	@Column(name="BEGIN")
	private String begin;
	
	@Column(name="END")
	private String end;
	
	@Column(name="WEEKDAY")
	private String weekday;
	
	@Column(name="START_CHECKIN")
	private String startCheckin;
	
	@Column(name="STOP_CHECKIN")
	private String stopCheckin;
	
	@Column(name="EDU")
	private String edu;
	
	
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
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getBegin() {
		return begin;
	}
	public void setBegin(String begin) {
		this.begin = begin;
	}
	public String getEnd() {
		return end;
	}
	public void setEnd(String end) {
		this.end = end;
	}
	public String getWeekday() {
		return weekday;
	}
	public void setWeekday(String weekday) {
		this.weekday = weekday;
	}
	public String getStartCheckin() {
		return startCheckin;
	}
	public void setStartCheckin(String startCheckin) {
		this.startCheckin = startCheckin;
	}
	public String getStopCheckin() {
		return stopCheckin;
	}
	public void setStopCheckin(String stopCheckin) {
		this.stopCheckin = stopCheckin;
	}
	public String getEdu() {
		return edu;
	}
	public void setEdu(String edu) {
		this.edu = edu;
	}
	
	
	

	
}