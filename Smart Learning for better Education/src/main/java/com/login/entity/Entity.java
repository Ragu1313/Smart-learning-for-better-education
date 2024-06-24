package com.login.entity;

public class Entity {
     private String tname;
     private String link;
     private int rating;
     
	public Entity(String tname, String link, int rating) {
		super();
		this.tname = tname;
		this.link = link;
		this.rating = rating;
	}
	public Entity() {
		// TODO Auto-generated constructor stub
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	@Override
	public String toString() {
		return "Entity [tname=" + tname + ", link=" + link + ", rating=" + rating + "]";
	}
}
