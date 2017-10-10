package com.jty.test.socket;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.UnknownHostException;

import com.jty.controller.test.client;

public class SocketClientThread {
	@SuppressWarnings("resource")
	public static void main(String[] args) {
		try {
			Socket socket=new Socket("127.0.0.1", 6666);
			BufferedReader in=new BufferedReader(new InputStreamReader(System.in));
			BufferedReader ini=new BufferedReader(new InputStreamReader(socket.getInputStream()));
			PrintWriter out=new PrintWriter(socket.getOutputStream());
			new ClientThread(socket).start();
			String str=in.readLine();
			System.err.println("client:"+str);
			while (!str.equals("bye")) {
				out.println(str);
				out.flush();
//				System.err.println("service:"+socket.getInetAddress().getHostAddress()+ini.readLine());
				str=in.readLine();
			}
			out.close();
			ini.close();
			in.close();
			socket.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	static class ClientThread extends Thread{
		Socket socket;
		BufferedReader in;
		public ClientThread(Socket socket) {
			// TODO Auto-generated constructor stub
			this.socket=socket;
		}
		@Override
		public void run() {
			// TODO Auto-generated method stub
			try {
				in=new BufferedReader(new InputStreamReader( socket.getInputStream()));
				while (true) {
					String line = in.readLine();
						System.err.println("service:"+line);
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		
		
	}
	
}