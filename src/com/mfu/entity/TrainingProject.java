package com.mfu.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class TrainingProject {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id ;
	private String trainingname ;
	private String detail ;
	private int amount ;
	private Date signupstartdate ;
	private Date signupenddate ;
	private Date startdate ;
	private Date enddate ;
	private String place ;
	private String signuplink ;
	private String listlink ;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getTrainingname() {
		return trainingname;
	}
	public void setTrainingname(String trainingname) {
		this.trainingname = trainingname;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getSignuplink() {
		return signuplink;
	}
	public void setSignuplink(String signuplink) {
		this.signuplink = signuplink;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public Date getStartdate() {
		return startdate;
	}
	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}
	public Date getEnddate() {
		return enddate;
	}
	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getListlink() {
		return listlink;
	}
	public void setListlink(String listlink) {
		this.listlink = listlink;
	}
	public Date getSignupstartdate() {
		return signupstartdate;
	}
	public void setSignupstartdate(Date signupstartdate) {
		this.signupstartdate = signupstartdate;
	}
	public Date getSignupenddate() {
		return signupenddate;
	}
	public void setSignupenddate(Date signupenddate) {
		this.signupenddate = signupenddate;
	}
	@ManyToOne(fetch=FetchType.EAGER)
	private TrainingType trainingtype ;
	public TrainingType getTrainingtype() {
		return trainingtype;
	}
	public void setTrainingtype(TrainingType trainingtype) {
		this.trainingtype = trainingtype;
	}
	
}
