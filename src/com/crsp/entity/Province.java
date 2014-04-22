package com.crsp.entity;

import java.io.Serializable;
/*省份表的实体类*/

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 省份表实体类
 * @author Administrator
 *
 */
@Entity
@Table(name = "province")
public class Province implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private int id;// 主键,自增
	
	private String type;// 省份的类型
	
	private String name;// 省份的名称

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Province [id=" + id + ", type=" + type + ", name=" + name + "]";
	}
}
