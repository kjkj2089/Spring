package com.example.pion.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.example.auth.authentication.AuthenticationException;

@ControllerAdvice
public class ExceptionController {
	@ExceptionHandler(AuthenticationException.class)
	public String handleAuthenticationException(AuthenticationException e) {
		return "login";
	}
}
