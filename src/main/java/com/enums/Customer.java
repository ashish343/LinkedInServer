package com.enums;

public enum Customer {
	BOOK_TABLE("book"),
	CUSTOMER_MESSAGE("message"),
	SUBSCRIBE("subscribe");
	
	private String data;
	
	private Customer(String string) {
		data = string;
	}
	
	public String toString(){
		return data;
	}
}
