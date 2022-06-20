package com.coobby.vo;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

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
	@Column(name="fe_regdate")
	private String feRegdate;
	@Column(name="fe_replycheck")
	private Integer feReplycheck;
	@Column(name="mem_id")
	private String memId;
	
	// 좋아요 기능 
	@OneToMany
	private List<FeLoveVO> feloveVO;
	
	// 피드 삭제 
	@Column(name="fe_state")
	private Integer FeedState;
	
	
	
}
