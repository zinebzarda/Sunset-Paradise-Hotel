package com.hotel.DAO;

import java.sql.SQLException;
import java.util.List;

import com.hotel.model.Room;

public interface RoomDAO {
	List<Room> selectAllRoom() throws SQLException;
	 boolean isReserved(int id_room) throws SQLException;
	 public List<Room> searchAvailableRoom(Integer roomId, String roomType, String equipement) throws SQLException;
}