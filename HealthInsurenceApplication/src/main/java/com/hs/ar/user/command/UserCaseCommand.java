package com.hs.ar.user.command;

import lombok.Data;

/**
 * This class is used to carry form data
 * 
 * @author vinay
 *
 */

@Data()
public class UserCaseCommand {

	String caseId;
	String firstName;
	String lastName;
	String surName;
	String userName;
	String password;
	String email;
	String mobileNumber;
	String ssn_1;
	String ssn_2;
	String ssn_3;
	String dateOfBirth;
}// UserCaseCommand
