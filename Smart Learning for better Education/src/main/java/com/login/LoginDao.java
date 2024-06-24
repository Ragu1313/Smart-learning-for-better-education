package com.login;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
	 String sql = "select email_id,psw from login where email_id = ? and psw=?";
	  
	   public boolean check(String uname,String pass) {
		   try {
			   Class.forName("com.mysql.cj.jdbc.Driver");  
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","@Ragu2004"); 
			   PreparedStatement st = con.prepareStatement(sql);
		       if(con!=null) {
		    	   System.out.println("Connection Found");
		       }
			   st.setString(1, uname);
			   st.setString(2, pass);
			   ResultSet rs = st.executeQuery() ;
			   
			   if(rs.next()) {
				  return true;
				}
			  
		   }catch(Exception e) {
			   System.out.println(e);
		   }
		return false;
	   }
	
	}

