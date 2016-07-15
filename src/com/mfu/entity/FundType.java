package com.mfu.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class FundType {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id ;
	private String loanname ;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getLoanname() {
		return loanname;
	}
	public void setLoanname(String loanname) {
		this.loanname = loanname;
	}
	@OneToMany(mappedBy="fundtype",cascade={CascadeType.ALL})
	private List<FundProject> fundproject ;
	public List<FundProject> getFundproject() {
		return fundproject;
	}
	public void setFundproject(List<FundProject> fundproject) {
		this.fundproject = fundproject;
	}
	
}
