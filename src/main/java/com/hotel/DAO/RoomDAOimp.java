package com.hotel.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hotel.model.Room;

public class RoomDAOimp implements RoomDAO {
    @Override
    public List<Room> selectAllRoom() {
        List<Room> rooms = new ArrayList<>();
        try {
            Connection cnx = connection.getConnection();
            PreparedStatement ps= cnx.prepareStatement("select * from room");
            ResultSet rs= ps.executeQuery();
            
            while(rs.next()) {
                int roomId = rs.getInt("roomId");
                String type = rs.getString("type");
                Double prix = rs.getDouble("prix");
                String equipment = rs.getString("equipment");
                Boolean availability = rs.getBoolean("availability");
                
                rooms.add(new Room(roomId,type,prix,equipment,availability));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rooms;
    }

}