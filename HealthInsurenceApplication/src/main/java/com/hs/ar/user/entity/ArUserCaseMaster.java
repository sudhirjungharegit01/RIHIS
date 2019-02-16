package com.hs.ar.user.entity;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import lombok.Data;

/**
 * This class is used to map AR_USER_CASE_MASTER DB Table
 * @author vinay
 *
 */

@Entity()
@Table(name="AR_USER_CASE_MASTER")
@Data()
public class ArUserCaseMaster implements Serializable {

	/**
	 *  used for generate serialVersion UID for support to disk caching or deSerialization for future
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(generator = "HIS_CASE_SEQ")
	@GenericGenerator(name = "HIS_CASE_SEQ", strategy = "com.hs.util.CaseIdGenrator")
	@Column(name = "CASEID")
	String caseId;
	@Column(name="FIRSTNAME")
	String firstName;
	@Column(name="LASTNAME")
	String lastName;
	@Column(name="SURNAME")
	String surName;
	@Column(name="USERNAME")
	String userName;
	@Column(name="PASSWORD")
	String password;
	@Column(name="EMAIL")
	String email;
	@Column(name="MOBILE")
	String mobile;
	@Column(name="SSN")
	String ssn;
	@Column(name="DOB")
	Date dob;
}//ArUserCaseMaster
