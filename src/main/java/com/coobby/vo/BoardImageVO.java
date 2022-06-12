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
@Table(name = "BoardImage")
public class BoardImageVO {
	
	@Id
	@Column(length = 150, name="b_stored_image")
	private String bStoredImage;
	@Column(length = 100, name="b_origin_image")
	private String bOriginImage;
	@Column(name = "b_file_size")
	private Integer bFileSize;
	@Column(name = "b_seq")
	private Integer bSeq;
	@ManyToOne
	@JoinColumn(name = "board_no")
	private BoardVO boardVO;
	
	@Transient
	private MultipartFile file;
	
	public MultipartFile getFile() {
		return file;
	}
	

	public void setFile(MultipartFile file) {
		if(!file.isEmpty()) {
			bOriginImage = file.getOriginalFilename();
			bStoredImage = UUID.randomUUID().toString() + "_" + getBOriginImage();
			Path path = Paths.get(System.getProperty("user.dir"), "src/main/resources/static/admin/announceimages");
			
			File files = new File(path+"/"+bStoredImage);
			
			try {
				file.transferTo(files);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
}
