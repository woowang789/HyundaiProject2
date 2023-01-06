package com.hyundai.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.hyundai.mapper.SearchMapper;
import com.hyundai.service.TagService;
import com.hyundai.vo.CustomUser;

import lombok.RequiredArgsConstructor;

@Component
@RequiredArgsConstructor
public class TagInterceptor extends HandlerInterceptorAdapter {

	private final TagService service;
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		CustomUser user =  (CustomUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if(request.getMethod().equals("GET")) {
			String url = request.getRequestURI();
			if(user != null && !url.startsWith("/api") && !url.startsWith("/resources")) {
				List<String> tags =  service.getTagList(user.getUsername());
//				System.out.println(user.getUsername()+" "+tags);
				modelAndView.getModelMap().addAttribute("tags", tags);
			}
		}
	} 
}
