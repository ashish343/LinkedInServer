package com.enums;

public enum Restaurant {
	MESSAGE("message"),
	REST_BOOK_TABLE("notify_table"),
	REST_MESSAGE("notify_chat");
	
	private String data;
	
	private Restaurant(String string) {
		data = string;
	}
	
	public String toString(){
		return data;
	}
}
