package com.hyundai.interceptor;

import java.util.ArrayList;
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
		/*회원 탈퇴 시, 로그아웃 시*/
		if( SecurityContextHolder.getContext() == null || 
				SecurityContextHolder.getContext().getAuthentication() == null) return;
	
		String name = SecurityContextHolder.getContext().getAuthentication().getName();
		if(request.getMethod().equals("GET")) {
			String url = request.getRequestURI();
			if(!name.equals("anonymousUser") && !url.startsWith("/api") && !url.startsWith("/resources")) {
				List<String> tags =  service.getTagList(name);
				if(tags == null ) tags = new ArrayList<String>();
				System.out.println("tags : "+ tags);
//				System.out.println(user.getUsername()+" "+tags);
				if(modelAndView != null && modelAndView.getModelMap() != null)
					modelAndView.getModelMap().addAttribute("tags", tags);
			}
		}
	} 
}
