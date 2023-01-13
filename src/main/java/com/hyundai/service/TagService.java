package com.hyundai.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.hyundai.mapper.TagMapper;

import lombok.RequiredArgsConstructor;

/**
 * 태그 관련 비스니스 로직을 처리하는 Service
 * @author 왕종휘
 */
@Service
@RequiredArgsConstructor
public class TagService {
	
	private final TagMapper mapper;
	
	/**
	 * 유저의 해당 키워드가 즐겨찾기 되었는지 확인 후 toggle
	 * @param 태그 키워드(keyword)
	 */
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
