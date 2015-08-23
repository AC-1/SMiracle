package com.miracle.mode;
import java.io.Serializable;


/**
 @author Joshua
 * 成長記錄
 */

public class Statement  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String id;
	private String contactPeople;
	private String statement;
	private String create;
	private String lastUpdate;
	private String note;
	
	private String createName;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContactPeople() {
		return contactPeople;
	}
	public void setContactPeople(String contactPeople) {
		this.contactPeople = contactPeople;
	}
	public String getStatement() {
		return statement;
	}
	public void setStatement(String statement) {
		this.statement = statement;
	}
	public String getCreate() {
		return create;
	}
	public void setCreate(String create) {
		this.create = create;
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
	public String getCreateName() {
		return createName;
	}
	public void setCreateName(String createName) {
		this.createName = createName;
	}
	
	
	
	
	
	
	
}
