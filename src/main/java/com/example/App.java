package com.example;

public class App {
    public static void main(String[] args) {
	//now str is null
        String str = null;
        if (str.equals("hello")) {  // SpotBugs will flag possible NullPointerException
            System.out.println("Hello");
        }
    }
}
