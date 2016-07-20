package com.mfu.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;

@Entity
public class Article {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id ;
	private String title ;
	@Lob 
	@Column(name="CONTENT", length=512)
	private String content;
	private Date date ;
	private String photo ;
	private boolean draft ;
	private boolean prublish ;
	private Date lastupate ;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public boolean isDraft() {
		return draft;
	}
	public void setDraft(boolean draft) {
		this.draft = draft;
	}
	public boolean isPrublish() {
		return prublish;
	}
	public void setPrublish(boolean prublish) {
		this.prublish = prublish;
	}
	public Date getLastupate() {
		return lastupate;
	}
	public void setLastupate(Date lastupate) {
		this.lastupate = lastupate;
	}
	@ManyToOne(fetch=FetchType.EAGER)
	private ArticleType articletype;
	public ArticleType getArticletype() {
		return articletype;
	}
	public void setArticletype(ArticleType articletype) {
		this.articletype = articletype;
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
