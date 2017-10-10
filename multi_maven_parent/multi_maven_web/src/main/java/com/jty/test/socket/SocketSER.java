package com.jty.test.socket;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;

public class SocketSER {
	public static void main(String[] args) {
		try {
			ServerSocket serverSocket=new ServerSocket(5555);
			while (true) {
				Socket socket = serverSocket.accept();
				System.err.println("...>service start process");
				String str="";
//				System.err.println(socket.getInetAddress().getHostName()+"："+reader.readLine());
				PrintWriter writer=new PrintWriter(socket.getOutputStream());
				BufferedReader reader=new BufferedReader(new InputStreamReader(socket.getInputStream()));
//				System.err.println("服务器端想说：");
				String bb;
//				while (((bb=reader.readLine())!=null)) {
//					System.err.println("client :"+bb);
//					
//				}
					System.err.println("client :"+reader.readLine());
				BufferedReader reader2=new BufferedReader(new InputStreamReader(System.in));
				str=reader2.readLine();
				while (!str.equals("bye")) {
					System.err.println("server :"+str);
					writer.println(str);
					writer.flush();
//					writer.close();
					System.err.println(socket.getInetAddress().getHostName()+"：client："+reader.readLine());
					str=reader2.readLine();
				}
				writer.close();
				reader.close();
				socket.close();
				serverSocket.close();
//				socket.close();
//				new SocketThread(socket,list);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}
