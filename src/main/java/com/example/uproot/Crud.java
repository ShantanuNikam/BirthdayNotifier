package com.example.uproot;

import java.sql.*;

public class Crud
{

	 public String Calculate() throws ClassNotFoundException, SQLException
     {
		      
		      String myDriver = "com.mysql.cj.jdbc.Driver"	;
		      String myUrl = "jdbc:mysql://localhost:3306/projectnilesh?allowPublicKeyRetrieval=true&useSSL=false";
		      Class.forName(myDriver);
		      Connection conn = DriverManager.getConnection(myUrl, "root", "password");
		      
    
		      String query = "SELECT NAME FROM birthday WHERE id=1";

		     
		      Statement st = conn.createStatement();
		      
		      ResultSet rs = st.executeQuery(query);
		      rs.next();	
		      
		      String name = rs.getString("name");	
		      st.close();
		      
		      return name;
		   
     }

}
