package com.hs.ar.model;

import java.sql.Date;


/*import javax.persistence.Column;*/

import lombok.Data;

@Data
public class ARUserMaster {
	private String userId;
	private String userName;

	private String password;

	private String firstName;

	private String lastName;

	private Date dateOfBirth;

	private String mobileNamber;

	private String email;
	
	private String role;

	private String acountStatus;
	private String updatedBy;
	

}// ARUserMaster
