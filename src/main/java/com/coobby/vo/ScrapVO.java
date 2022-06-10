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
@Table(name="SCRAP")
public class ScrapVO {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="scrap_no")
	private Integer scrapNo;
	
	@ManyToOne
	@JoinColumn(name="mem_id")
	private MemberVO memberVO;
	
	@ManyToOne
	@JoinColumn(name="re_no")
	private RecipeVO recipeVO;
	
}