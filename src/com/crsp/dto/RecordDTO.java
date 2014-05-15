package com.crsp.dto;

import java.io.Serializable;

public class RecordDTO extends BaseDTO implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private int delta;
	private String time;
	private int resource_id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getDelta() {
		return delta;
	}

	public void setDelta(int delta) {
		this.delta = delta;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}
	
	public int getResource_id() {
		return resource_id;
	}

	public void setResource_id(int resource_id) {
		this.resource_id = resource_id;
	}

	@Override
	public String toString() {
		return "[id: " + id + ", delta: " + delta + ", time: " + time + "]";
	}
}
