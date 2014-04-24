package com.crsp.dto;

import java.io.Serializable;

public class ResourceDTO extends BaseDTO implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String resource_name;
	private String status_name;
	private String uploader_name; // 上传人姓名
	private String time; // 上传时间
	private String school_name;
	private int type; // 0:上传, 1:下载

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getResource_name() {
		return resource_name;
	}

	public void setResource_name(String resource_name) {
		this.resource_name = resource_name;
	}

	public String getUploader_name() {
		return uploader_name;
	}

	public void setUploader_name(String uploader_name) {
		this.uploader_name = uploader_name;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getStatus_name() {
		return status_name;
	}

	public void setStatus_name(String status_name) {
		this.status_name = status_name;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getSchool_name() {
		return school_name;
	}

	public void setSchool_name(String school_name) {
		this.school_name = school_name;
	}

	@Override
	public String toString() {
		return "[id: " + id + ", resource_name: " + resource_name
				+ ", status_name: " + status_name + ", uploader_name: "
				+ uploader_name + ", time: " + time + ", type: " + type + "]";
	}
}
