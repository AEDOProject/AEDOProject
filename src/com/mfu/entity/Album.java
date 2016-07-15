package com.mfu.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Album {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id ;
	private String albumname ;
	private String detail ;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getAlbumname() {
		return albumname;
	}
	public void setAlbumname(String albumname) {
		this.albumname = albumname;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	@OneToMany(mappedBy="album",cascade={CascadeType.ALL})
	private List<Image> image ;
	public List<Image> getImage() {
		return image;
	}
	public void setImage(List<Image> image) {
		this.image = image;
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
