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

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
@Entity
@Table(name = "feed_image")
public class FeedImageVO {

	@Id
	@Column(name = "fe_stored_image")
	private String feStoredImage;
	@Column(name = "fe_origin_image")
	private String feOriginImage;
	@Column(name = "fe_file_size")
	private int feFileSize;
	@Column(name = "fe_seq")
	private int feSeq;
	@ManyToOne
	@JoinColumn(name = "fe_no")
	private FeedVO feed;

	@Transient
	private MultipartFile file;

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		if (!file.isEmpty()) {
			feOriginImage = file.getOriginalFilename();
			feStoredImage = UUID.randomUUID().toString() + "_" + feOriginImage;
			Path path = Paths.get(System.getProperty("user.dir"), "src/main/resources/static/user/feedimages");

			File files = new File(path + "/" + feStoredImage);

			try {
				file.transferTo(files);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}
}
