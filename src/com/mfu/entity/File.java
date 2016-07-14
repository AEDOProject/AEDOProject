package com.mfu.entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class File {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id ;
	private String filename ;
	private String fileaddress ;
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
	@ManyToOne(fetch=FetchType.EAGER)
	private WorkType worktype ;
	public WorkType getWorktype() {
		return worktype;
	}
	public void setWorktype(WorkType worktype) {
		this.worktype = worktype;
	}
	
}
