package utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;

public class imageUtils {
	 public static void copyFile(String oldPath, String newPath) {
	        try {
	            int bytesum = 0;
	            int byteread = 0;
	            File oldfile = new File(oldPath);
	            if (oldfile.exists()) { //文件存在时
	                InputStream inStream = new FileInputStream(oldPath); //读入原文件
	                FileOutputStream fs = new FileOutputStream(newPath);
	                byte[] buffer = new byte[1444];
	                int length;
	                while ( (byteread = inStream.read(buffer)) != -1) {
	                    bytesum += byteread; //字节数 文件大小
	                   // System.out.println(bytesum);
	                    fs.write(buffer, 0, byteread);
	                }
	                inStream.close();
	                fs.close();
	            }
	            System.out.println("上传成功");
	        }
	        catch (Exception e) {
	            System.out.println("上传失败");
	            e.printStackTrace();        }    }
	 
}
