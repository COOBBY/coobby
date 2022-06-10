package com.coobby.vo;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import javax.persistence.OneToOne;

import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="recipe")
public class RecipeVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="re_no")
	private Integer reNo;
	
//	@CreatedDate
//	@DateTimeFormat(pattern="yyyy-MM-dd")
	@Column(insertable=false, updatable=false, columnDefinition="DATE DEFAULT (current_date)", name="re_createtime")
//	@Temporal(TemporalType.DATE)
//	@Column(name="re_createtime")
	private String reCreatetime;

	@Column(name="re_updatetime")
	private String reUpdatetime;

	@Column(name="re_title")
	private String reTitle;

	@Column(name="re_content")
	private String reContent;

	@Column(name="re_tip")
	private String reTip;

	@Column(name="re_video_url")
	private String reVideoUrl;
	
	@Column(name="re_viewcnt")
	private Integer reViewcnt;

	@Column(name="re_cook")
	private String reCook;

	@ManyToOne
	@JoinColumn(name="mem_id")
	private MemberVO memberVO;

	@OneToOne
	@JoinColumn(name="how_Code")
	private CateHowVO cateHow;
	
	@OneToOne
	@JoinColumn(name="ingr_Code")
	private CateIngrVO cateIngr;
	
	@OneToOne
	@JoinColumn(name="situ_Code")
	private CateSituVO cateSitu;
	
	@OneToOne
	@JoinColumn(name="kind_Code")
	private CateKindVO cateKind;

	@OneToMany(mappedBy ="recipeVO")
	List<Recipe_imageVO> recipe_imageVO;
	
//	@PrePersist
//    public void reCreatetime() {
//        this.reCreatetime = LocalDate.now();
//    }

}
