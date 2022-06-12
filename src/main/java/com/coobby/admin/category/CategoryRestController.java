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



@RestController		//ajax로 비동기 데이터 처리를 하기 위함															
@RequestMapping("admin")
public class CategoryRestController {
	
	@Autowired
	private CategoryService cateService;
	
	@PostMapping("/insertCate")			//카테고리 입력 요청이 들어왔을 때						
	public int insertCate( String cateType, String cateName) {			//카테고리 타입과 카테고리 이름을 매개변수로 받음
		return cateService.insertCate(cateType.strip(), cateName);		//카테고리 타입과 카테고리 이름을 인자로 insertCate 메소드 실행
	}
	
	@PutMapping("/updateCate")			//카테고리 수정 요청이 들어왔을 때
	public void updateCate(String cateName, Integer cateCode, String cateType ) {	//카테고리 이름과 그 카테고리의 코드, 그리고 카테고리의 타입을 매개변수로 받음
		cateService.updateCate(cateName, cateCode, cateType);		//매개변수로 받은 3개를 cateService의 updateCate메소드의 인자로 넣어줌
	}
	
	@DeleteMapping("/deleteCate")		//카테고리 삭제 요청이 들어왔을 때
	public void deleteCate(String cateType, int cateCode) {		//카테고리 타입과 카테고리 코드만을 매개변수로 받음
		cateService.deleteCate(cateType, cateCode);			//2개의 매개변수를 deleteCate의 인자로 메소드 호출 
	}
}
