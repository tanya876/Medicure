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

import com.niit.medicure.controller.LogRegController;
import com.niit.medicure.model.Doctor;
import com.niit.medicure.model.Patient;
import com.niit.medicure.service.DoctorService;
import com.niit.medicure.service.PatientService;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = { LogRegController.class})
public class LogRegControllerTest {

	
	@InjectMocks
	LogRegController controller;

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
	public void homeTest()
	{
	 assertEquals(controller.home(),"index");	
	}
	
	@Test
	public void signUpTest()
	{
		assertEquals(controller.signup(model),"patient-form");
	}
	
	@Test
	public void loginDocTest() {
		assertEquals(controller.loginDoc(model),"patient-form");
	}

	@Test
public void savePatient()
{
		Patient p=new Patient();
	assertEquals(controller.savePatient(p, model), "redirect:../login");
	verify(patientService,times(1)).save(p);
}
	
	@Test
	public void loginTest() {
		assertEquals(controller.login(model),"login-us");
	}
	
	
	@Test
	public void loginUserDoctorAndPatientBothNull()
	{
		String email="satyam@gmail.com";
		String pass="12345";
		when(req.getSession()).thenReturn(ses);
		when(req.getParameter("email")).thenReturn(email);
		when(req.getParameter("password")).thenReturn(pass);
		when(patientService.findByEmail(email)).thenReturn(null);

		when(doctorService.findByEmail(email)).thenReturn(null);
		
		
	assertEquals(controller.loginUser(req, modelMap, new Patient(), new Doctor()), "login-us");	
	}
	
	@Test
	public void loginUserDoctorAndPatientBothNullFailTest()
	{
		String email="satyam@gmail.com";
		String pass="12345";
		when(req.getSession()).thenReturn(ses);
		when(req.getParameter("email")).thenReturn(email);
		when(req.getParameter("password")).thenReturn(pass);
		when(patientService.findByEmail(email)).thenReturn(new Patient());

		when(doctorService.findByEmail(email)).thenReturn(new Doctor());
		
		
	assertEquals(controller.loginUser(req, modelMap, new Patient(), new Doctor()), "login-us");	
	}
	@Test
	public void loginUserDoctorTest()
	{
		String email="satyam@gmail.com";
		String pass="MTIzNDU=";
		Doctor d=new Doctor();
		d.setEmail(email);
		d.setPassword("12345");
		
		when(req.getSession()).thenReturn(ses);
		when(req.getParameter("email")).thenReturn(email);
		when(req.getParameter("password")).thenReturn(pass);
		when(patientService.findByEmail(email)).thenReturn(null);

		when(doctorService.findByEmail(email)).thenReturn(d);
		
		
	assertEquals(controller.loginUser(req, modelMap, new Patient(), new Doctor()), "welcome-doctor");	
	
	
	}
	
	@Test
	public void UserDoctorFailTest() {
		Doctor d=new Doctor();
		String email="tanya@mail.com";
		String pass="MTIzNDU=";
		d.setEmail(email);
		d.setPassword("123");
	
		when(req.getSession()).thenReturn(ses);
		when(req.getParameter("email")).thenReturn(email);
		when(req.getParameter("password")).thenReturn(pass);
		when(patientService.findByEmail(email)).thenReturn(null);

		when(doctorService.findByEmail(email)).thenReturn(d);
		assertEquals(controller.loginUser(req, modelMap,new Patient(),new Doctor()),"login-us");
	}
	
	@Test
	public void loginUserPatientTest()
	{
		String email="karan@gmail.com";
		String pass="k12";
		Patient p=new Patient();
		p.setEmail(email);
		p.setPassword(pass);
		
		when(req.getSession()).thenReturn(ses);
		when(req.getParameter("email")).thenReturn(email);
		when(req.getParameter("password")).thenReturn(pass);
		when(patientService.findByEmail(email)).thenReturn(p);

		when(doctorService.findByEmail(email)).thenReturn(null);
		
		
	assertEquals(controller.loginUser(req, modelMap, new Patient(), new Doctor()), "welcome");	
	}
	
	@Test
	public void loginUserPatientFailTest()
	{
		String email="karan@gmail.com";
		String pass="k16";
		Patient p=new Patient();
		p.setEmail(email);
		p.setPassword("k89");
		
		when(req.getSession()).thenReturn(ses);
		when(req.getParameter("email")).thenReturn(email);
		when(req.getParameter("password")).thenReturn(pass);
		when(patientService.findByEmail(email)).thenReturn(p);

		when(doctorService.findByEmail(email)).thenReturn(null);
		
		
	assertEquals(controller.loginUser(req, modelMap, new Patient(), new Doctor()), "login-us");	
	}
	
	@Test
	public void listTest()
	{
		
		when(patientService.listAll()).thenReturn(new ArrayList<Patient>());
		when(doctorService.listAll()).thenReturn(new ArrayList<Doctor>());
		assertEquals(controller.list(modelMap), "list");
	}


}
