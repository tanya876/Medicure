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

import com.niit.medicure.model.Patient;
import com.niit.medicure.repository.PatientRepository;
import com.niit.medicure.repository.UserRepository;
import com.niit.medicure.service.PatientService;
@RunWith(SpringRunner.class)
@SpringBootTest(classes = { PatientService.class })
public class PatientServiceTest {
	
	@InjectMocks
	PatientService service;
	@MockBean
	PatientRepository repo;
	@MockBean
	 UserRepository uRepo;
	@Before
	public void init() {
		MockitoAnnotations.initMocks(this);
	}
	
	@Test
	public void getTest() {
		Patient pat=new Patient();
		when(repo.findByPatientId(1)).thenReturn(pat);
		assertEquals(service.get(1),pat);
	}
	
	@Test
	public void findByEmailTest() {
		Patient pat=new Patient();
		when(uRepo.findByEmail("pratik@mail.com")).thenReturn(pat);
		assertEquals(service.findByEmail("pratik@mail.com"),pat);
	}
	
	@Test
	public void saveTest() {
		Patient pat1=new Patient();
		service.save(pat1);
		verify(repo,times(1)).save(pat1);
	}
	
	@Test
	public void listAllTest() {
		List<Patient> pat=new ArrayList<Patient>();
		when(repo.findAll()).thenReturn(new ArrayList<Patient>());
		assertEquals(service.listAll(),pat);
	}
	
	
		
}
