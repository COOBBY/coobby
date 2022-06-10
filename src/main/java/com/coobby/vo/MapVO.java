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
@Table(name="price")
public class MapVO {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="price_no")
	private Integer priceNo;
	
	@Column(name="ingr_code")
	private Integer ingrCode;
	

	private Integer price;
	
	@Column(name="store_name")
	private String storeName;
	
	@Column(name="on_off")
	private Integer onOff;
	
	private double latitude;
	
	private double longitude;
	
	@Column(name="product_name")
	private String productName;
	
	private String link;
}
