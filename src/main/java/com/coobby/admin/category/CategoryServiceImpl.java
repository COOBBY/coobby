package com.coobby.admin.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coobby.repository.CateHowRepository;
import com.coobby.repository.CateIngrRepository;
import com.coobby.repository.CateKindRepository;
import com.coobby.repository.CateSituRepository;
import com.coobby.vo.CateHowVO;
import com.coobby.vo.CateIngrVO;
import com.coobby.vo.CateKindVO;
import com.coobby.vo.CateSituVO;


 
@Service
public class CategoryServiceImpl implements CategoryService{

	
	@Autowired
	private CateHowRepository cateHowRepo;
	@Autowired
	private CateKindRepository cateKindRepo;
	@Autowired
	private CateSituRepository cateSituRepo;
	@Autowired
	private CateIngrRepository cateIngrRepo;
	@Override
	public List<CateKindVO> getKindList() {
		
		return (List<CateKindVO>) cateKindRepo.findAll();
	}


	@Override
	public List<CateHowVO> getHowList() {
		
		return (List<CateHowVO>) cateHowRepo.findAll();
	}


	@Override
	public List<CateIngrVO> getIngrList() {
		
		return (List<CateIngrVO>) cateIngrRepo.findAll();
	}


	@Override
	public List<CateSituVO> getSituList() {
		
		return (List<CateSituVO>) cateSituRepo.findAll();
	}
	
	@Override
	public int insertCate(String cateType, String cateName) {
		if(cateType.equals("종류별")) {
			CateKindVO vo = new CateKindVO();
			vo.setKindName(cateName);
			cateKindRepo.save(vo);
			return cateKindRepo.findMaxCode();
		}
		else if(cateType.equals("상황별")) {
			CateSituVO vo = new CateSituVO();
			vo.setSituName(cateName);
			cateSituRepo.save(vo);
			return cateSituRepo.findMaxCode();
		}
		else if(cateType.equals("방법별")) {
			CateHowVO vo = new CateHowVO();
			vo.setHowName(cateName);
			cateHowRepo.save(vo);
			return cateHowRepo.findMaxCode();
		}	
		else
		{
			CateIngrVO vo = new CateIngrVO();
			vo.setIngrName(cateName);
			cateIngrRepo.save(vo);
			return cateIngrRepo.findMaxCode();
		}
	}


	@Override
	public void updateCate(String cateName, int cateCode, String cateType) {
		if(cateType.equals("종류별")) {
			CateKindVO vo = cateKindRepo.findById(cateCode).get();
			vo.setKindName(cateName);
			cateKindRepo.save(vo);
		}
		else if(cateType.equals("상황별")) {
			CateSituVO vo = cateSituRepo.findById(cateCode).get();
			vo.setSituName(cateName);
			cateSituRepo.save(vo);
		}
		else if(cateType.equals("방법별")) {
			CateHowVO vo = cateHowRepo.findById(cateCode).get();
			vo.setHowName(cateName);
			cateHowRepo.save(vo);
		}	
		else
		{
			CateIngrVO vo = cateIngrRepo.findById(cateCode).get();
			vo.setIngrName(cateName);
			cateIngrRepo.save(vo);
		}
		
	}


	@Override
	public void deleteCate(String cateType, int cateCode) {
		if(cateType.equals("종류별")) {
			cateKindRepo.deleteById(cateCode);
		}
		else if(cateType.equals("상황별")) {
			cateSituRepo.deleteById(cateCode);
		}
		else if(cateType.equals("방법별")) {
			cateHowRepo.deleteById(cateCode);
		}	
		else
		{
			cateIngrRepo.deleteById(cateCode);
		}
		
	}

	
//	@Override
//	public List<CategoryVO> getCateList() {
//		return (List<CategoryVO>) cateRepo.findAll();
//	}

//
//	@Override
//	public void deleteCate(Integer cateCode) {
//		cateRepo.deleteById(cateCode);	
//	}


}
