package com.miracle.mode.jpa;
import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 @author Joshua
 * 崇拜活動
 */
@Entity
@Table(name="present_worship",catalog="miracle")
public class PresentWorship  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id  
	@Column(name="ID")
	private String id;
	
	@Column(name="CID")
	private String cid;
	
	@Column(name="PID")
	private String pid;
	
	@Column(name="ACTIVITY_ID")
	private String activityId;
	
	@Column(name="CHKIN_TIME")
	private Timestamp chkinTime=new Timestamp(System.currentTimeMillis());
	
	@Column(name="CHKOUT_TIME")
	private String chkoutTime;
	
	@Column(name="LAST_UPDATE")
	private String lastUpdate;
	
	@Column(name="NOTE")
	private String note;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getActivityId() {
		return activityId;
	}
	public void setActivityId(String activityId) {
		this.activityId = activityId;
	}
	
	public Timestamp getChkinTime() {
		return chkinTime;
	}
	public void setChkinTime(Timestamp chkinTime) {
		this.chkinTime = chkinTime;
	}
	
	public String getChkoutTime() {
		return chkoutTime;
	}
	public void setChkoutTime(String chkoutTime) {
		this.chkoutTime = chkoutTime;
	}
	public String getLastUpdate() {
		return lastUpdate;
	}
	public void setLastUpdate(String lastUpdate) {
		this.lastUpdate = lastUpdate;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	
	
	
	
	
	
	
}
