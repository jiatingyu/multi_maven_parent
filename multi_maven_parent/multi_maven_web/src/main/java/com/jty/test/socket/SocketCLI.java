package com.jty.test.socket;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.UnknownHostException;
import java.nio.Buffer;
import java.util.Scanner;


public class SocketCLI {
	@SuppressWarnings("resource")
	public static void main(String[] args) {
		try {
			Socket socket=new Socket("127.0.0.1", 5555);
//			Read(socket);
//			Out(socket);
			PrintWriter os=new PrintWriter(socket.getOutputStream());
			BufferedReader in=new BufferedReader(new InputStreamReader(socket.getInputStream()));
			BufferedReader scan=new BufferedReader(new InputStreamReader(System.in));
			System.err.println("你bb：");
			
			String str="";
			str=scan.readLine();
			while (!str.equals("bye")) {
				System.err.println("client :"+str);
				os.println(str);
				os.flush();
//				writer.close();
//				System.err.println("service："+in.readLine());
				System.err.println(socket.getInetAddress().getHostName()+"：service:"+in.readLine());
				str=scan.readLine();
			}
			os.close();
			in.close();
			scan.close();
			socket.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void Read(final Socket socket){
		new Thread(new  Runnable() {
			public void run() {
				while (true) {
					try {
						System.err.println(new BufferedReader(new InputStreamReader(socket.getInputStream())).readLine());
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		}).start();
	}

	public static void Out(final Socket socket){
		new Thread(new  Runnable() {
			public void run() {
				Scanner scanner=new Scanner(System.in);
				System.err.println("-->输入你想的骄傲：");
				byte nextByte = scanner.nextByte();
//				while (true) {
					try {
						OutputStream os= socket.getOutputStream();
						os.write(nextByte);
						os.close();
//						socket.close();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
//			}
		}).start();
	}
}
