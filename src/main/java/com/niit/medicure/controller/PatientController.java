package com.niit.medicure.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.medicure.model.Appointment;
import com.niit.medicure.model.Doctor;
import com.niit.medicure.model.Patient;
import com.niit.medicure.service.AppointmentService;
import com.niit.medicure.service.PatientService;


@Controller

@RequestMapping("/loginUs")
public class PatientController {
	@Autowired
	private AppointmentService appService;
	
	@Autowired
	
	private PatientService patientService;
	@GetMapping("/bookapp")
	
	public String viewAppForm() {
		return "app-form";
	}
	
	@PostMapping("/appAction")
	public String bookAppoint(HttpServletRequest req,@ModelAttribute("appForm") Appointment app,Model model) {
		Patient p=(Patient)req.getSession(false).getAttribute("patient");
		
	
		//app.setPatientId(p.getPatientId());
		//app.setPatientname(p.getName());
		
		
	 appService.save(app);
	 return "welcome";
	 }
	
	
	@GetMapping("/bookAppList")
	public String getAppointments(HttpServletRequest req,Model theModel,@ModelAttribute("userDetails") Patient patientDet,ModelMap model)
	{
		Patient p=(Patient)req.getSession(false).getAttribute("patient");
	
	int patientId=p.getPatientId();
	
	
		List<Appointment> theApp=appService.findAllByPatientId(patientId);
	
		
		model.addAttribute("appList", theApp);
		
		return "bookAppointment-list";
       
	}
	
	@GetMapping("/checkAppointment")
	public String checkAppointments(HttpServletRequest req,Model theModel,ModelMap model)
	{
		Doctor doct =(Doctor)req.getSession(false).getAttribute("doctor");
	int doctorid=doct.getDoctorid();
		List<Appointment> theApp=appService.findAllByDoctorid(doctorid);
		
		model.addAttribute("checkList", theApp);
		
		return "appointment-list";
       
	}
	@GetMapping(value ="/edit")
	public String showEditProductPage(HttpServletRequest req,Model model) {
	Patient p=(Patient)req.getSession(false).getAttribute("patient");
	Patient patient = patientService.get(p.getPatientId());
	model.addAttribute("patient", patient);
	return "edit-patient";
     }	
	
@GetMapping("/accepted")
public String editStatus(HttpServletRequest req,@RequestParam("app_id") int app_id,Model model)
{ 
	
	
  Appointment app1 = appService.get(app_id);
    app1.setStatus("Accepted");
	appService.save(app1);
    
     return "redirect:/loginUs/checkAppointment";
}

@GetMapping("/rejected")
public String editStatusRejected(HttpServletRequest req,@RequestParam("app_id") int app_id,Model model)
{ 
	  Appointment app1 = appService.get(app_id);
	   
	app1.setStatus("Rejected");
	appService.save(app1);
	return "redirect:/loginUs/checkAppointment";
}

@GetMapping("/logout")
public String logout(HttpServletRequest req) {
req.getSession().invalidate();
return "index";
}

}
