package com.crsp.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * 资源表实体类
 * 
 * @author Administrator
 * 
 */
@Entity
@Table(name = "resource")
public class Resource implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	private int id;// 主键
	@ManyToOne(targetEntity = Resource_Type.class)
	@JoinColumn(name = "type_id")
	private Resource_Type resource_type;// 外键,类型编号

	private int user_id;// 外键,用户的Id

	private String name;// 资源名

	private int status;// 资源状态,0为待审核状态,1为已审核状态

	private String time;// 上传时间

	private int price;// 资源积分

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Resource_Type getResource_type() {
		return resource_type;
	}

	public void setResource_type(Resource_Type resource_type) {
		this.resource_type = resource_type;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Resource [id=" + id + ", resource_type=" + resource_type.toString()
				+ ", user_id=" + user_id + ", name=" + name + ", status="
				+ status + ", time=" + time + ", price=" + price + "]";
	}
}
