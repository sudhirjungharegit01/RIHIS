package com.hs.ar.entity;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.UpdateTimestamp;

import lombok.Data;

@Data
@Entity()
@Table(name = "AR_USER_MASTER")
public class ARUserMaster implements Serializable {
	private static final long serialVersionUID = 345L;
	@Id
	@GeneratedValue(generator = "HIS_ID_GENRATOR")
	@GenericGenerator(name = "HIS_ID_GENRATOR", strategy = "com.hs.util.UserIdGenrator")
	@Column(name = "USERID")
	private String userId;
	@Column(name = "USERNAME")
	private String userName;
	@Column(name = "PASSWORD")
	private String password;
	@Column(name = "FIRSTNAME")
	private String firstName;
	@Column(name = "LASTNAME")
	private String lastName;
	@Column(name = "DOB")
	private Date dateOfBirth;
	@Column(name = "MOBILE")
	private String mobileNamber;
	@Column(name = "EMAIL")
	private String email;
	@Column(name = "ROLEID")
	private String role;
	@Column(name = "STATUS")
	private String acountStatus;
	@CreationTimestamp
	@Column(name = "CREATEDDATE")
	private Timestamp createdDate;
	@UpdateTimestamp
	@Column(name = "UPDATEDATE")
	private Timestamp updateddate;
	@Column(name = "UPDATEBY")
	private String updatedBy;

}// ARUserMaster
