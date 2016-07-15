package com.mfu.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class RegulationProfessor {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id ;
	private String filename ;
	private String fileaddress ;
	private Date createddate ;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getFileaddress() {
		return fileaddress;
	}
	public void setFileaddress(String fileaddress) {
		this.fileaddress = fileaddress;
	}
	public Date getCreateddate() {
		return createddate;
	}
	public void setCreateddate(Date createddate) {
		this.createddate = createddate;
	}
	
}
