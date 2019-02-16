package com.hs.ar.user.controller;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hs.ar.user.command.UserCaseCommand;
import com.hs.ar.user.model.UserCaseMaster;
import com.hs.ar.user.service.ArUserCaseService;
import com.hs.ar.user.service.FedralSSNClient;
import com.hs.util.AppConstants;
import com.hs.util.DateFormator;

import gov.usa.ssn.binding.IndvDetailResponse;
@Controller()
public class ArUserCaseController {
	@Autowired()
	private ArUserCaseService service;
	@Autowired
	private FedralSSNClient ssnClient;
	
	@RequestMapping("/case/registerUser")
	public String lunchCase(UserCaseCommand command,Model model) {
		model.addAttribute("caseData", command);
		return "applicationRegistration";
	}
	
	@RequestMapping(value="/case/registerUser",method=RequestMethod.POST)
	public String registerCase(@ModelAttribute("caseData")UserCaseCommand command,Model model) {
		System.out.println("ArUserCaseController.registerCase()");
		String finalSSN=null;
		Date dob=null;
		UserCaseMaster user=null;
		String result=null;
		
		user=new UserCaseMaster();
		finalSSN=command.getSsn_1()+command.getSsn_2()+command.getSsn_3();
		//convert String date to SQl Date
		dob=DateFormator.strintToDate(command.getDateOfBirth());
		//copy command data to model
		user.setFirstName(command.getFirstName());
		user.setLastName(command.getLastName());
		user.setSurName(command.getSurName());
		user.setUserName(command.getUserName());
		user.setPassword(command.getPassword());
		user.setEmail(command.getEmail());
		user.setMobile(command. getMobileNumber());
		user.setSsn(finalSSN);
		user.setDob(dob);
		//call the service method
		result=service.registerUser(user);
		if(result!=null)
			model.addAttribute(AppConstants.CASE_REGISTER_SUCCESS,AppConstants.CASE_REGISTER_SUCCESS_MSG);
		else
			model.addAttribute(AppConstants.CASE_REGISTER_FAIL,AppConstants.CASE_REGISTER_FAIL_MSG);
		return "applicationRegistration";
	}

	@RequestMapping(value="/ssnValidator",method=RequestMethod.GET)
	public @ResponseBody String lunchCase(@RequestParam("dob")String dob,@RequestParam("ssn")String ssn,Model model) {
		System.out.println("ArUserCaseController.lunchCase()"+dob+"   "+ssn);
		IndvDetailResponse result=null;
		System.out.println("rto");
		result=ssnClient.validateSSN(ssn, dob);
		if(result!=null) {
			return AppConstants.SSN_VALIDATE_SUCCESS_FLAGE;
			}
		else {
			return AppConstants.SSN_VALIDATE_FAIL_FLAGE;
		}
		
	}
			
}//ArUserCaseController
