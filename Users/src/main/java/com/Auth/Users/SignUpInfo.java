package com.Auth.Users;


public class SignUpInfo {
	private String firstname;
	private String lastname;
	private String email;
	private String gender;
	private String location;
	public SignUpInfo() {
		
	}
	public SignUpInfo(String firstname, String lastname, String email, String gender, String location) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.gender = gender;
		this.location = location;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getFirstname() {
		return firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public String getEmail() {
		return email;
	}
	public String getGender() {
		return gender;
	}
	public String getLocation() {
		return location;
	}
	

}
