package com.jty.controller.test;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.ServerSocket;
import java.net.Socket;

import org.springframework.stereotype.Controller;
@Controller
public class Service {

	public void test(String name) {
		System.err.println("--->"+name);
		
	}
	public static void main(String[] args) {
		try {
		ServerSocket serverSocket=new ServerSocket(9999);
			Socket socket = serverSocket.accept();
			Reader reader=new InputStreamReader(socket.getInputStream());
			char[] char1=new char[1024];
			int len;
			StringBuffer buffer=new StringBuffer();
			while ((len=reader.read(char1))!=-1) {
				buffer.append(new String(char1, 0, len));
			}
			System.err.println(buffer.toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
