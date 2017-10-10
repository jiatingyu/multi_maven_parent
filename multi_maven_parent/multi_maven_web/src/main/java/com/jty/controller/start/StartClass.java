package com.jty.controller.start;

import java.util.Date;

import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Controller;
public class StartClass implements ApplicationListener<ContextRefreshedEvent>{
	@Override
	public void onApplicationEvent(ContextRefreshedEvent event) {
		// TODO Auto-generated method stub
		if(event.getApplicationContext().getParent() == null){//root application context 没有parent，他就是老大.
			System.err.println("spring执行完----》"+new Date().getTime());
			System.err.println("--->");
		}
	}

}
