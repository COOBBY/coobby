package com.coobby.admin.category;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;



@RestController
@RequestMapping("admin")
public class CategoryRestController {
	
	@Autowired
	private CategoryService cateService;
	
	@PostMapping("/insertCate")
	public int insertCate( String cateType, String cateName) {
		return cateService.insertCate(cateType, cateName);
	}
	
	@PutMapping("/updateCate")
	public void updateCate(String cateName, Integer cateCode, String cateType ) {
		cateService.updateCate(cateName, cateCode, cateType);
	}
	
	@DeleteMapping("/deleteCate")
	public void deleteCate(String cateType, int cateCode) {
		cateService.deleteCate(cateType, cateCode);
	}
}
