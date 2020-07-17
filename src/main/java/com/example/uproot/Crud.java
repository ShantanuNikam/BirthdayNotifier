package com.example.uproot;

import java.sql.*;

public class Crud
{

	 public void Calculate() throws ClassNotFoundException, SQLException
     {
		      
		      String myDriver = "com.mysql.cj.jdbc.Driver"	;
		      String myUrl = "jdbc:mysql://localhost:3306/projectnilesh?allowPublicKeyRetrieval=true&useSSL=false";
		      Class.forName(myDriver);
		      Connection conn = DriverManager.getConnection(myUrl, "root", "password");
		   
     }
	 public static ResultSet ResultSet (Connection conn, String x) throws SQLException
	 {
	 	ResultSet rs = null;
	 	String sql ="";
	 	PreparedStatement pst= conn.prepareStatement(sql);;
	 	rs = pst.executeQuery();
	 return rs;
	 }

}
