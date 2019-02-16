package com.hs.ar.user.service;

import java.io.Serializable;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hs.ar.user.dao.ArUserCaseMasterDAO;
import com.hs.ar.user.entity.ArUserCaseMaster;
import com.hs.ar.user.model.UserCaseMaster;
import com.hs.util.PasswordService;

@Service("arUserService2")
public class ArUserCaseServiceImpl implements ArUserCaseService {
	@Autowired()
	private ArUserCaseMasterDAO<Serializable> dao;
	
	
	@Override
	public String registerUser(UserCaseMaster user) {
		ArUserCaseMaster caseUser=null;
		String result=null;
		String encriptedPassword=null;
		caseUser=new ArUserCaseMaster();
		//copy the properties form UserCaseMaster to ArUsercaseMaster
		BeanUtils.copyProperties(user, caseUser);
		//encript the password
		encriptedPassword=PasswordService.encrypt(user.getPassword());
		caseUser.setPassword(encriptedPassword);
		result=dao.save(caseUser).toString();
		return result;
	}

}
