package com.coobby.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="chattingroom")
public class ChattingVO {
	
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	@Column(name = "room_seq")
	private Integer roomSeq;
	
	@Column(name = "room_number")
	private int roomNumber;
	
	@Column(name = "room_name")
	private String roomName;
	
	@Column(name = "room_member")
	private String roomMember;
	
}
