package com.spring.mybatis.user.model.vo;

public class UserVO {

	private String id,pwd,email,phones;
	private int		point ;
	public UserVO() {
		super();
	}
	public UserVO(String id, String pwd, String email, String phones, int point) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.email = email;
		this.phones = phones;
		this.point = point;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhones() {
		return phones;
	}
	public void setPhones(String phones) {
		this.phones = phones;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	
}
