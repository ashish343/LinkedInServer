package com.data;

import java.util.List;

public class Table {
	String tableId;
	String tableNo;
	int tableType;
	List<DatbaseOrderEntry> entry;

	public String getTableId() {
		return tableId;
	}

	public void setTableId(String tableId) {
		this.tableId = tableId;
	}

	public String getTableNo() {
		return tableNo;
	}

	public void setTableNo(String tableNo) {
		this.tableNo = tableNo;
	}

	public int getTableType() {
		return tableType;
	}

	public void setTableType(int tableType) {
		this.tableType = tableType;
	}

	public List<DatbaseOrderEntry> getEntry() {
		return entry;
	}

	public void setEntry(List<DatbaseOrderEntry> entry) {
		this.entry = entry;
	}
}
