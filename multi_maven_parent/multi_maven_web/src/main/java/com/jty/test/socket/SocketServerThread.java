package com.jty.test.socket;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

import org.junit.Test;


public class SocketServerThread {
	static List<ServiceThread> list=new ArrayList<ServiceThread>();
	public static void main(String[] args) {
		try {
			ServerSocket serverSocket=new ServerSocket(6666);
			while (true) {
				Socket socket = serverSocket.accept();
				ServiceThread thread = new ServiceThread(socket);
				list.add(thread); 
				thread.start();
				System.err.println("欢迎新成员"+socket.getInetAddress().getHostName()+"当前在线人数："+list.size());
				
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static  void sendclient(String msg){
		for (ServiceThread serviceThread : list) {
			serviceThread.send(msg);
		}
	}
	
	
	static class  ServiceThread extends Thread{
		Socket socket;
		BufferedReader in;
		BufferedReader scan;
		PrintWriter out;
		public ServiceThread(Socket socket) {
			// TODO Auto-generated constructor stub
			 this.socket=socket;
		}	
		public void send(String msg) {
			out.println(msg);
			out.flush();
		}
		@Override
		public void run() {
			// TODO Auto-generated method stub
			try {
//			scan=new BufferedReader(new InputStreamReader(System.in));
			this.in=new BufferedReader(new InputStreamReader(socket.getInputStream()));
			this.out=new PrintWriter(socket.getOutputStream());
//			System.err.println(this.getName()+","+socket.getInetAddress().getHostName()+":"+in.readLine());
			String str;
			while (true) {
					str = in.readLine();
					System.err.println("server:"+str);
//					SocketServerThread.sendclient(str);
					for (ServiceThread serviceThread : list) {
//						serviceThread.send(str);
						serviceThread.out.println(str);
						serviceThread.out.flush();
					}
					if(str==null){
						list.remove(socket);
						socket.close();
					}
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
}
