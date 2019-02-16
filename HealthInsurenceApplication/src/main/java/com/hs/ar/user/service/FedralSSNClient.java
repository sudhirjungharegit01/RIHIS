package com.hs.ar.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ws.client.core.WebServiceTemplate;

import gov.usa.ssn.binding.IndvDetailRequest;
import gov.usa.ssn.binding.IndvDetailResponse;
import gov.usa.ssn.binding.ObjectFactory;

/**
 * @author vinay
 *
 */
@Component()
public class FedralSSNClient {
	@Autowired()
	private WebServiceTemplate template;
	
	public  IndvDetailResponse validateSSN(String ssn,String dob) {
	ObjectFactory factory=null;
	IndvDetailRequest request=null;
	IndvDetailResponse response=null;
	factory=new ObjectFactory();
	request=factory.createIndvDetailRequest();
	request.setDob(dob);
	request.setSsn(ssn);
	response=(IndvDetailResponse)  template.marshalSendAndReceive(request);
	if(response!=null) {
	System.out.println(response.getIndvDetail().getFirstName());
	System.out.println(response.getIndvDetail().getLastName());
	System.out.println(response.getIndvDetail().getSurname());
	}
		return response;
	}

}//FedralSSNClient
