package com.hs.ar.user.model;

import java.sql.Date;

import lombok.Data;

/**
 * This class is used to carry transferable data
 * 
 * @author vinay
 *
 */

@Data()
public class UserCaseMaster {

	String caseId;
	String firstName;
	String lastName;
	String surName;
	String userName;
	String password;
	String email;
	String mobile;
	String ssn;
	Date dob;
}// UserCaseMaster
