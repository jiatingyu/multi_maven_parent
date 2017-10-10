package com.jty.test.thread;

import java.util.concurrent.atomic.AtomicInteger;

public  class ThreadTest {
    public  AtomicInteger inc = new AtomicInteger();
    
    public  void increase() {
        System.err.println(inc.getAndIncrement());
    }
    
    public static void main(String[] args) {
        final ThreadTest test = new ThreadTest();
        for(int i=0;i<10;i++){
            new Thread(){
                public void run() {
                    for(int j=0;j<100;j++)
                        test.increase();
                };
            }.start();
        }
        
        while(Thread.activeCount()>1)  //保证前面的线程都执行完
            Thread.yield();
        System.out.println(test.inc);
    }	
}
