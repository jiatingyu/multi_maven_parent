package com.jty.manage.entity;

public class Privilege {
	private int privilege_id;
	private String privilegename;
	private String privilegeurl;
	
	
	public int getPrivilege_id() {
		return privilege_id;
	}
	public void setPrivilege_id(int privilege_id) {
		this.privilege_id = privilege_id;
	}
	public String getPrivilegename() {
		return privilegename;
	}
	public void setPrivilegename(String privilegename) {
		this.privilegename = privilegename;
	}
	public String getPrivilegeurl() {
		return privilegeurl;
	}
	public void setPrivilegeurl(String privilegeurl) {
		this.privilegeurl = privilegeurl;
	}
	@Override
	public String toString() {
		return "Privilege [privilege_id=" + privilege_id + ", privilegename=" + privilegename + ", privilegeurl=" + privilegeurl + "]";
	}
	
	
}
