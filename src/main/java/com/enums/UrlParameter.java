package com.enums;

public enum UrlParameter {
	DEBUG("debug"), TABLE_ID("tableId"), ACTION("action"), RESULT("result"), DATA(
			"data"), RESTAURANT_ID("rId"), TABLE_TYPE("tableType"), CUSTOMER_ID(
			"customerID"), START_TIME("startTime"), END_TIME("endTime");

	private String data;

	private UrlParameter(String string) {
		data = string;
	}

	public String toString() {
		return data;
	}
}
