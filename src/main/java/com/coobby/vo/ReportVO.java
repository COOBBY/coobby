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
@Table(name="report")
public class ReportVO {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="report_no")
	private Integer reportNo;
	
	@Column(name="report_type")
	private Integer reportType;
	
	@Column(name="report_id")
	private Integer reportId;
	
	@Column(name="report_cate")
	private String reportCate;
	
	@Column(name="report_vicid")
	private String reportVicid;
	
	@Column(name="report_susid")
	private String reportSusid;
	
	@Column(name="report_content")
	private String reportContent;
	
	@Column(name="report_apply")
	private Integer reportApply;
	
	@Column(name="report_date")
	private String reportDate;
	
}
