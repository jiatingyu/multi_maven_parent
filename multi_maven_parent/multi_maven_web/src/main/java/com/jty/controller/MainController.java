package com.jty.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/api/")
public class MainController {
	@ResponseBody
	@RequestMapping("test.json")
	public String testName() throws Exception {
		System.err.println("--->");
		System.out.println("----------------->这是jetty的好处");
		System.out.println("----------------->这是jett111y的好处");
		return "success";
	}
	@RequestMapping("/index")
	public ModelAndView index() throws Exception {
		System.err.println("--->index");
		ModelAndView modelAndView=new ModelAndView("index","map","xxxxx");
		return modelAndView;
	}
	
}
