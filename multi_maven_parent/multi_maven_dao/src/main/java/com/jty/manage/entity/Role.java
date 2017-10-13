package com.jty.manage.entity;

import java.util.List;
import java.util.Set;

public class Role {
	    public Role() {  
	        super();  
	    }  
	    private String role_id;  
	    private String rolename;  
	    private String description;  
	    private List<Privilege> permissions;  
	  
	  
	  
	    public String getRole_id() {
			return role_id;
		}

		public void setRole_id(String role_id) {
			this.role_id = role_id;
		}

		public String getRolename() {
			return rolename;
		}

		public void setRolename(String rolename) {
			this.rolename = rolename;
		}

		public String getDescription() {  
	        return description;  
	    }  
	  
	    public void setDescription(String desc) {  
	        this.description = desc;  
	    }  

		public List<Privilege> getPermissions() {
			return permissions;
		}

		public void setPermissions(List<Privilege> permissions) {
			this.permissions = permissions;
		}

		@Override
		public String toString() {
			return "Role [role_id=" + role_id + ", rolename=" + rolename + ", description=" + description + ", permissions="
					+ permissions + "]";
		}  
	    
}
