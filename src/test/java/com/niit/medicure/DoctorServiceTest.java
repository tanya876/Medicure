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

import com.niit.medicure.model.Doctor;
import com.niit.medicure.model.Patient;
import com.niit.medicure.repository.DoctorRepository;
import com.niit.medicure.repository.UserDocRepository;
import com.niit.medicure.service.DoctorService;
@RunWith(SpringRunner.class)
@SpringBootTest(classes = { DoctorService.class })
public class DoctorServiceTest {
	@InjectMocks
	DoctorService service;
	
	@MockBean
	DoctorRepository repo;
	@MockBean
	UserDocRepository uRepo;
	@Before
	public void init() {
		MockitoAnnotations.initMocks(this);
	}
	@Test
	public void saveTest() {
		Doctor doct=new Doctor();
		service.save(doct);
		verify(repo,times(1)).save(doct);
	}
	@Test
	public void getTest() {
		Doctor doct=new Doctor();
		when(repo.findByDoctorid(1)).thenReturn(doct);
		assertEquals(service.get(1),doct);
	}
	
	@Test
	public void listAllTest() {
		List<Doctor> doct=new ArrayList<Doctor>();
		when(repo.findAll()).thenReturn(new ArrayList<Doctor>());
		assertEquals(service.listAll(),doct);
	}
	@Test
	public void findByEmailTest() {
		Doctor doct=new Doctor();
		when(uRepo.findByEmail("pratik@mail.com")).thenReturn(doct);
		assertEquals(service.findByEmail("pratik@mail.com"),doct);
	}
}
