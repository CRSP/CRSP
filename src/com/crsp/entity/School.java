package com.crsp.entity;

import java.io.Serializable;
/*学校表实体类*/

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
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

	private int province_id;// 外键,省份Id

	private String name;// 名称

	private String description;// 描述

	private String avatar; // 头像

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

	public int getProvince_id() {
		return province_id;
	}

	public void setProvince_id(int province_id) {
		this.province_id = province_id;
	}

	@Override
	public String toString() {
		return "School [id=" + id + ", province_id=" + province_id + ", name="
				+ name + ", description=" + description + ", avatar=" + avatar
				+ "]";
	}
}
