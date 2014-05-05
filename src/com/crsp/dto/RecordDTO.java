package com.crsp.dto;

import java.io.Serializable;

public class RecordDTO extends BaseDTO implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private int delta;
	private String time;

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

	@Override
	public String toString() {
		return "[id: " + id + ", delta: " + delta + ", time: " + time + "]";
	}
}
