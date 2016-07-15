package com.mfu.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class SAR {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id ;
	private String documentcode ;
	private String doumentname ;
	private String fileaddress ;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getDocumentcode() {
		return documentcode;
	}
	public void setDocumentcode(String documentcode) {
		this.documentcode = documentcode;
	}
	public String getDoumentname() {
		return doumentname;
	}
	public void setDoumentname(String doumentname) {
		this.doumentname = doumentname;
	}
	public String getFileaddress() {
		return fileaddress;
	}
	public void setFileaddress(String fileaddress) {
		this.fileaddress = fileaddress;
	}
	
}
