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
@Table(name = "QnA")
public class QnAVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "qna_no")
	private Integer qnaNo;
	
	@Column(length = 100, name = "q_title")
	private String qtitle;
	@Column(length = 1000, name = "q_content")
	private String qcontent;
	@Column(name = "q_check")
	private Integer qcheck;
	@Column(name = "q_date", insertable=false, updatable=false, columnDefinition="date default (current_date)")
	private String qdate;
	@Column(length = 1000, name = "a_content")
	private String acontent;
	@Column(name = "a_check")
	private Integer acheck;
	@Column(name = "a_date")
	private String adate;
	@ManyToOne
	@JoinColumn(name="mem_id")
	private MemberVO memberVO;

	
}
