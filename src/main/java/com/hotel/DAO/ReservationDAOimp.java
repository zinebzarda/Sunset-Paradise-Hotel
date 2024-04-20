package com.hotel.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hotel.model.Reservation;
import com.hotel.model.Room;

public class ReservationDAOimp implements ReservationDAO{
	
private RoomDAO roomdao;
	
	String SELECT_RESERVATION_SQL="select * from reservation";
	String SAVE_RESERVATION="INSERT INTO reservation (reservationId, roomId, startDate, endDate) VALUES (?, ?, ?, ?)"; 
	String CANCEL_RESERVATION ="DELETE FROM reservation WHERE reservationId=?";

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
	

	@Override
	public void saveReservation(Reservation reservation) throws SQLException {
		Connection cnx = connection.getConnection();
		PreparedStatement ps= cnx.prepareStatement(SAVE_RESERVATION);
		ps.setInt(1, reservation.getReservationId());
		ps.setInt(2,reservation.getRoomId());
		ps.setString(3, reservation.getStartDate());
		ps.setString(4, reservation.getEndDate());
		ps.executeUpdate();
		roomdao = new RoomDAOimp();
		roomdao.isReserved(reservation.getRoomId());
		
	}


	@Override
	public void cancelReservation(int id) throws SQLException {
		// TODO Auto-generated method stub
		
	}
	

}
