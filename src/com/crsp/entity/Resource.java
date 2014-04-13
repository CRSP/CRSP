package com.crsp.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;

/*资源表实体类*/
@Entity
@Table(name = "resource")
public class Resource implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "id")
	@GenericGenerator(name = "paymentableGenerator", strategy = "native")
	@GeneratedValue(generator = "paymentableGenerator")
	private Integer id;// 主键
	@ManyToOne(targetEntity = Resource_Type.class)
	@JoinColumn(referencedColumnName = "id", name = "type_id")
	private Resource_Type resource_type;// 外键,类型编号
	@Column
	private Integer user_id;
	@Column
	private String name;// 资源名
	@Column
	private Integer status;// 资源状态,0为待审核状态,1为已审核状态
	@Column
	private String time;// 上传时间
	@Column
	private Integer price;// 资源积分
	@Transient
	private String user_name;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Resource_Type getResource_type() {
		return resource_type;
	}

	public void setResource_type(Resource_Type resource_type) {
		this.resource_type = resource_type;
	}

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
}
