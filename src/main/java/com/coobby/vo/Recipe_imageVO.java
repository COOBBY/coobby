package com.coobby.vo;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
@Entity
@Table(name = "RECIPE_IMAGE")
public class Recipe_imageVO {
	@Id
	@Column(name = "re_stored_image")
	private String reStoredImage;

	@Column(name = "re_origin_image")
	private String reOriginImage;

	@Column(name = "re_file_size")
	private Integer reFileSize;
	
	@Column(name= "re_seq")
	private Integer reSeq;
	
	@Column(name="re_split")
	private Integer reSplit;

	@ManyToOne
	@JoinColumn(name = "re_no")
	private RecipeVO recipeVO;
	
	@Transient
	private MultipartFile file;
	
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		if(!file.isEmpty()) {
			reOriginImage = file.getOriginalFilename();
			reStoredImage = UUID.randomUUID().toString() + "_" + reOriginImage;
			Path path = Paths.get(System.getProperty("user.dir"), "src/main/resources/static/user/recipeimages");
			
			File files = new File(path+"/"+reStoredImage);
			
			try {
				file.transferTo(files);
			}catch(Exception e) {
				e.printStackTrace();
			}
	}
}


	
	
	
	
	
	
	
}
