package com.hs.ar.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.hs.ar.model.ARUserMaster;

public interface ARUserMasterService {
	public String registerUser(ARUserMaster user);
	public List<ARUserMaster> fetchAllUser();
	public ARUserMaster fetchUserById(String userId);
	public ARUserMaster updateUser(ARUserMaster user);
	public String checkUserName(String user);
	public Page<com.hs.ar.entity.ARUserMaster> findAllUsers(int pageNo, int pageSize);
	public ARUserMaster findById(String userId);
	public ARUserMaster update(ARUserMaster userMaster) ;
}//ARUserMasterService
