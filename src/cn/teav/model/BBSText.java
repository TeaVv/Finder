package cn.teav.model;

import java.sql.Timestamp;

public class BBSText {
	private int id;
	private int bbsid;
	private String username;
	private String text;
	private Timestamp time;
	private String timeString;

	public String getTimeString() {
		return timeString;
	}

	public void setTimeString(String timeString) {
		this.timeString = timeString;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getBbsid() {
		return bbsid;
	}

	public void setBbsid(int bbsid) {
		this.bbsid = bbsid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public Timestamp getTime() {
		return time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

}
