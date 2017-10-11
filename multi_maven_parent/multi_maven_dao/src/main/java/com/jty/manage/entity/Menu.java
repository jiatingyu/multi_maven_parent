package com.jty.manage.entity;

import java.util.Date;

public class Menu {
	private Integer id;
	private String name;
	private String parentId;
	private String layer;
	private String type;
	private String resUrl;
	private String btnId;
	private String btnFun;
	private String icon;
	private String sort;
	private String isValid;
	private String description;
	private Date createTime;
	private Date updateTime;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	public String getLayer() {
		return layer;
	}
	public void setLayer(String layer) {
		this.layer = layer;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getResUrl() {
		return resUrl;
	}
	public void setResUrl(String resUrl) {
		this.resUrl = resUrl;
	}
	public String getBtnId() {
		return btnId;
	}
	public void setBtnId(String btnId) {
		this.btnId = btnId;
	}
	public String getBtnFun() {
		return btnFun;
	}
	public void setBtnFun(String btnFun) {
		this.btnFun = btnFun;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public String getIsValid() {
		return isValid;
	}
	public void setIsValid(String isValid) {
		this.isValid = isValid;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	@Override
	public String toString() {
		return "Menu [id=" + id + ", name=" + name + ", parentId=" + parentId + ", layer=" + layer + ", type=" + type
				+ ", resUrl=" + resUrl + ", btnId=" + btnId + ", btnFun=" + btnFun + ", icon=" + icon + ", sort=" + sort
				+ ", isValid=" + isValid + ", description=" + description + ", createTime=" + createTime
				+ ", updateTime=" + updateTime + "]";
	}

	
}
