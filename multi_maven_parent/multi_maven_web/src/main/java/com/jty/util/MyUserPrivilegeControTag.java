package com.jty.util;


import javax.servlet.jsp.jstl.core.ConditionalTagSupport;

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
        return true;
    }


    //*********************************************************************
    // Private state

    private String privilegeName;               // the value of the 'test' attribute


    //*********************************************************************
    // Accessors

    // receives the tag's 'test' attribute
    public void setTest(String test) {
        this.privilegeName = test;
    }



}
