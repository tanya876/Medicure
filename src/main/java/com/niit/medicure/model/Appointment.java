package com.niit.medicure.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="appointment")
public class Appointment {

	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="app_id")
	@Id
	int app_id;
	
	@Column(name="id")
	Integer patientId;
	@Column(name="d_id")
	Integer doctorid;
	String doctorname;
	String patientname;
	String doctoraddress;
	String specialist;
	Date date1;
	Date date2;
	@Column(name="selecteddate")
	Date selectedDate=new Date(8-9-2020);
	String status;
	
	
	public Appointment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getApp_id() {
		return app_id;
	}
	public void setApp_id(int app_id) {
		this.app_id = app_id;
	}
	
	
	public Integer getPatientId() {
		return patientId;
	}
	public void setPatientId(Integer patientId) {
		this.patientId = patientId;
	}
	
	public Integer getDoctorid() {
		return doctorid;
	}
	public void setDoctorid(Integer doctorid) {
		this.doctorid = doctorid;
	if(this.doctorid==1) {
		setDoctorname("Dr. Utkarsh Hajela");
	}
	
	else if(this.doctorid==2) {
		setDoctorname("Dr. Runumi Devi");
	}
	else if(this.doctorid==3) {
		setDoctorname("Dr. Garg");
	}
	else if(this.doctorid==4) {
		setDoctorname("Dr. Sharad");
	}
	}
	public String getSpecialist() {
		return specialist;
	}
	public void setSpecialist(String specialist) {
		this.specialist = specialist;
	}
	public Date getDate1() {
		return date1;
	}
	public void setDate1(Date date1) {
		this.date1 = date1;
	}
	public Date getDate2() {
		return date2;
	}
	public void setDate2(Date date2) {
		this.date2 = date2;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDoctorname() {
		return doctorname;
	}
	public void setDoctorname(String doctorname) {
		this.doctorname = doctorname;
	}
	public String getPatientname() {
		return patientname;
	}
	public void setPatientname(String patientname) {
		this.patientname = patientname;
	}
	public String getDoctoraddress() {
		return doctoraddress;
	}
	public void setDoctoraddress(String doctoraddress) {
		this.doctoraddress = doctoraddress;
	}
	public Date getSelectedDate() {
		return selectedDate;
	}
	public void setSelectedDate(Date selectedDate) {
		this.selectedDate = selectedDate;
	}
	
	
}
