package com.hyundai.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.hyundai.mapper.TagMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class TagService {
	
	private final TagMapper mapper;
	
	public int toggleTag(String userId, String keyword) {
		boolean isExist = mapper.isExist(userId, keyword);
		if(isExist) {
			mapper.removeTag(userId, keyword);
			return 0;
		}else {
			mapper.insertTag(userId, keyword);
			return 1;
		}
	}
	
	public List<String> getTagList(String userId){
		return mapper.getTagList(userId);
	}
}
