package com.hs.util;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;


public class DateFormator {
	public static Date strintToDate(String sdate) {
		SimpleDateFormat sdf =null;
		Date date=null;
		sdf=new SimpleDateFormat("dd-mm-yy");
		try {
			date = new Date((sdf.parse(sdate)).getTime());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return date;
		
	}

}//DateFormator
