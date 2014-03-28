package com.enums;

public enum UrlParameter {
			DEBUG("debug");

	private String data;

	private UrlParameter(String string) {
		data = string;
	}

	public String toString() {
		return data;
	}
}
