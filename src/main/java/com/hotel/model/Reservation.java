package com.hotel.model;

import java.sql.Date;

public class Reservation {
	private int reservationId;
	private int roomId;
	private Date startDate;
	private Date endDate;
	public Reservation(int reservationId, Date startDate, Date endDate , int roomId) {
		super();
		this.reservationId = reservationId;
		this.roomId = roomId;
		this.startDate = startDate;
		this.endDate = endDate;
	}
	public int getReservationId() {
		return reservationId;
	}
	public void setReservationId(int reservationId) {
		this.reservationId = reservationId;
	}
	public int getRoomId() {
		return roomId;
	}
	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	
	
	

}
