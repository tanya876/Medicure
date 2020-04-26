package com.niit.medicure;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.MockitoAnnotations;
import org.mockito.Spy;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

import com.niit.medicure.controller.PatientController;
import com.niit.medicure.model.Appointment;
import com.niit.medicure.model.Doctor;
import com.niit.medicure.model.Patient;
import com.niit.medicure.service.AppointmentService;
import com.niit.medicure.service.DoctorService;
import com.niit.medicure.service.PatientService;


@RunWith(SpringRunner.class)
@SpringBootTest(classes = { PatientController.class })
public class PatientControllerTest {

	@InjectMocks
	PatientController controller;
	
	@MockBean
  AppointmentService appService;
	
	@MockBean
	 PatientService patientService;
	
	@MockBean
	DoctorService doctorService;
	
	@Spy
	Model model;
	@Spy
	ModelMap modelMap;
	@Spy
	HttpSession ses;
	@Spy
	HttpServletRequest req;

	@Before
	public void init() {
		MockitoAnnotations.initMocks(this);
	}

	@Test
	public void viewAppFormTest() {
		assertEquals(controller.viewAppForm(),"app-form");
	}
	
	@Test
	public void viewWelcomePageTest() {
		assertEquals(controller.viewWelcomePage(),"welcome");
	}
	
	@Test
	public void viewWelcomeDoctorPageTest() {
		assertEquals(controller.viewWelcomeDoctorPage(),"welcome-doctor");
	}
	
	@Test
	public void bookAppointTest() {
		Patient p=new Patient();
		Appointment appoint=new Appointment();
		when(req.getSession(false)).thenReturn(ses);
		when(req.getSession(false).getAttribute("patient")).thenReturn(p);
		assertEquals(controller.bookAppoint(req, appoint, model),"payment-form");
		verify(appService,times(1)).save(appoint);
	}
	
	@Test
	public void getApointmentsTest() {
		
		Patient patientDetails=new Patient();
	patientDetails.setPatientId(1);
		when(req.getSession(false)).thenReturn(ses);
		when(req.getSession(false).getAttribute("patient")).thenReturn(patientDetails);
		when(appService.findAllByPatientId(1)).thenReturn(new ArrayList<Appointment>());
		assertEquals(controller.getAppointments(req,model),"bookAppointment-list");
		
	}
	
	@Test
	public void checkAppointmentsTest() {
		Doctor doctorDetails=new Doctor();
		doctorDetails.setDoctorid(1);
			when(req.getSession(false)).thenReturn(ses);
			when(req.getSession(false).getAttribute("doctor")).thenReturn(doctorDetails);
			when(appService.findAllByDoctorid(1)).thenReturn(new ArrayList<Appointment>());
		assertEquals(controller.checkAppointments(req,model),"appointment-list");
	}
	
	@Test
	public void showEditPatientDetailsPageTest()
	{ 
		Patient p=new Patient();
		p.setPatientId(1);
		when(req.getSession(false)).thenReturn(ses);
		when(req.getSession(false).getAttribute("patient")).thenReturn(p);
		when(patientService.get(1)).thenReturn(p);
		assertEquals(controller.showEditPatientDetailsPage(req, model),"edit-patient");
	}
	
	@Test
	public void showEditDoctorDetailsPage() {
		Doctor doctorDetails=new Doctor();
		doctorDetails.setDoctorid(1);
			when(req.getSession(false)).thenReturn(ses);
			when(req.getSession(false).getAttribute("doctor")).thenReturn(doctorDetails);
		when(doctorService.get(1)).thenReturn(doctorDetails);
		assertEquals(controller.showEditDoctorDetailsPage(req, model),"edit-doctor");
	}
	
	@Test
	public void viewLoginTest() {
		Doctor d=new Doctor();
		assertEquals(controller.viewLogin(model, d),"login-us");
		verify(doctorService,times(1)).save(d);
	}
	
	@Test
	public void editStatusTest() 
		{
		Appointment app=new Appointment();
		int app1=1;
		app.setAppid(1);
		app.setStatus("accepted");
		when(appService.get(1)).thenReturn(app);
		assertEquals(controller.editStatus(app1, model),"redirect:/loginUs/checkAppointment");
	
	}
	
	@Test
	public void editStatusRejectedTest() {
		Appointment app=new Appointment();
		int app1=11;
		app.setAppid(11);
		app.setStatus("rejected");
		when(appService.get(11)).thenReturn(app);
		assertEquals(controller.editStatusRejected(req,app1, model),"redirect:/loginUs/checkAppointment");
	}
	
	
	@Test
	public void acceptDateTest() {
		Appointment app = new Appointment();
		int app1=11;
		app.setAppid(11);
		String finaldate="2020-04-15";
		app.setSelectedDate("2020-04-15");
		
		when(appService.get(11)).thenReturn(app);
		assertEquals(controller.acceptDate(req, app1, finaldate, model),"redirect:/loginUs/checkAppointment");
	}
	@Test
	public void cancelAppointmentTest() {
		Appointment app = new Appointment();
		int app1=11;
		app.setAppid(11);
		//when(appService.delete(11)).thenReturn(null);
		assertEquals(controller.cancelAppointment(req, app1, model),"redirect:/loginUs/bookAppList");
	}
	@Test
	public void logoutTest() {
		when(req.getSession()).thenReturn(ses);
		assertEquals(controller.logout(req),"index");
	}
	@Test
	public void showDoctorPageTest()
	{
		assertEquals(controller.showDoctorPage(),"doctor-page");
	
	}
	@Test
	public void viewGatewayTest() {
		Appointment app=new Appointment();
		assertEquals(controller.viewGateway(req,app, model),"pdf-viewer");
	}
	
	@Test
	public void viewPatientDetailsTest() {
		Patient pat=new Patient();
		Doctor d =new Doctor();
		String email="karan@mail.com";
 	pat.setEmail(email);
 	pat.setPatientId(1);
	d.setDoctorid(2);
	when(patientService.findByEmail(email)).thenReturn(pat);
		when(req.getSession(false)).thenReturn(ses);
 	when(req.getSession(false).getAttribute("doctor")).thenReturn(d);
		
		when(appService.findAllByPatientIdAndDoctorid(1,2)).thenReturn(new ArrayList<Appointment>());
		assertEquals(controller.viewPatientDetails(req, model, pat),"patientDetails");
		
		
	}
	
	/* @Test
	public void savePresTest() {
		Appointment app=new Appointment();
		assertEquals(controller.savePres(req, app, model),"patientDetails");
		verify(appService,times(1)).save(app);
	}*/
	
	
	
	
}

