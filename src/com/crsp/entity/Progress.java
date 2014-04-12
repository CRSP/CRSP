package com.crsp.entity;

public class Progress {
	private long bytesRead;
	private long contentLength;
	private int items;
	private float velocity;
	private long pastTime;
	private long predictTime;

	public long getBytesRead() {
		return bytesRead;
	}

	public void setBytesRead(long bytesRead) {
		this.bytesRead = bytesRead;
	}

	public long getContentLength() {
		return contentLength;
	}

	public void setContentLength(long contentLength) {
		this.contentLength = contentLength;
	}

	public int getItems() {
		return items;
	}

	public void setItems(int items) {
		this.items = items;
	}

	public float getVelocity() {
		return velocity;
	}

	public void setVelocity(float velocity) {
		this.velocity = velocity;
	}

	public long getPastTime() {
		return pastTime;
	}

	public void setPastTime(long pastTime) {
		this.pastTime = pastTime;
	}

	public long getPredictTime() {
		return predictTime;
	}

	public void setPredictTime(long predictTime) {
		this.predictTime = predictTime;
	}

	public long getStartTime() {
		return startTime;
	}

	public void setStartTime(long startTime) {
		this.startTime = startTime;
	}

	private long startTime;

	@Override
	public String toString() {
		return "[bytesRead:" + bytesRead + ", contentLength:" + contentLength
				+ ", items:" + items + ", velocity:" + velocity + ", pastTime:"
				+ pastTime + ", predictTime:" + predictTime + "]";
	}
}
