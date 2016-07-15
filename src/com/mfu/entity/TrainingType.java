package com.mfu.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class TrainingType {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id ;
	private String trainingtypename ;
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
	@OneToMany(mappedBy="trainingtype",cascade={CascadeType.ALL})
	private List<TrainingProject> trainingproject ;
	public List<TrainingProject> getTrainingproject() {
		return trainingproject;
	}
	public void setTrainingproject(List<TrainingProject> trainingproject) {
		this.trainingproject = trainingproject;
	}
	
}
