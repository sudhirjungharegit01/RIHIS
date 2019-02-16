package com.hs.ar.user.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.oxm.jaxb.Jaxb2Marshaller;
import org.springframework.ws.client.core.WebServiceTemplate;

/**
 * 
 * @author vinay
 *
 */

@Configuration()
public class FedralSSNClientConfig {
	 @Bean
	  Jaxb2Marshaller jaxb2Marshaller() {
	    Jaxb2Marshaller jaxb2Marshaller = new Jaxb2Marshaller();
	    
	    jaxb2Marshaller .setContextPath("gov.usa.ssn.binding");

	    return jaxb2Marshaller;
	  }

	  @Bean
	  public WebServiceTemplate  webServiceTemplate() {
	    WebServiceTemplate webServiceTemplate = new WebServiceTemplate();
	    webServiceTemplate.setMarshaller(jaxb2Marshaller());
	    webServiceTemplate.setUnmarshaller(jaxb2Marshaller());
	    webServiceTemplate.setDefaultUri(
	        "http://localhost:3030/FedralSSNRegistrationApp/service/ssn-details");

	    return webServiceTemplate;
	  }


}//FedralSSNClientConfig
