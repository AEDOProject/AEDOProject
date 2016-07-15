package com.mfu.entity;

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
	private String signuplink ;
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
	@ManyToOne(fetch=FetchType.EAGER)
	private TrainingType trainingtype ;
	public TrainingType getTrainingtype() {
		return trainingtype;
	}
	public void setTrainingtype(TrainingType trainingtype) {
		this.trainingtype = trainingtype;
	}
	
}
