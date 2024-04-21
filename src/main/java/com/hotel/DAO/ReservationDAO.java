package com.hotel.DAO;

import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import com.hotel.model.Reservation;

public interface ReservationDAO {
	void Reserver(Date startDate,Date endDate,Integer roomId) throws ClassNotFoundException, SQLException;
	List<Reservation> ShowReservation() throws ClassNotFoundException, SQLException;
}