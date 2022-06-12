package com.coobby.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="fe_love")
public class FeLoveVO {
	
	@Id
	@Column(name="re_love_no")
	private int reLoveNo;

	@ManyToOne
	@JoinColumn(name="fe_no")
	private FeedVO feed;
	
	@ManyToOne
	@JoinColumn(name="mem_id")
	private MemberVO member;

}
