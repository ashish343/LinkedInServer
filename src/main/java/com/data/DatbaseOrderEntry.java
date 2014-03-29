package com.data;

public class DatbaseOrderEntry {

	private String tableId;
	private int tableType;
	private String restaurantId;
	private String customerId;
	private long startTime;
	private long endTime;

	public String getTableId() {
		return tableId;
	}

	public void setTableId(String tableId) {
		this.tableId = tableId;
	}

	public int getTableType() {
		return tableType;
	}

	public void setTableType(int tableType) {
		this.tableType = tableType;
	}

	public String getRestaurantId() {
		return restaurantId;
	}

	public void setRestaurantId(String restaurantId) {
		this.restaurantId = restaurantId;
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public long getStart_time() {
		return startTime;
	}

	public void setStart_time(long start_time) {
		this.startTime = start_time;
	}

	public long getEnd_time() {
		return endTime;
	}

	public void setEnd_time(long end_time) {
		this.endTime = end_time;
	}

}
