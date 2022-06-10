package com.coobby.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="feed_comment")
public class FeedCommentVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="fe_comm_no")
	private int feCommNo;
	
	@Column(name="fe_content")
	private String feContent;
	
	@Column(name="fe_comm_createtime")
	private String feCommCreatetime;
	
	@Column(name="fe_comm_updatetime")
	private String feCommUpdatetime;
	
	@Column(name="fe_parent")
	private int feParent;
	
	@ManyToOne
	@JoinColumn(name = "fe_no")
	private FeedVO feed;
	
	@ManyToOne
	@JoinColumn(name = "mem_id")
	private MemberVO member;
	

}
