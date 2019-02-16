package com.hs.util;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.hibernate.HibernateException;
import org.hibernate.engine.spi.SharedSessionContractImplementor;
import org.hibernate.id.IdentifierGenerator;


public class UserIdGenrator implements IdentifierGenerator {
	public static final String GET_SEQ_VAL=" SELECT HIS_ID_SEQ.NEXTVAL FROM DUAL";
	public UserIdGenrator() {
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
			name="HIS";
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
				rs1=st.executeQuery("SELECT MAX(STNO)FROM NIT_STUDENT");
				if(rs1.next()) {
					count=1;
					int currentid=rs1.getInt(1)+1;
					System.out.println(currentid);
					        st.execute("create  sequence nit_id_seq start with "+ currentid +" increment by 1");
					        
				}
				else{
	                count=1;
			        st.execute("create  sequence nit_id_seq start with 1 increment by 1");
			    
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
		 id= String.format("%03d", seqGenratedNumber); 
		 result=name.concat(id);	
	}//try
		
	catch(Exception e) {
		e.printStackTrace();
	}
		
		return result;
	    	
	

}//generate(-,-)

}
