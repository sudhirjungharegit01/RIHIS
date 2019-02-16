package com.hs.ar.dao;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.hs.ar.entity.ARUserMaster;

@Repository("arUserMaster")
public interface ARUserMasterDAO extends JpaRepository<ARUserMaster, Serializable> {
	
	
	@Query("select count(1) from ARUserMaster ar where ar.userName=:username")
	Integer findByUserName(String username);

}//ARUserMasterDAO 
