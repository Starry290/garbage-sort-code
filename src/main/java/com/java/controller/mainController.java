package com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

@Controller
@RequestMapping("/main")
public class mainController {
    @Autowired
    @RequestMapping("/detect")
    public String Detect(){
        return "Detect";
    }

    @RequestMapping("/upload")
        public String fileUpload(@RequestParam("file") CommonsMultipartFile file,
                             HttpServletResponse response,
                             HttpServletRequest request, Model model) throws IOException,InterruptedException {
        //上传路径保存设置getServletContext
        String path=request.getServletContext().getRealPath("/upload");
        //获取文件名 : file.getOriginalFilename();
        String uploadFileName = file.getOriginalFilename();
        //如果文件名为空，直接回到首页
        if ("".equals(uploadFileName)){
            return "redirect:/index.jsp";
        }
        System.out.println("上传文件名 : "+uploadFileName);


        //如果路径不存在，创建一个
        File realPath = new File("D:/project/garbage/src/main/Detection/test");
        if (!realPath.exists()){
            realPath.mkdir();
        }
        // 将文件名传到前端，由${filename}方式获取
        model.addAttribute("filename",uploadFileName);
        System.out.println("上传文件保存地址："+realPath);

        InputStream is = file.getInputStream(); //文件输入流
        OutputStream os = new FileOutputStream(new File(realPath,uploadFileName)); //文件输出流
        //读取写出
        int len=0;
        byte[] buffer = new byte[1024];
        while ((len=is.read(buffer))!=-1){
            os.write(buffer,0,len);
            os.flush();
        }
        os.close();
        is.close();

        /*python--->java core code*/

        Process proc;
        try{

            String str="./test/";
            proc = Runtime.getRuntime().exec("python Test_model.py "+str+uploadFileName,
                    null,new File("D:/project/garbage/src/main/Detection"));
            BufferedReader in = new BufferedReader(new InputStreamReader(proc.getInputStream()));
            StringBuffer sb = new StringBuffer();
            String line;
            while ((line = in.readLine()) != null) {
                sb.append(line);
            }
            in.close();
            proc.waitFor();
            sb.toString();

            /*detect time limit*/
            Timer timer=startTimer();
            Thread.sleep(1000*10);
            System.out.println("End time:"+getCurrentTime());
            timer.cancel();
            /*detect time limit*/

            /*Test code*/
//            classes = ('harmful','kitch','others','recyc')
                System.out.println(sb);
                String para1="harmful";
                String para2="others";
                String para3="recyc";
                String para4="kitch";
                if(sb.toString().equals(para1)){
                    System.out.println("有毒有害垃圾");
                    return "Harmful";
                }else if(sb.toString().equals(para2)){
                    System.out.println("其他垃圾");
                    return "Others";
                }else if(sb.toString().equals(para3)){
                    System.out.println("可回收垃圾");
                    return "Recyc";
                }else if(sb.toString().equals(para4)){
                    System.out.println("厨余垃圾");
                    return "Kitch";
                }
        }catch (IOException e){
            e.printStackTrace();
        }catch (InterruptedException e){
            e.printStackTrace();
        }

            /*Test code*/
        /*python---->java core code*/


        return "index";
    }

    /*limit time by setting*/
    public static Timer startTimer(){
        TimerTask task=new TimerTask() {
            @Override
            public void run() {
                System.out.println("Start time:"+getCurrentTime());
            }
        };
        Timer timer=new Timer();
        timer.schedule(task,0);
        return timer;
    }

    public static String getCurrentTime() {
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return sdf.format(date);
    }
}