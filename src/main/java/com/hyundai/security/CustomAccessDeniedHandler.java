package com.hyundai.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;

import lombok.extern.log4j.Log4j;

@Log4j
public class CustomAccessDeniedHandler implements AccessDeniedHandler{
<<<<<<< HEAD
   
   @Override
      public void handle(HttpServletRequest request, HttpServletResponse response,
            AccessDeniedException accessDeniedException) throws IOException, ServletException {
      
         log.info("Access Denied Handler");
         log.error("Redirect....");
         response.sendRedirect("/accessError");
      }
   
}
=======
	
	@Override
		public void handle(HttpServletRequest request, HttpServletResponse response,
				AccessDeniedException accessDeniedException) throws IOException, ServletException {
		
			log.info("Access Denied Handler");
			log.error("Redirect....");
			response.sendRedirect("/accessError");
		}
}
>>>>>>> 32e56478868f29fb1a7355f81315e96f1c7db0ac
