package com.crsp.dto;

import java.io.Serializable;

public class ResourceDTO extends BaseDTO implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private String resource_name;
	private String status_name;
	private String uploader_name; // 上传人姓名
	private String time; // 上传时间
	private String school_name;
	private int size;
	private int download_count;// 被下载的次数
	private String type_name;
	private int price;

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

	public String getSchool_name() {
		return school_name;
	}

	public void setSchool_name(String school_name) {
		this.school_name = school_name;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public int getDownload_count() {
		return download_count;
	}

	public void setDownload_count(int download_count) {
		this.download_count = download_count;
	}
	
	public String getType_name() {
		return type_name;
	}

	public void setType_name(String type_name) {
		this.type_name = type_name;
	}
	
	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "[id: " + id + ", resource_name: " + resource_name
				+ ", status_name: " + status_name + ", uploader_name: "
				+ uploader_name + ", time: " + time + ", type_name: "
				+ type_name + "]";
	}
}
