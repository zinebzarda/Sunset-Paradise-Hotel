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
	Connection cnx = connection.getConnection();

	@Override
	public void Reserver(Date startDate, Date endDate , Integer roomId) throws ClassNotFoundException, SQLException {
		
	
		
		String requet = "INSERT INTO reservation ( roomId, startDate, endDate) VALUES (?, ?, ?)";
		
		PreparedStatement ps= cnx.prepareStatement(requet);
       
            ps.setInt(1,roomId);
            ps.setDate(2,startDate);
            ps.setDate(3,endDate);
            ps.executeUpdate();
     
               
               String Requet = "UPDATE room SET availability=? WHERE roomId=?";
                ps= cnx.prepareStatement(Requet);
                ps.setDate(1,startDate);
                ps.setInt(2,roomId);
                ps.executeUpdate();
		
	}

	@Override
	public List<Reservation> ShowReservation() throws ClassNotFoundException, SQLException {
		List<Reservation> reservations = new ArrayList<>();
        try {
            Connection cnx = connection.getConnection();
            PreparedStatement ps= cnx.prepareStatement("select * from reservation");
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




