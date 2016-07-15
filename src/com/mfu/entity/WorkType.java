package com.mfu.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
@Entity
public class WorkType {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id ;
	private String worktypename ;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getWorktypename() {
		return worktypename;
	}
	public void setWorktypename(String worktypename) {
		this.worktypename = worktypename;
	}
	@OneToMany(mappedBy="worktype",cascade={CascadeType.ALL})
	private List<Article> article;
	public List<Article> getArticle() {
		return article;
	}
	public void setArticle(List<Article> article) {
		this.article = article;
	}
	@OneToMany(mappedBy="worktype",cascade={CascadeType.ALL})
	private List<File> file;
	public List<File> getFile() {
		return file;
	}
	public void setFile(List<File> file) {
		this.file = file;
	}
	@OneToMany(mappedBy="worktype",cascade={CascadeType.ALL})
	private List<Album> album ;
	public List<Album> getAlbum() {
		return album;
	}
	public void setAlbum(List<Album> album) {
		this.album = album;
	}
	
	
}
