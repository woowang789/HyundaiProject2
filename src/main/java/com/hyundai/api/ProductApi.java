package com.hyundai.api;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.hyundai.mapper.ProductMapper;
import com.hyundai.vo.ProductOptionDTO;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/api/product")
@RequiredArgsConstructor
@Log4j
public class ProductApi {
	
	private final ProductMapper productMapper;
	
	
	@GetMapping("/get")
	public ResponseEntity<ProductOptionDTO> getProduct(
			@RequestParam("productId")String productId, 
			@RequestParam("optionId")String optionId){
		log.info(productId+" "+optionId);
		ProductOptionDTO dto = productMapper.getProduct(productId,optionId);
		
		return new ResponseEntity<>(dto,HttpStatus.OK);
	}

}
