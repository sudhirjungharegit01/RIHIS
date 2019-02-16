package com.hs.ar.user.service;

import ch.qos.logback.core.net.SyslogOutputStream;

public class Test {
	public static void main(String args[]) {
		FedralSSNClient tr=null;
		tr=new FedralSSNClient();
		System.out.println( tr.validateSSN("100000401", "04-01-19"));
		
	}

}
