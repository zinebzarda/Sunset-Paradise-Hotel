package com.hotel.DAO;

import java.sql.*;

public class connection {
	
	
   


    protected static Connection getConnection() throws ClassNotFoundException, SQLException {
    
   
            Class.forName( "com.mysql.cj.jdbc.Driver");
           

        return   DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel", "root", "");
    }


}
