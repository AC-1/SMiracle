package com.miracle.mode.jpa;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 @author Joshua
 * 牧區主檔表格
 */
@Entity
@Table(name="comm",catalog="miracle")
public class Comm  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	@Id  
	@Column(name="ID")
	private String id;
	
	@Column(name="NAME")
	private String name;
	
	
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
	
	
	
	
	
	
	
	
	
	
}
