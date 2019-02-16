package com.hs.ar.model;



/*import javax.persistence.Column;*/

import lombok.Data;

@Data
public class ARUserCommand {
	private String userId;
	private String userName;

	private String password;

	private String firstName;

	private String lastName;

	private String dateOfBirth;

	private String mobileNamber;

	private String email;
	
	private String role;

	private String acountStatus;
	private String updatedBy;
	

}// ARUserMaster
