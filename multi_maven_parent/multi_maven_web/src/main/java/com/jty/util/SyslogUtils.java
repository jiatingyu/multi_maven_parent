package com.jty.util;

import java.util.Date;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;

import com.jty.manage.entity.sysLog;
import com.jty.service.CommonService;

public class SyslogUtils {
	
	CommonService commonService;

	public void setCommonService(CommonService commonService) {
//		System.out.println("============>"+commonService);
		this.commonService = commonService;
	}
	

	public CommonService getCommonService() {
		return commonService;
	}


	public void insertDb(JoinPoint joinPoint) throws Throwable  {
		System.err.println("==================>"+joinPoint.getTarget().getClass().getName());
		System.err.println(joinPoint.getSignature().getName());
		if(joinPoint.getTarget() instanceof CommonService ){
			return ;
		}
		if( RequestUtils.getUserName("username")!=null){
			sysLog log=new sysLog();
			log.setUsername(RequestUtils.getUserName("username").toString());
			log.setDate(new Date());
			System.err.println(joinPoint.getTarget().getClass().getName()+":"+joinPoint.getSignature().getName());
			log.setFunction(joinPoint.getTarget().getClass().getName()+":"+joinPoint.getSignature().getName());
			commonService.insert(log);
		}
		return ;
	}
	
}
