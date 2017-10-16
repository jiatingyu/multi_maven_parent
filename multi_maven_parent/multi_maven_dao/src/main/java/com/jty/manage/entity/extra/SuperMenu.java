package com.jty.manage.entity.extra;

import java.util.ArrayList;
import java.util.List;

import com.jty.manage.entity.Menu;

public class SuperMenu {
	Integer menu_id;
	Menu menu;
	List<Menu> children;
	public SuperMenu() {
		this.children=new ArrayList<Menu>();
	}
	public Integer getMenu_id() {
		return menu_id;
	}
	public void setMenu_id(Integer menu_id) {
		this.menu_id = menu_id;
	}
	public Menu getMenu() {
		return menu;
	}
	public void setMenu(Menu menu) {
		this.menu = menu;
	}
	public List<Menu> getChildren() {
		return children;
	}
	public void setChildren(List<Menu> children) {
		this.children = children;
	}
	@Override
	public String toString() {
		return "SuperMenu [menu_id=" + menu_id + ", menu=" + menu + ", children=" + children + ", getMenu_id()="
				+ getMenu_id() + ", getMenu()=" + getMenu() + ", getChildren()=" + getChildren() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	
}
