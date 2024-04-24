package com.hotel.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hotel.model.Reservation;

public class ReservationDAOimp implements ReservationDAO{
	

	@Override
	public void Reserver(Date startDate, Date endDate , Integer roomId) throws ClassNotFoundException, SQLException {
		
		System.out.println("Reserver");
		
		String requet = "INSERT INTO reservation ( roomId, startDate, endDate) VALUES (?, ?, ?)";
		System.out.println(requet);
		PreparedStatement ps= connection.getConnection().prepareStatement(requet);
            ps.setInt(1,roomId);
            ps.setDate(2,startDate);
            ps.setDate(3,endDate);
            ps.executeUpdate();

	}

	@Override
	public List<Reservation> ShowReservation() throws ClassNotFoundException, SQLException {
		List<Reservation> reservations = new ArrayList<>();
        try {
           
            PreparedStatement ps= connection.getConnection().prepareStatement("select * from reservation");
            ResultSet rs= ps.executeQuery();

            while(rs.next()) {
                int reservationId = rs.getInt("reservationId");
                Date startDate = rs.getDate("startDate");
                Date endDate = rs.getDate("endDate");
                int roomId = rs.getInt("roomId");
                reservations.add(new Reservation(reservationId,startDate,endDate,roomId));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return reservations;
		
	}}




