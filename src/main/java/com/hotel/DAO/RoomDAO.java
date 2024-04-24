package com.hotel.DAO;

import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import com.hotel.model.Room;

public interface RoomDAO {
	List<Room> DisplayRoom() throws ClassNotFoundException, SQLException;
	List<Room> search(String Type , Integer nbr) throws ClassNotFoundException, SQLException;
	}