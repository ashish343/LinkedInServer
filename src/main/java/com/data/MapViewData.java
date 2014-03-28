package com.data;

import java.util.ArrayList;
import java.util.List;

public class MapViewData {
	private List<Place> places;

	public List<Place> getPlaces() {
		return places;
	}

	public void setPlaces(List<Place> places) {
		this.places = places;
	}

	public MapViewData() {
		places = new ArrayList<Place>();
	}

}
