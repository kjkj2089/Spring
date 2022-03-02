package com.example.auth;

import java.util.List;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.example.auth.authentication.SessionAuthenticationInterceptor;
import com.example.auth.authorization.MemberAuthorizationHandlerMethodArgumentResolver;
import com.example.pion.application.MemberService;

@Configuration
public class AuthConfig implements WebMvcConfigurer{	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(new SessionAuthenticationInterceptor())
				.excludePathPatterns(
						"/css/**", "/*.ico",
						"/login*/**", "/logout*/**"
						, "/error", "/error-page/**"  // 오류 페이지 경로
				);
	}

	@Override
	public void addArgumentResolvers(List<HandlerMethodArgumentResolver> resolvers) {
		resolvers.add(new MemberAuthorizationHandlerMethodArgumentResolver());
	}
}
