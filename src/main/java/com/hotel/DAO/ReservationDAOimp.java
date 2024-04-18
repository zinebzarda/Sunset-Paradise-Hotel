package com.hotel.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hotel.model.Reservation;

public class ReservationDAOimp implements ReservationDAO{

	@Override
	public List<Reservation> selectAllReservation() {
		
		List<Reservation> reservations = new ArrayList<>();
        try {
            Connection cnx = connection.getConnection();
            PreparedStatement ps= cnx.prepareStatement("select * from reservation");
            ResultSet rs= ps.executeQuery();

            while(rs.next()) {
                int reservationId = rs.getInt("reservationId");
                int roomId = rs.getInt("roomId");
                String startDate = rs.getDate("startDate").toString();
                String endDate = rs.getString("endDate").toString();

                reservations.add(new Reservation(reservationId,roomId,startDate,endDate));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return reservations;
		
	}
	

}
