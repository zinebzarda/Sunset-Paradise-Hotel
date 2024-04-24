package com.hotel.DAO;


import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hotel.model.Room;

public class RoomDAOimp implements RoomDAO {
	
	
	
	@Override
	public List<Room> DisplayRoom() throws ClassNotFoundException, SQLException{
	 List<Room> rooms=new ArrayList<Room>();
		String requet = "SELECT * FROM room ";
		
	PreparedStatement ps= connection.getConnection().prepareStatement(requet);
       ResultSet resultat = ps.executeQuery();
      

       while (resultat.next()) {
           Integer roomId = resultat.getInt("roomId");
           String Type= resultat.getString("type");
           Integer Prix  = resultat.getInt("prix");
           String equipement= resultat.getString("equipement");
          
           Integer Nombre_personne = resultat.getInt("Nombre_personne");
           String img = resultat.getString("img");
      
           Room Room = new Room(roomId, Type,Prix,equipement,null,Nombre_personne,img );

           rooms.add(Room);
       }
		return rooms;
}

@Override
public List<Room> search(String type ,Integer nbr) throws ClassNotFoundException, SQLException{
	
	ArrayList<Room> Search=new ArrayList<>();
	String requet = "SELECT * FROM room WHERE  Nombre_personne = ? OR type = ? ";
	
	PreparedStatement ps= connection.getConnection().prepareStatement(requet);
	
	ps.setInt(1,nbr);
	ps.setString(2,type);
   ResultSet resultat = ps.executeQuery();

   while (resultat.next()) {
       Integer roomId = resultat.getInt("roomId");
       String Type= resultat.getString("type");
       Integer Prix  = resultat.getInt("prix");
       String equipement= resultat.getString("equipement");
       Integer Nombre_personne = resultat.getInt("Nombre_personne");
       String img = resultat.getString("img");
  
       Room srRoom = new Room(roomId, Type,Prix,equipement,null,Nombre_personne,img );
       Search.add(srRoom);
   }
    
	return Search;
}

}
