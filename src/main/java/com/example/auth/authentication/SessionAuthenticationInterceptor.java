package com.example.auth.authentication;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class SessionAuthenticationInterceptor implements HandlerInterceptor {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws IOException {
		//log.info("=============================== Session Authentication ===============================");
		// 세션 검증	
		HttpSession session = request.getSession();
		
//		if(session == null || session.getAttribute(name) || null) {
//			// redirect 혹은 exceptionHandler 이용
////			throw new AuthenticationException();
//			response.sendRedirect("/login");
//			return false;
//		}
		
//		session.getAttribute(name)
//		if() {
//			
//		}
		
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		//log.info("=============================== END ===============================");
		HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		//log.info("=============================== AfterCompletion ===============================");
		HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
	}

}
