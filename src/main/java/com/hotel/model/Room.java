package com.hotel.model;

import java.sql.Date;

public class Room {
	
	private Integer roomId;
	private String Type;
	private Integer Prix;
	private String equipement;
	private Date availability;
	private Integer Nombre_personne;
	private String img;
	
	public Room(Integer roomId, String type, Integer prix, String equipement, Date availability,
			Integer nombre_personne ,String img) {
		super();
		this.roomId = roomId;
		Type = type;
		Prix = prix;
		this.equipement = equipement;
		this.availability = availability;
		Nombre_personne = nombre_personne;
		this.img = img;
	}
	public Integer getRoomId() {
		return roomId;
	}
	public void setRoomId(Integer roomId) {
		this.roomId = roomId;
	}
	public String getType() {
		return Type;
	}
	public void setType(String type) {
		Type = type;
	}
	public Integer getPrix() {
		return Prix;
	}
	public void setPrix(Integer prix) {
		Prix = prix;
	}
	public String getEquipement() {
		return equipement;
	}
	public void setEquipement(String equipement) {
		this.equipement = equipement;
	}
	public Date getAvailability() {
		return availability;
	}
	public void setAvailability(Date availability) {
		this.availability = availability;
	}
	public Integer getNombre_personne() {
		return Nombre_personne;
	}
	public void setNombre_personne(Integer nombre_personne) {
		Nombre_personne = nombre_personne;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	
	
	
	
}
