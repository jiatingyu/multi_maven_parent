package com.jty.controller.test;

import static org.junit.Assert.*;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.net.Socket;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class client {
	@Autowired
	Service service;
	
	@RequestMapping("/haha")
	public void testName(String name) throws Exception {
		service.test(name);	
	}
	
	
	public static void main(String[] args) {
		
		try {
			Socket socket=new Socket("127.0.0.1",9998);
			Writer writer=new OutputStreamWriter(socket.getOutputStream());
			writer.write("hahahahahaha");
			writer.flush();
			writer.close();
			socket.close();
			System.err.println("client发送完毕");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
