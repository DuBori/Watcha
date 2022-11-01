package com.wacha.model;

public class BoardDTO {

	private int write_num;
	private String write_title;
	private String write_cont;
	private String write_pwd;
	private int write_hit;
	private String member_id;
	
	
	public int getWrite_num() {
		return write_num;
	}
	public void setWrite_num(int write_num) {
		this.write_num = write_num;
	}
	public String getWrite_title() {
		return write_title;
	}
	public void setWrite_title(String write_title) {
		this.write_title = write_title;
	}
	public String getWrite_cont() {
		return write_cont;
	}
	public void setWrite_cont(String write_cont) {
		this.write_cont = write_cont;
	}
	public String getWrite_pwd() {
		return write_pwd;
	}
	public void setWrite_pwd(String write_pwd) {
		this.write_pwd = write_pwd;
	}
	public int getWrite_hit() {
		return write_hit;
	}
	public void setWrite_hit(int write_hit) {
		this.write_hit = write_hit;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	
}
