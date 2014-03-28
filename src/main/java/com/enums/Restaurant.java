package com.enums;

public enum Restaurant {
	MESSAGE("message");
	
	private String data;
	
	private Restaurant(String string) {
		data = string;
	}
	
	public String toString(){
		return data;
	}
}
