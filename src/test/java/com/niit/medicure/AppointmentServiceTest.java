package com.niit.medicure;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.MockitoAnnotations;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringRunner;

import com.niit.medicure.model.Appointment;
import com.niit.medicure.repository.AppointmentRepository;
import com.niit.medicure.service.AppointmentService;
@RunWith(SpringRunner.class)
@SpringBootTest(classes = { AppointmentService.class })
public class AppointmentServiceTest {
	@InjectMocks
	AppointmentService service;
	
	@MockBean
	AppointmentRepository apprepo;
	@Before
	public void init() {
		MockitoAnnotations.initMocks(this);
	}
	@Test
	public void saveTest() {
		Appointment app=new Appointment();
		service.save(app);
		verify(apprepo,times(1)).save(app);
	}
	//@Test
	//public void getTest() {
		//Appointment app=new Appointment();
		//when(apprepo.findById(1).get()).thenReturn(app);
		//assertEquals(service.get(1),app);
	//}
	
	@Test
	public void deleteTest() {
		Appointment app=new Appointment();
		service.delete(1);
		verify(apprepo,times(1)).deleteById(1);
	}
	@Test
	public void findAllByPatientId() {
		List<Appointment> app=new ArrayList<Appointment>();
		when(apprepo.findAllByPatientId(1)).thenReturn(app);
		assertEquals(service.findAllByPatientId(1),app);
	}
	@Test
	public void findAllByDoctorid() {
		List<Appointment> app=new ArrayList<Appointment>();
		when(apprepo.findAllByDoctorid(1)).thenReturn(app);
		assertEquals(service.findAllByDoctorid(1),app);
	}
	@Test
	public void  findAllByPatientIdAndDoctorid() {
		List<Appointment> app=new ArrayList<Appointment>();
		when(apprepo.findAllByPatientIdAndDoctorid(1,2)).thenReturn(app);
		assertEquals(service.findAllByPatientIdAndDoctorid(1,2),app);
	}
	
}

