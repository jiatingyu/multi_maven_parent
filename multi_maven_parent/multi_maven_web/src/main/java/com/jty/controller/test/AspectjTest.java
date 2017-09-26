package com.jty.controller.test;

import static org.junit.Assert.*;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Controller;

@Aspect
@Controller
public class AspectjTest {

	@Before("execution(* com.jty.controller.test.Service.test(..))")
	public void logAfter(JoinPoint joinPoint) {
		System.out.println("logBefore() is running!");
		Object[] args = joinPoint.getArgs();
		for (Object object : args) {
			System.err.println(object.toString());
		}
	}
}
