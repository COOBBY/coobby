package com.coobby.vo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;

@Data
@Entity
@Table(name="RE_COMMENT")
public class Re_commentVO {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="re_comm_no")
	private int reCommNo;
	
	@ManyToOne
	@JoinColumn(name="re_no")
	private RecipeVO recipeVO;
	
	@ManyToOne
	@JoinColumn(name="mem_id")
	private MemberVO memberVO;
	
	@Column(name="re_content")
	private String reContent;
	
	@Column(name="re_comm_createtime")
	private String reCommCreatetime;
	
	@Column(name="re_comm_updatetime")
	private String re_comm_updatetime;
	
	@Column(name="re_parent")
	private int reParent;
	
	@Column(name="re_comm_status")
	private int reCommStatus;

}
