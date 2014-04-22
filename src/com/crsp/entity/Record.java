package com.crsp.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 资源记录表实体类
 * 
 * @author Administrator
 * 
 */
@Entity
@Table(name = "record")
public class Record implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	private int id;// 主键

	private int resource_id;// 外键,资源Id

	private int upload_user_id;// 外键,上传用户Id

	private int download_user_id;// 外键,下载用户Id

	private int delta;// 积分

	private String time;// 记录的时间

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getResource_id() {
		return resource_id;
	}

	public void setResource_id(int resource_id) {
		this.resource_id = resource_id;
	}

	public int getUpload_user_id() {
		return upload_user_id;
	}

	public void setUpload_user_id(int upload_user_id) {
		this.upload_user_id = upload_user_id;
	}

	public int getDownload_user_id() {
		return download_user_id;
	}

	public void setDownload_user_id(int download_user_id) {
		this.download_user_id = download_user_id;
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
		return "Record [id=" + id + ", resource_id=" + resource_id
				+ ", upload_user_id=" + upload_user_id + ", download_user_id="
				+ download_user_id + ", delta=" + delta + ", time=" + time
				+ "]";
	}
}
