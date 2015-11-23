package com.miracle.mode.vo;

import java.io.Serializable;
import java.util.List;

import org.apache.commons.lang.builder.ToStringBuilder;


/**  崇拜 */
public class WorshipVO implements Serializable {
	
	private static final long serialVersionUID = 1L;

	private String id;
	private String name;
	private String pic;
	private String status;
	private String begin;
	private String end;
	private String weekday;
	private String startCheckin;
	private String stopCheckin;
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