package com.hotel.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hotel.model.Room;

public class RoomDAOimp implements RoomDAO {
	String SELECT_ALL_ROOMS_AVAILABL= "select * from room";
	String UPDATE_AVAILABILITY_ROOM="UPDATE room SET availability = false WHERE roomId = ?";
	String SEARCH_AVALAIBL_ROOMS="SELECT * FROM room WHERE roomId = ? OR type = ? OR equipment = ?";
	
	
	public static void statementRoom(List<Room> arrayRoom, PreparedStatement statement) throws SQLException {
		ResultSet rs= statement.executeQuery();
		
		while(rs.next()) {
			int roomId = rs.getInt("roomId");
			String type = rs.getString("type");
			Double prix = rs.getDouble("prix");
			String equipment = rs.getString("equipment");
			Boolean availability = rs.getBoolean("availability");
			
			arrayRoom.add(new Room(roomId,type,prix,equipment,availability));
        }
    }
	@Override
	public List<Room> selectAllRoom() throws SQLException {
		List<Room> rooms = new ArrayList<>();
		
			Connection cnx = connection.getConnection();
			PreparedStatement ps= cnx.prepareStatement(SELECT_ALL_ROOMS_AVAILABL);
			statementRoom(rooms,ps);
			
		
		return rooms;
	}

	@Override
	public boolean isReserved(int roomId) throws SQLException {
		Connection con = connection.getConnection();
		PreparedStatement ps = con.prepareStatement(UPDATE_AVAILABILITY_ROOM);
		ps.setInt(1, roomId);
		return ps.executeUpdate() > 0;
	}

	@Override
	public List<Room> searchAvailableRoom(Integer roomId, String roomType, String equipement)
			throws SQLException {
		List<Room> arrayRoom = new ArrayList<>();
        Connection con = connection.getConnection();       
        PreparedStatement statement = con.prepareStatement(SEARCH_AVALAIBL_ROOMS);
        
        statement.setInt(1, roomId);
        statement.setString(2, roomType);
        statement.setString(3, equipement);
        statementRoom(arrayRoom,statement);
		return arrayRoom;

}

}