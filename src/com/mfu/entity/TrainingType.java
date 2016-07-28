package com.mfu.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToMany;

@Entity
public class TrainingType {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id ;
	@Column(name = "`trainingtypename`")
	private String trainingtypename ;
	@Column(name = "`show`")
	private boolean show ;
	@Column(name = "`year`")
	private String year ;
	@Lob 
	@Column(name="`detail`", length=512)
	private String detail;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getTrainingtypename() {
		return trainingtypename;
	}
	public void setTrainingtypename(String trainingtypename) {
		this.trainingtypename = trainingtypename;
	}
	public boolean isShow() {
		return show;
	}
	public void setShow(boolean show) {
		this.show = show;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}

	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}

	@OneToMany(mappedBy="trainingtype",cascade={CascadeType.ALL})
	private List<TrainingProject> trainingproject ;
	public List<TrainingProject> getTrainingproject() {
		return trainingproject;
	}
	public void setTrainingproject(List<TrainingProject> trainingproject) {
		this.trainingproject = trainingproject;
	}
	
}
