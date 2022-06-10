package com.coobby.vo;

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
@Table(name="MEMBER")
public class MemberVO {
	
	@Id
	@Column(name="mem_id")
	private String memId;
	
	@Column(name="mem_pass")
	private String memPass;
	
	@Column(name="mem_name")
	private String memName;
	
	@Column(name="mem_tel")
	private String memTel;
	
	@Column(name="mem_birth")
	private String memBirth;
	
	@Column(name="mem_nickname")
	private String memNickname;
	
	@Column(name="mem_sex")
	private Integer memSex;
	
	@Column(insertable=false, updatable=false, columnDefinition="date default (current_date)", name="mem_createtime")
	private String memCreatetime;
	
	@Column(name="mem_deletetime")
	private String memDeletetime;
	
	@Column(name="mem_updatetime")
	private String memUpdatetime;
	
	@Column(name="mem_auth")
	private Integer memAuth;
	
	@Column(name="mem_stored_image")
	private String memStoredimage;
	
	@Column(name="mem_origin_image")
	private String memOriginimage;
	
	@Column(name="mem_file_size")
	private Integer memFilesize;
	
	@Column(name="mem_kkt")
	private Integer memKkt;
	
	@Column(name="report_cnt")
	private Integer reportCnt;
}

