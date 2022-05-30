package com.example.demo.controller.exception;

public class NoEntityException extends IllegalAccessException {
	private static final long SerialVersionUID = 1L;
	
	public NoEntityException(String message) {
		super(message);
	}

}
