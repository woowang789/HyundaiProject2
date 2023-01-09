package com.hyundai.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.hyundai.service.TagService;
import com.hyundai.vo.CustomUser;

import lombok.NoArgsConstructor;

@Component
@NoArgsConstructor
public class TagInterceptor extends HandlerInterceptorAdapter {

	@Autowired
	private TagService service;
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	
		String name = SecurityContextHolder.getContext().getAuthentication().getName();
		if(request.getMethod().equals("GET")) {
			String url = request.getRequestURI();
			if(!name.equals("anonymousUser") && !url.startsWith("/api") && !url.startsWith("/resources")) {
				List<String> tags =  service.getTagList(name);
//				System.out.println(user.getUsername()+" "+tags);
				if(modelAndView.getModelMap() != null)
					modelAndView.getModelMap().addAttribute("tags", tags);
			}
		}
	} 
}
