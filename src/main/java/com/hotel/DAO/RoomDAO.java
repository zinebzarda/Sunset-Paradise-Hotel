package com.hotel.DAO;

import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import com.hotel.model.Room;

public interface RoomDAO {
	List<Room> AfficherRoom() throws ClassNotFoundException, SQLException;
	List<Room> search(Date startDate,Integer nbr,String Type) throws ClassNotFoundException, SQLException;
	}