package com.jty.util;


import java.util.List;

import javax.servlet.jsp.jstl.core.ConditionalTagSupport;

import com.jty.manage.entity.Privilege;
import com.jty.manage.entity.User;
import com.jty.manage.entity.sysLog;

/**
 * <p>Tag handler for &lt;if&gt; in JSTL's rtexprvalue library.  Because
 * of the support provided by the ConditionalTagSupport class, this
 * tag is trivial enough not to require a separate base supporting class
 * common to both libraries.</p>
 *
 * @author Shawn Bayern
 */

public class MyUserPrivilegeControTag extends ConditionalTagSupport {

    //*********************************************************************
    // Constructor and lifecycle management

    // initialize inherited and local state
    public MyUserPrivilegeControTag() {
        super();
    }

    // Releases any resources we may have (or inherit)
    public void release() {
        super.release();
    }


    //*********************************************************************
    // Supplied conditional logic

    protected boolean condition() {
    	
    	//判断是否显示为true还是false
    	System.err.println("---->进行判断的值"+privilegeName);
    	System.err.println("当前登录用户："+RequestUtils.getUser());
    	//相当于超级管理员 享有最高权限
    	if("jack".equals(RequestUtils.getUserName("username"))){
    		return true;
    	}
    	User user = RequestUtils.getUser();
    	//判断用户是否具有当前的访问权限
    	if(user!=null){
    		List<Privilege> privilegeList = user.getPrivilegeList();
    		if(privilegeList!=null && privilegeList.size()>0){
    			for (Privilege privilege : privilegeList) {
    				if(privilegeName.equals(privilege.getPrivilegename())){
    					return true;
    				}
    			}
    		}
    	}
        return false;
    }


    //*********************************************************************
    // Private state

    private String privilegeName;               // the value of the 'test' attribute


    //*********************************************************************
    // Accessors

    // receives the tag's 'test' attribute
    public void setPrivilegeName(String privilegeName) {
        this.privilegeName = privilegeName;
    }



}
