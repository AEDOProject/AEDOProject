package com.mfu.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class FundProject {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id ;
	private String projectname ;
	private String scholar ;
	private String school ;
	private String year ;
	private String semeter ;
	private double budgets ;
	private String file ;
	private Date starttime ;
	private Date endtime ;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getProjectname() {
		return projectname;
	}
	public void setProjectname(String projectname) {
		this.projectname = projectname;
	}
	public String getScholar() {
		return scholar;
	}
	public void setScholar(String scholar) {
		this.scholar = scholar;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getSemeter() {
		return semeter;
	}
	public void setSemeter(String semeter) {
		this.semeter = semeter;
	}
	public double getBudgets() {
		return budgets;
	}
	public void setBudgets(double budgets) {
		this.budgets = budgets;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public Date getStarttime() {
		return starttime;
	}
	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}
	public Date getEndtime() {
		return endtime;
	}
	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}

	@ManyToOne(fetch=FetchType.EAGER)
	private FundType fundtype ;
	public FundType getFundtype() {
		return fundtype;
	}
	public void setFundtype(FundType fundtype) {
		this.fundtype = fundtype;
	}
	
}
