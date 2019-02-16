package com.hs.ar.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hs.ar.model.ARUserCommand;
import com.hs.ar.model.ARUserMaster;
import com.hs.ar.service.ARUserMasterService;
import com.hs.util.AppConstants;
import com.hs.util.ArConstants;
import com.hs.util.DateFormator;

@Controller
public class ARUserMasterController {
	@Autowired()
	private ARUserMasterService aRUserMasterService;

	@RequestMapping(name = "/", method = RequestMethod.GET)
	public String showIndex(ARUserMaster user, Model model) {
		model.addAttribute("arUser", user);
		initForm(model);
		return "createCaseWorker";
	}

	@RequestMapping(value = "/regUser", method = RequestMethod.POST)
	public String registerUser(@ModelAttribute("arUser") ARUserCommand user, Model model) {
		ARUserMaster arUserMaster = null;
		Date dob = null;
		String userId = null;
		arUserMaster = new ARUserMaster();
		// convert string date to SQl Date
		dob = DateFormator.strintToDate(user.getDateOfBirth());
		// convert ARUserCommand to ARUserMaster
		arUserMaster.setFirstName(user.getFirstName());
		arUserMaster.setLastName(user.getLastName());
		arUserMaster.setUserName(user.getUserName());
		arUserMaster.setPassword(user.getPassword());
		arUserMaster.setDateOfBirth(dob);
		arUserMaster.setMobileNamber(user.getMobileNamber());
		arUserMaster.setEmail(user.getEmail());
		arUserMaster.setRole(user.getRole());
		System.out.println("ARUserMasterController.registerUser()");
		userId = aRUserMasterService.registerUser(arUserMaster);
		if (userId != null) {
			// store success msg
			model.addAttribute(ArConstants.SUCCESS, ArConstants.REG_SUCCESS);
		} else {
			// store error msg
			model.addAttribute(ArConstants.ERROR, ArConstants.REG_ERROR);
		}
		initForm(model);
		return "createCaseWorker";

	}

	private void initForm(Model model) {
		List<String> rolesList = new ArrayList<>();
		rolesList.add("Admin");
		rolesList.add("Case Worker");
		model.addAttribute("rolesList", rolesList);
	}

	/**
	 * This method is used to retrieve all case workers
	 */
	@RequestMapping(value = "/viewCaseWorkers")
	public String viewAllCaseWorkers(@RequestParam(name = "cpn", defaultValue = "1") String pageNo, Model model) {
 System.out.println("ARUserMasterController.viewAllCaseWorkers()-1");
		Integer currentPageNo = 1;
		List<ARUserMaster> users = new ArrayList<>();

		if (null != pageNo && !"".equals(pageNo)) {
			currentPageNo = Integer.parseInt(pageNo);
		}
		 System.out.println("ARUserMasterController.viewAllCaseWorkers()-2");
		// calling Service layer method
		Page<com.hs.ar.entity.ARUserMaster> page = aRUserMasterService.findAllUsers(currentPageNo - 1,
				AppConstants.PAGE_SIZE);
		 System.out.println("ARUserMasterController.viewAllCaseWorkers()-3");
		// Getting Total Pages required
		int totalPages = page.getTotalPages();
		 System.out.println("ARUserMasterController.viewAllCaseWorkers()-4");
		// Getting page specific records
		List<com.hs.ar.entity.ARUserMaster> entities = page.getContent();
		 System.out.println("ARUserMasterController.viewAllCaseWorkers()-5");
		// Converting Entity objects Model objects
		for (com.hs.ar.entity.ARUserMaster entity : entities) {
			ARUserMaster um = new ARUserMaster();
			BeanUtils.copyProperties(entity, um);
			users.add(um);
		}
		
		System.out.println("ARUserMasterController.viewAllCaseWorkers()-6");

		// Storing data in model scope to access in view
		model.addAttribute("cpn", pageNo);
		model.addAttribute("tp", totalPages);
		model.addAttribute("caseWorkers", users);
		System.out.println("ARUserMasterController.viewAllCaseWorkers()-7");
		return "viewCaseWorkers";
	}

	@RequestMapping("/checkuser")
	public @ResponseBody String checkUserByUserName(@RequestParam("userName") String user) {
		System.out.println("UserController.checkUserByUserName()");
		/*
		 * Gson json=null; String result = null; json = new Gson();
		 */
		/*
		 * result = json.toJson(aRUserMasterService.checkUserName(user));
		 * System.out.println(result);
		 */
		return aRUserMasterService.checkUserName(user);
	}
	
	
	/**
	 * This method is used to activate case worker
	 * @param userId
	 * @return
	 */
	@RequestMapping(value = "/activateCwProfile")
	public String activateCwProfile(@RequestParam("uid") String userId) {
		try {
			if (null != userId && !"".equals(userId)) {
				ARUserMaster model = aRUserMasterService.findById(userId);
				// making profile as active
				model.setAcountStatus(AppConstants.STR_Y);
				// updating record
				aRUserMasterService.update(model);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		

		return "redirect:viewCaseWorkers";
	}
	
	/**
	 * This method is used to perform soft delete of case worker
	 * @param userId
	 * @return
	 */
	@RequestMapping(value = "/deleteCwProfile")
	public String deleteCwProfile(@RequestParam("uid") String userId) {
		try {
			if (null != userId && !"".equals(userId)) {
				ARUserMaster model = aRUserMasterService.findById(userId);
				// making profile as active
				model.setAcountStatus(AppConstants.STR_N);
				// updating record
				aRUserMasterService.update(model);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		

		return "redirect:viewCaseWorkers";
	}
	
	
	/**
	 * This method is used to edit case worker
	 * @param userId
	 * @return
	 */
	@RequestMapping(value = "/editCWProfile")
	public String updateCwProfile(@RequestParam("uid") String userId,Model mod) {
		try {
			if (null != userId && !"".equals(userId)) {
				ARUserMaster model = aRUserMasterService.findById(userId);
				mod.addAttribute("updatedData",model);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		

		return "editCaseWorkers";
	}

}// ARUserMasterController
