package com.niit.medicure.model;

import java.nio.charset.StandardCharsets;
import java.sql.Date;
import java.util.Base64;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="patient")
public class Patient {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private Integer patientId;

	@Column(name="name")
	private String  name;

	@Column(name="password")
	private String password;
	
	@Column(name="phone_Num")
	private int phoneNum;
	
	@Column(name="gender")
	String gender;
	
	@Column(name="blood_Group")
	String bloodGroup;
	
	@Column(name="dob")
	Date dob;
	
	@Column(name="email")
	private String email;
	
	
	public Patient() {
		super();
	}

	

	public Integer getPatientId() {
		return patientId;
	}



	public void setPatientId(Integer patientId) {
		this.patientId = patientId;
	}



	public Date getDob() {
		return dob;
	}



	public void setDob(Date dob) {
		this.dob = dob;
	}



	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		Base64.Encoder encoder = Base64.getEncoder();
		  String normalString = password;
		  String encodedString = encoder.encodeToString(
		     normalString.getBytes(StandardCharsets.UTF_8) );
		  this.password = encodedString;
	}

	public int getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(int phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	

	public String getGender() {
		return gender;
	}



	public void setGender(String gender) {
		this.gender = gender;
	}



	public String getBloodGroup() {
		return bloodGroup;
	}



	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}



	@Override
	public String toString() {
		return "Patient [patientId=" + patientId + ", name=" + name + ", password=" + password + ", phoneNum="
				+ phoneNum + ", gender=" + gender + ", bloodGroup=" + bloodGroup + ", dob=" + dob + ", email=" + email
				+ "]";
	}



	


	

	
}
