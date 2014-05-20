package com.crsp.entity;

import java.io.Serializable;
/*学校表实体类*/

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


/**
 * 学校表实体类
 * 
 * @author Administrator
 * 
 */
@Entity
@Table(name = "school")
public class School implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private int id;// 主键,自增
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="province_id")
	private Province province;// 外键,省份Id

	private String name;// 校园的名称

	private String description;// 校园的描述

	private String avatar; // 校园的头像 
	
	private int resource_count;// 校园拥有资源的数量
	
	public School() {
	}
	
	public School(int id, String name, int resource_count, Province province, String description) {
		super();
		this.id = id;
		this.name = name;
		this.resource_count = resource_count;
		this.province = province;
		this.description = description;
	}
	
	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public int getResource_count() {
		return resource_count;
	}

	public void setResource_count(int resource_count) {
		this.resource_count = resource_count;
	}
	
	public Province getProvince() {
		return province;
	}

	public void setProvince(Province province) {
		this.province = province;
	}

	@Override
	public String toString() {
		return "School [id=" + id + ", province=" + province + ", name=" + name
				+ ", description=" + description + ", avatar=" + avatar
				+ ", resource_count=" + resource_count + "]";
	}
}
