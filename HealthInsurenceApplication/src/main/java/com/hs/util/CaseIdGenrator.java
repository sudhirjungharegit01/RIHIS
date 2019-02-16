package com.hs.util;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.hibernate.HibernateException;
import org.hibernate.engine.spi.SharedSessionContractImplementor;
import org.hibernate.id.IdentifierGenerator;


public class CaseIdGenrator implements IdentifierGenerator {
	public static final String GET_SEQ_VAL=" SELECT HIS_CASE_SEQ.NEXTVAL FROM DUAL";
	public CaseIdGenrator() {
		System.out.println("SnoAutoGenrator-0-param constructor");
	}

	@Override
	public Serializable generate(SharedSessionContractImplementor session, Object object) throws HibernateException {
		Connection con=null;
		Statement st=null;
		String name=null;
		ResultSet rs=null,rs1=null;
		int seqGenratedNumber=0;
		String id=null;
		String result=null;
		int count=0;
		try{
			name="RIWC";
			try{
		    //get connection from current session
		    con=session.connection();
		    //create Statement object
		    st=con.createStatement();
		    //execute the query
		    rs=st.executeQuery(GET_SEQ_VAL);
		   
		}//try
	    catch(SQLException e) {
		    //create Statement object
		    try {
				st=con.createStatement();
				rs1=null;
		        //execute the query
				rs1=st.executeQuery("SELECT MAX(CASEID)FROM AR_USER_CASE_MASTER");
				if(rs1.next()) {
					count=1;
					int currentid=rs1.getInt(1)+1;
					System.out.println(currentid);
					        st.execute("create  sequence HIS_CASE_SEQ start with "+ currentid +" increment by 1");
					        
				}
				else{
	                count=1;
			        st.execute("create  sequence HIS_CASE_SEQ start with 1 increment by 1;");
			    
				}
				
		    }
	        catch (SQLException e1) {
			    e1.printStackTrace();
		     }
	    }//catch
		
		catch(Exception e){
			e.printStackTrace();
		}
		    if(count==1){
		    	rs=st.executeQuery(GET_SEQ_VAL);
		    }
		    
		 if(rs.next()) {
	    seqGenratedNumber=rs.getInt(1);
	    }//if
		 id= String.format("%05d", seqGenratedNumber); 
		 result=name.concat(id);	
	}//try
		
	catch(Exception e) {
		e.printStackTrace();
	}
		
		return result;
	    	
	

}//generate(-,-)

}
