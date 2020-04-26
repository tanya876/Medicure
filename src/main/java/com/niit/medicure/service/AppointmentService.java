package com.niit.medicure.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.medicure.model.Appointment;
import com.niit.medicure.repository.AppointmentRepository;

@Service
@Transactional
public class AppointmentService {

	@Autowired
	AppointmentRepository apprepo;
	
	public void save(Appointment app) {
		apprepo.save(app);
	}
	public Appointment get(int appid) {
		return apprepo.findById(appid).get();
	}
	public List<Appointment> findAllByPatientId(Integer patientId){
		return apprepo.findAllByPatientId(patientId);

	}
	public List<Appointment> findAllByDoctorid(Integer doctorid){
		return apprepo.findAllByDoctorid(doctorid);

	}
	
	public List<Appointment> findAllByPatientIdAndDoctorid(Integer patientId,Integer doctorid)
	{
		return apprepo.findAllByPatientIdAndDoctorid(patientId, doctorid);
	}
	
	public void delete(int id) {
		apprepo.deleteById(id);
	}
	public Appointment findByAppid(int appid) {
		return apprepo.findByAppid(appid);
	}
	
	
}
