package com.jty.manage.entity;

public class Resource {
	    private String id;  
	    private String uri;  
	    private String description;  
	    private Permission permission;  
	  
	    public String getId() {  
	        return id;  
	    }  
	  
	    public void setId(String id) {  
	        this.id = id;  
	    }  
	  
	    public String getUri() {  
	        return uri;  
	    }  
	  
	    public void setUri(String uri) {  
	        this.uri = uri;  
	    }  
	  
	    public String getDescription() {  
	        return description;  
	    }  
	  
	    public void setDescription(String description) {  
	        this.description = description;  
	    }  
	  
	    public Permission getPermission() {  
	        return permission;  
	    }  
	  
	    public void setPermission(Permission permission) {  
	        this.permission = permission;  
	    }  
}
