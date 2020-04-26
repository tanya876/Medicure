package com.niit.medicure.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.niit.medicure.model.Doctor;
import com.niit.medicure.model.Patient;



public interface DoctorRepository extends JpaRepository<Doctor,Integer>{
	public Doctor findByDoctorid(Integer doctorid);
}
