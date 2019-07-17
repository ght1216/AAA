package com.aaa.entity;

public class MeetingVo {
	private int MeetingID;
	private String MeetingName;
	private String Url;
	private UserVo uservo;// 关联外键
	private String Site;
	private String Equip;
	private int State;
	private int Capacity;
	private String Note;

	public int getMeetingID() {
		return MeetingID;
	}

	public void setMeetingID(int meetingID) {
		MeetingID = meetingID;
	}

	public String getMeetingName() {
		return MeetingName;
	}

	public void setMeetingName(String meetingName) {
		MeetingName = meetingName;
	}

	public String getUrl() {
		return Url;
	}

	public void setUrl(String url) {
		Url = url;
	}

	public UserVo getUservo() {
		return uservo;
	}

	public void setUservo(UserVo uservo) {
		this.uservo = uservo;
	}

	public String getSite() {
		return Site;
	}

	public void setSite(String site) {
		Site = site;
	}

	public String getEquip() {
		return Equip;
	}

	public void setEquip(String equip) {
		Equip = equip;
	}

	public int getState() {
		return State;
	}

	public void setState(int state) {
		State = state;
	}

	public int getCapacity() {
		return Capacity;
	}

	public void setCapacity(int capacity) {
		Capacity = capacity;
	}

	public String getNote() {
		return Note;
	}

	public void setNote(String note) {
		Note = note;
	}

}
