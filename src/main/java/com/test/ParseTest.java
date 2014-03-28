package com.test;

import com.parse.ParseNotificationHelper;

public class ParseTest {

	public static void main(String args[]) {
		ParseNotificationHelper.registerChannel("Uu1MrS1cqR", "Temp1", null);
		try {
			Thread.sleep(1000);
		}catch(Exception e) {
			
		}
		String msg = ParseNotificationHelper.getMessage("UPDATE_STATUS", "Temp", "hello");
		ParseNotificationHelper.notifyChannel("Temp", msg, null);
	}
}
