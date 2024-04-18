package com.hotel.model;

public class Room {
	private int roomId;
	private String type;
	private Double prix;
	private String equipement;
	private Boolean availability;
	
	
	public Room() {
		super();
	}


	public Room(int roomId, String type, Double prix, String equipement, Boolean availability) {
		super();
		this.roomId = roomId;
		this.type = type;
		this.prix = prix;
		this.equipement = equipement;
		this.availability = availability;
	}


	public int getRoomId() {
		return roomId;
	}


	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public Double getPrix() {
		return prix;
	}


	public void setPrix(Double prix) {
		this.prix = prix;
	}


	public String getEquipement() {
		return equipement;
	}


	public void setEquipement(String equipement) {
		this.equipement = equipement;
	}


	public Boolean getAvailability() {
		return availability;
	}


	public void setAvailability(Boolean availability) {
		this.availability = availability;
	}
	
	




}
