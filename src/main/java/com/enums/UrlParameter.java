package com.enums;

public enum UrlParameter {
			DEBUG("debug"),
			TABLE_ID("tableId"),
			ACTION("action"),
			RESULT("result");

	private String data;

	private UrlParameter(String string) {
		data = string;
	}

	public String toString() {
		return data;
	}
}
