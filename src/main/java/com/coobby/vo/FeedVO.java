package com.coobby.vo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;

@Data
@Entity
@Table(name="Feed")
public class FeedVO {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="fe_no")
	private Integer feNo;
	@Column(name="fe_title")
	private String feTitle;
	@Column(name="fe_content")
	private String feContent;

	@Column(insertable = false, updatable = false, columnDefinition = "date default (current_date)", name="fe_regdate")
	private String feRegdate;
	@Column(name="fe_replycheck")
	private Integer feReplycheck;
	@Column(name="mem_id")
	private String memId;
	
	
	
}
