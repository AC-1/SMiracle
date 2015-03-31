package com.miracle.mode;
import java.io.Serializable;


/**
 @author Joshua
 * 䏈絡資料
 * ID 		
 * PID  	
 * NAME		
 * TEL1			
 * TEL2	
 * ADDR
 * CREATE
 * LAST_UPDATE
 */

public class Contact  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String name;
	private String tel1;
	private String tel2;
	private String addr;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	
	
	
	
	
	
	
}
