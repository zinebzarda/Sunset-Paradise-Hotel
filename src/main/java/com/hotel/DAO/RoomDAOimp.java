package com.hotel.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hotel.model.Room;

public class RoomDAOimp implements RoomDAO {
	
	Connection cnx = connection.getConnection();
	
	@Override
	public List<Room> AfficherRoom() throws ClassNotFoundException, SQLException{
	 List<Room> room=new ArrayList<Room>();
		String requet = "SELECT * FROM room WHERE Disponibilite IS NULL OR Disponibilite<NOW()";
		
	PreparedStatement ps= cnx.prepareStatement(requet);
       ResultSet resultat = ps.executeQuery();
      

       while (resultat.next()) {
           Integer roomId = resultat.getInt("roomId");
           String Type= resultat.getString("Type");
           Integer Prix  = resultat.getInt("Prix");
           String equipement= resultat.getString("equipement");
           Date availability=resultat.getDate("availability");
           Integer Nombre_personne = resultat.getInt("Nombre_personne");
           String img = resultat.getString("img");
      
           Room Room = new Room(roomId, Type,Prix,equipement,availability,Nombre_personne,img );

           room.add(Room);
       }
		return room;
}

@Override
public List<Room> search(Date Departdate,Integer nbr,String type) throws ClassNotFoundException, SQLException{
	List<Room> Search=new ArrayList<Room>();
	String requet = "SELECT * FROM room WHERE (availability<? OR availability IS NULL) AND (Nombre_personne = ? OR Type = ?) ";
	PreparedStatement ps= cnx.prepareStatement(requet);
	ps.setDate(1,Departdate);
	ps.setInt(2,nbr);

	ps.setString(3,type);
   ResultSet resultat = ps.executeQuery();

   while (resultat.next()) {
       Integer roomId = resultat.getInt("roomId");
       String Type= resultat.getString("Type");
       Integer Prix  = resultat.getInt("Prix");
       String equipement= resultat.getString("equipement");
    Date availability=resultat.getDate("availability");
       Integer Nombre_personne = resultat.getInt("Nombre_personne");
       String img = resultat.getString("img");
  
       Room srRe = new Room(roomId, Type,Prix,equipement,availability,Nombre_personne,img );
       Search.add(srRe);
   }
    
	return Search;
}

}
