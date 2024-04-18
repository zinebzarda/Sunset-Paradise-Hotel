package com.hotel.model;

public class Reservation {
	private int reservationId;
	private int roomId;
	private String startDate;
	private String endDate;
	
	public Reservation() {
		super();
	}
	
	

	public Reservation(int reservationId, int roomId, String startDate, String endDate) {
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

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	

}
