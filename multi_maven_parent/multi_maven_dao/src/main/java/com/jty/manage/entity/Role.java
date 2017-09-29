package com.jty.manage.entity;

import java.util.HashSet;
import java.util.Set;

public class Role {
	    public Role() {  
	        super();  
	        this.permissions = new HashSet<Permission>();  
	    }  
	    private String id;  
	    private String name;  
	    private String description;  
	    private Set<Permission> permissions;  
	  
	    public String getId() {  
	        return id;  
	    }  
	  
	    public void setId(String id) {  
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
	  
	    public Set<Permission> getPermissions() {  
	        return permissions;  
	    }  
	  
	    public void setPermissions(Set<Permission> permissions) {  
	        this.permissions = permissions;  
	    }  
}
