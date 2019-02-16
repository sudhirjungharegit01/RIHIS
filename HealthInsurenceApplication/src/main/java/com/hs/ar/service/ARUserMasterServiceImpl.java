package com.hs.ar.service;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.hs.ar.dao.ARUserMasterDAO;
import com.hs.ar.model.ARUserMaster;
import com.hs.util.AppConstants;
import com.hs.util.EmailService;
import com.hs.util.PasswordService;

@Service("arUserService")
public class ARUserMasterServiceImpl implements ARUserMasterService {
	@Autowired()
	private ARUserMasterDAO dao;

	@Override
	public String registerUser(ARUserMaster user) {
		com.hs.ar.entity.ARUserMaster userEntity = null;
		String encryptedPwd = null;
		String result=null;
		userEntity = new com.hs.ar.entity.ARUserMaster();
		// convert userModel to UserEntity
		BeanUtils.copyProperties(user, userEntity);
		// Encrypting User Password
		encryptedPwd = PasswordService.encrypt(user.getPassword());
		userEntity.setPassword(encryptedPwd);
		userEntity.setDateOfBirth(user.getDateOfBirth());
		userEntity.setAcountStatus("active");
		result= dao.save(userEntity).getUserId();

		// Sending Email with Pwd
		if (result!= null) {
			String text;
			
			try {
				text = getRegEmailBody(user);
				EmailService.sendEmail(user.getEmail(), AppConstants.EMAIL_FROM, AppConstants.EMAIL_SUBJECT, text);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;

	}

	@Override
	public List<ARUserMaster> fetchAllUser() {
		List<ARUserMaster> users = new ArrayList<ARUserMaster>();
		List<com.hs.ar.entity.ARUserMaster> entities = dao.findAll();
		for (com.hs.ar.entity.ARUserMaster entity : entities) {
			ARUserMaster master = new ARUserMaster();
			BeanUtils.copyProperties(entity, master);
			users.add(master);
		}
		return users;
	}

	@Override
	public ARUserMaster fetchUserById(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ARUserMaster updateUser(ARUserMaster user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String checkUserName(String user) {
		int count = 0;
		count = dao.findByUserName(user);
		return (count >= 1) ? com.hs.util.AppConstants.DUPLICATE : com.hs.util.AppConstants.UNIQUE;
	}
	
	
	/**
	 * This method is used to read Registration success email body content
	 * 
	 * @param um
	 * @return String
	 * @throws Exception
	 */
	private String getRegEmailBody(ARUserMaster um) throws Exception {

		String fileName = "/HealthInsurenceApplication-2/src/main/resources/templates/Registration_Email_Template.txt";
		FileReader fr = new FileReader(fileName);
		BufferedReader br = new BufferedReader(fr);
		String line = br.readLine();
		StringBuilder mailBody = new StringBuilder("");
		while (line != null) {

			// Processing mail body content
			if (line.contains("USER_NAME")) {
				line = line.replace("USER_NAME", um.getFirstName() + " " + um.getLastName());
			}

			if (line.contains("APP_USER_EMAIL")) {
				line = line.replace("APP_USER_EMAIL", um.getEmail());
			}

			if (line.contains("APP_URL")) {
				line = line.replace("APP_URL", "<a href='http://localhost:9090/HIS/loginForm'>RI HIS</a>");
			}

			if (line.contains("APP_USER_PWD")) {
				line = line.replace("APP_USER_PWD", um.getPassword());
			}

			// Appending processed line to StringBuilder
			mailBody.append(line);

			// reading next line
			line = br.readLine();
		}

		fr.close();
		br.close();

		// Returning mail body content
		return mailBody.toString();
	}

	/**
	 * This method is used to retrieve all caseworkers using pagination
	 */
	@Override
	public Page<com.hs.ar.entity.ARUserMaster> findAllUsers(int pageNo, int pageSize) {
		System.out.println("ARUserMasterServiceImpl.findAllUsers()");
		Pageable pageble =PageRequest.of(pageNo, pageSize);
		Page<com.hs.ar.entity.ARUserMaster> pages = dao.findAll(pageble);
		System.out.println("ARUserMasterServiceImpl.findAllUsers()");
		return pages;
	}

	/**
	 * This method is used to fetch CW record using userid
	 */
	@Override
	public ARUserMaster findById(String userId) {
		com.hs.ar.entity.ARUserMaster entity = dao.findById(userId).get();
		ARUserMaster model = new ARUserMaster();
		BeanUtils.copyProperties(entity, model);
		return model;
	}

	/**
	 * This method is used to update CaseWorker record
	 */
	@Override
	public ARUserMaster update(ARUserMaster userMaster) {
		com.hs.ar.entity.ARUserMaster entity = new com.hs.ar.entity.ARUserMaster();
		BeanUtils.copyProperties(userMaster, entity);

		// TODO:Need to fix this issue
		//entity.setDob("");

		dao.save(entity);
		return userMaster;
	}

}// ARUserMasterServiceImpl
