package com.java.controller;

import java.io.*;

public class Test_python {
        public static void main(String[] args) throws IOException {
//            Process proc;
//            try {
////                proc = Runtime.getRuntime().exec("python Test_model.py",
////                        null,new File("E:/Java_project/garbage/src/main/Detection"));
//
//                String str="./test/4.jpg";
//                proc = Runtime.getRuntime().exec("python Test_model.py "+str,
//                        null,new File("E:/Java_project/garbage/src/main/Detection"));
//
//                //用输入输出流来截取结果
//              BufferedReader in = new BufferedReader(new InputStreamReader(proc.getInputStream()));
//              String line = null;
//               while ((line = in.readLine()) != null) {
//                   System.out.println("flag1");
//                  System.out.println(line); // 预测结果
//                  System.out.println("flag2");
//                }
//                in.close();
//                proc.waitFor();
//            } catch (IOException e) {
//                e.printStackTrace();
//            } catch (InterruptedException e) {
//                e.printStackTrace();
//            }




            // 方法测试
            Process proc;
            try{
                proc = Runtime.getRuntime().exec("python Test_model.py",
                        null,new File("E:/Java_project/garbage/src/main/Detection"));

                String str="./test/0.jpg";
                proc = Runtime.getRuntime().exec("python Test_model.py "+str,
                        null,new File("E:/Java_project/garbage/src/main/Detection"));
                BufferedReader in = new BufferedReader(new InputStreamReader(proc.getInputStream()));
                StringBuffer sb = new StringBuffer();
                String line;
                    while ((line = in.readLine()) != null) {
                        sb.append(line);
                    }
                in.close();
                proc.waitFor();
                sb.toString();
                System.out.println(sb);
                String para1="hurmful";
                String para2="others";
                String para3="plastic";
                if(sb.toString().equals(para1)){
                    System.out.println("有毒有害垃圾");
                }else if(sb.toString().equals(para2)){
                    System.out.println("其他垃圾");
                }else if(sb.toString().equals(para3)){
                    System.out.println("可回收垃圾");
                }
            }catch (IOException e){
                e.printStackTrace();
            }catch (InterruptedException e){
                e.printStackTrace();
            }
            // 方法测试
        }
      }

