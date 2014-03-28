package com.enums;

public enum Customer {
	BOOK_TABLE("book"),
	CUSTOMER_MESSAGE("message");
	
	private String data;
	
	private Customer(String string) {
		data = string;
	}
	
	public String toString(){
		return data;
	}
}
