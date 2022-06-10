package com.coobby.vo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;
@Data
@Entity
@Table(name = "Board")
public class BoardVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = " board_no")
	private Integer boardNo;
	
	@Column(length = 100, name = "board_title")
	private String boardTitle;
	@Column(length = 1000, name = "board_content")
    private String boardContent;
	@Column(name = "board_viewcnt")
	private Integer boardViewcnt;
	@Column(name = "board_imp")
	private Integer boardImp;
	@Column(insertable=false, updatable=false, columnDefinition="date default (current_date)", name = "board_createtime")
	private String boardCreatetime;
	@Column(name = "board_updatetime")
	private Date boardUpdatetime;
	
	
}
	