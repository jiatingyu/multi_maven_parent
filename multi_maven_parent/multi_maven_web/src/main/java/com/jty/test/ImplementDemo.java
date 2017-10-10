package com.jty.test;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

class Apple implements Runnable{  
    private int num=50;  
    //创建一个锁对象  
    private final Lock lock = new ReentrantLock();  
    public void run() {  
        for(int i=0;i<50;i++){  
        eat();  
        }         
    }  
      
    private void eat() {  
        //进入代码块之后立马加锁  
        lock.lock();//获取锁  
        if (num > 0) {  
            try {             
                System.out.println(Thread.currentThread().getName() + "吃了编号为" + num + "的苹果");  
                // 导致一个资源信息被多个用户同时拿到  
                Thread.sleep(10);  
                num--;  
            } catch (InterruptedException e) {  
                e.printStackTrace();  
            } finally{  
                lock.unlock();  
            }  
        }  
    }  
}  
//Thread.currentThread().getName() 拿到当前线程的引用和名称  
  
public class ImplementDemo {  
    public static void main(String[] args) {  
        Apple a=new Apple();  
        new Thread(a,"A").start();  
        new Thread(a,"B").start();  
        new Thread(a,"C").start();  
    }  
}  