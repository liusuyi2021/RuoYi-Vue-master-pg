package com.ruoyi.authorize.common;

import com.sun.org.apache.xerces.internal.impl.dv.util.HexBin;
import org.apache.commons.codec.binary.Hex;
import org.apache.commons.compress.utils.IOUtils;

import java.io.*;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Base64;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Scanner;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESedeKeySpec;
import javax.crypto.spec.SecretKeySpec;

public class AuthorizeUtil {

    public static String MachineCode="";

    private static String confusionString = "TczYTMY2MzII32MVjZjgjMzYWmQwM5z";
    private static String confusionString2 = "0ZDMwM2UxYTFmZmRZWZkMkODUxNGYzM";
    private static String confusionString3 = "MxYzY2ZDUYzN5MAOWViNWQ3YzOTRke9";
    private static String confusionString4 = "f15a5M0MjNmExNlNkNDQzWI3MTE1NTN";

    private static String getKeyStr(String keyStr) {
        return Md5Utils.hash(keyStr);
    }

    public static void main(String[] args) {

        AuthorizeUtil ss = new AuthorizeUtil();
        System.out.println("sysStr " + ss.parsLicense());
        System.out.println("MachineCode " + ss.getMachineCode());
        System.out.println("CPUCode     " + ss.getCPUCode());
        //String codeString=ss.parsLicense("b1db709f19d9769e536e2e29888e38b2");
        //System.out.println(codeString);
        //ss.makeTempLicense();
        //System.out.println("get "+ss.parsLicense());
        //ss.writeFile("22");
		/*
		String str = "{\"systemAuthorizeDate\":\"20190404240000\",\"meteorologicalDeviceType\":\"1,2\",\"meteorologicalDeviceNum\":\"999\",\"screenDeviceType\":\"1,2,3\",\"screenDeviceNum\":\"999\",\"captureDeviceType\":\"1,2,3,4\",\"captureDeviceNum\":\"999\"}";
		       str = "{\"systemAuthorizeDate\":\"20180721015732\",\"meteorologicalDeviceType\":\"1,2\",\"meteorologicalDeviceNum\":\"10\",\"screenDeviceType\":\"1,2,3\",\"screenDeviceNum\":\"10\",\"captureDeviceType\":\"1,2,3,4\",\"captureDeviceNum\":\"10\"}";
		//System.out.println(ss.encode(key).replace("9", "QQQ999QQQ999QQQ"));
		System.out.println(str);*/
        String key = ss.getMachineCode();
        String stringcodeString = "MGNiYTEwMDNhZTBmNTI2MmUzNGI1ZWNjYmFmZGY3ZDY3ZDU4MDNkMGQ2NTFkYmE4Mjc0NTZjNTQxMzMwZWNmYTkxNDJkYWNjODNiMGYyOTU3MDhlY2QzMDJhMjFjM2VjMmU0M2UyYmFhNzIzNDc5YjMzYjU0YmQzOTVmM2ZmZjE4MjZjYTZlMGQ3ZGM4MjNkY2ZiMWQ0MDkyMDk4ZTYxOTA1ZTM5ZmJkZWI2MTQwNTllNDY1YWQwYTg1OThkNWJkMDljMjRiY2Q2ZTA5NTQzYjYzNWNhNWJhZDZjYTAyMDFmMTYwNzVkNzI2MGEyMThiZDc2MTc0YjRkYjllNjdkZDRjY2ExMTgwYWFhZGU5YzlmY2Y0ZmI0N2Q5N2Q4NjNiNDYxMDAwMzQwNmE3OWM1ODc5YzVjOGYwYmIxMDQ1YjM5NWJkYTk5MjJkOWE1NTRlMDJiYWNlOTE2NmIxYmNiYTZjMTZjZjVhNzMwY2M0NzU1NDhlMGUwOTQ5NzQ4ZWJiMDU4ODcxZmQyYjk4ZWMyNWU2N2RlOWY0ZGFhZGU3MmVmZmJiMGQxNzEzNGZjODZkZmFlYjkxOTU2OTliNmMwMzJkNmU3YmZmMzIzODRmM2UyYzViZTY4NWY5NDY1YjlhODIyZjFiMGQ1NzhlODJjYmNkYzA1YWNhYTg2ODZlMzY2OGQ1ZWRlNmM5YzRiN2RhYTFjZDY0NWQ5ZGMxYmU0YTM1N2U2NDA1NDQxYmVjMWEwM2M2NTQzMTM1YjJjYzY2YjJiMmZkZjNlZWYzZTY5YTQ3YWVlNjhiZTNjMTliMmEyZGZhZWY0NDRmYWEwZDc1MDMxODEyNGE1ZjFjMDZmZGY3MTQzZGYxNDdmYjRmMDdkZTBiYThjYmJlNmFhM2Y1MTk2NTE4MjgwNjYyYzAxMWYyOTNkOWYyYzdlYzQ3Mzc1YTVjZWFiZjdjZGJhYjAxZGRkZWQ5OWUwYTJkNzE1NDBiMjU0MDlmMTQzMThkNDMzNGQyZjNhMjllNDRmYzdlZjA3ZjhhYmE2ZTJiNDZlNjcxNzJhMDJhMjJjZDE3YTZkNTE0MzI2MTkxZjkxMGUyZmE4MGE5ZTFlNjQxZDk3ZDcyZDliYTNjMDI3YjZlYzk3MDIwMDY1YTJhYjEyNTg0";
        System.out.println("ok " + ss.parsLicense(key, stringcodeString));

        //System.out.println(ss.parsLicense("OWUzYTIxYWI4MWQxZGJlMmYxNDEyY2Y2YWU4NWQzZGFmZjZlZWUwNTMzYmY2ZWI4NWM5ZDFkZTIxMDAwODA5NDJhZGU5NDQ4NmI0MjY3ZmRhMWI0ZjYwZWIxYzU4ZjgzYjNhOTMyZjJiOTZiZjk4ZjY2Y2M0MDg0YjAyMjYwYzhlZjc2YjYwZTJiODQ4MjJmY2Y2ZWRhNTAxM2Q4Zjk0YmZkMGViYjdkYzBkMThjMjRhNDRmZWI3ZTQ2YjM4ZDQ2MjQ1YmQzOTYyYmJhYmRjYzg2Njc5NWQ4MTEyZTEyNjFjMmY3ZjQ1NDY5Y2VmOTliM2I5YzdkMmQxYjYzNWJlMzRjMzZhY2VlYTE0MjdlMjA2NWU3YWY5NGZmZjFjZGM1ODVkNzZlNDVlMmZlNjBlN2Q4ZDMwNThiMDU2MzYyMTE1OTMxYzg2Y2E1MmVjN2Y0YzhiYTBiZGNlYzQ3MjMzYWI4MWEzYzZhZDhkYjQzYTk1YTFiMGRkODJlOGYzNjQzNDE0MzNkYzNhNjA1ZjExN2Y3YTZhODcyNTA3ZTRkYjRjY2FlM2IwMDU4MTg4Y2FhMzA5YjdiN2QzOGQ2MGU3MTU5MzFjODZjYTUyZWM3ZjRjOGJhMGJkY2VjNDcyMzNhNTM3NDZlN2ZlOGFiZWM5OWY2YzhlMTg3NTc0OWEzYmM="));
        //System.out.println(ss.parsLicense());
        //System.out.println(ss.parsLicense("ZjRmYjNhYzdiY2Q1NGFjZjc0NWNiNzg1MGMzYTg2YjRzMXkybjNqNG81bjZlN3M4ZWRiN2NzMXkybjNqNG81bjZlN3M4ZmU2YXMxeTJuM2o0bzVuNmU3czg1MDI0ZDI1NDM0ODJjOGQ3N2E3NDRjM2NjYTg3ZHMxeTJuM2o0bzVuNmU3czhmYnMxeTJuM2o0bzVuNmU3czhlYmNkZTQ1czF5Mm4zajRvNW42ZTdzOGU1YjNzMXkybjNqNG81bjZlN3M4YTRkYjcyMTc1ZmZlNHMxeTJuM2o0bzVuNmU3czhzMXkybjNqNG81bjZlN3M4OGJiYWNjZDM3Y2NlZDQwMTBzMXkybjNqNG81bjZlN3M4MzJzMXkybjNqNG81bjZlN3M4ZDBhZjM3NmQ1YnMxeTJuM2o0bzVuNmU3czg1YTMwNmI4ODdkNWRjYmFjZHMxeTJuM2o0bzVuNmU3czg2YzEwZThjMTMxNjE0YTU2MzJlNjdzMXkybjNqNG81bjZlN3M4OGI3YWMwNThhMmNzMXkybjNqNG81bjZlN3M4YWRkNzAyNzU1NzBhYjVlN2M2YmVlMXMxeTJuM2o0bzVuNmU3czhiZWNiYzg3NHMxeTJuM2o0bzVuNmU3czg2ZTBmMTM1NTRhOGMxZjRlYjA0ZmJkZmM1NzU0NDMzMjBkNjRlMjQxN3MxeTJuM2o0bzVuNmU3czgwM2E0YjBlYTAwM2Y1NDNlMjhzMXkybjNqNG81bjZlN3M4YXMxeTJuM2o0bzVuNmU3czhiMWY2MTM0YWFiNDBzMXkybjNqNG81bjZlN3M4NTFiYmYxNXMxeTJuM2o0bzVuNmU3czg4NWZhYThhN3MxeTJuM2o0bzVuNmU3czgyMzIyNjQxNTc1YXMxeTJuM2o0bzVuNmU3czgzMTJkZThmM2FmNjQ4MjQwYzYxMTdhYmVzMXkybjNqNG81bjZlN3M4MjFlM3MxeTJuM2o0bzVuNmU3czhhMWVlMTQxczF5Mm4zajRvNW42ZTdzODZlZGJlNjA3YWE2OGE0MmFkNDVmMjE3NzY4NDhlMWM1ZDVkZTNjYzIxNmEyNmUwMzFkODY4czF5Mm4zajRvNW42ZTdzODZmczF5Mm4zajRvNW42ZTdzODA4NTI0YmUzczF5Mm4zajRvNW42ZTdzOGVjM2Y0NmI3czF5Mm4zajRvNW42ZTdzODYyM2ZkYjVhMTY1ZTc0MzJmczF5Mm4zajRvNW42ZTdzODFmZWY3ODc2ZTE4NjQ3ZjY4YjFzMXkybjNqNG81bjZlN3M4NmRjMTBiczF5Mm4zajRvNW42ZTdzOGU2MDE3ZDQ1MzFmZWUzczF5Mm4zajRvNW42ZTdzOGMzczF5Mm4zajRvNW42ZTdzOGNzMXkybjNqNG81bjZlN3M4YjdmODMyMjRlczF5Mm4zajRvNW42ZTdzOHMxeTJuM2o0bzVuNmU3czg2YjBmNTdjYjVkNmIzNzU3NTBkMGI3MjdmNDM2YnMxeTJuM2o0bzVuNmU3czg4ZGRjM2FhMmM2ODFlNjcwMGQ0MmExNDdmNTdhZDEyMGU4ZDFmN2FlMDFmNmE1ZmUwczF5Mm4zajRvNW42ZTdzODgzY2IwNGZiYzg4NGQzZTZkZGYyMTRmZThlZTIzZDA0ZmU4ZTNlYjBiZDBkMzhzMXkybjNqNG81bjZlN3M4NmZzMXkybjNqNG81bjZlN3M4MDg1MjRiZTNzMXkybjNqNG81bjZlN3M4ZWMzZjQ2YjdzMXkybjNqNG81bjZlN3M4NjIzZmRiNWExMGM1YTQ2YWUwNjNzMXkybjNqNG81bjZlN3M4MGNzMXkybjNqNG81bjZlN3M4Y2QyYWU4MjU4MWYwZWQ1MTc="));

    }

    //获取到授权信息生成-加密信息返回
    public static String getLicense(String key, String str) {
        String aString = str.replaceAll("Authorize", confusionString);
        String bString = encodeAES(getKeyStr(key), aString);
        String cString = encode64(bString).replaceAll("==", confusionString3).replaceAll("=", confusionString4).replaceAll("4M", confusionString2);
        return cString;
    }

    //获取到加密信息和机器码-解密信息返回
    public static String parsLicense(String key, String str) {
        try {
            str = str.replaceAll(confusionString3, "==").replaceAll(confusionString4, "=").replaceAll(confusionString2, "4M");
            String pString = decode64(str);
            return decodeAES(getKeyStr(key), pString).replaceAll(confusionString, "Authorize");
        } catch (Exception ex) {

        }
        return null;
    }

    public static String getMachineCode() {
        StringBuffer sb = new StringBuffer();
        try {
            InetAddress ia = InetAddress.getLocalHost();
            byte[] mac = NetworkInterface.getByInetAddress(ia).getHardwareAddress();
            for (int i = 0; i < mac.length; i++) {
                if (i != 0) {
                    sb.append("-");
                }
                int temp = mac[i] & 0xff;//字节转换为整数
                String str = Integer.toHexString(temp);
                if (str.length() == 1) {
                    sb.append("0" + str);
                } else {
                    sb.append(str);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Md5Utils.hash(sb.toString().toUpperCase());
    }

    public static String getCPUCode() {
        String serial = null;
        try {
            Process process = Runtime.getRuntime().exec(new String[]{"wmic", "cpu", "get", "ProcessorId"});
            process.getOutputStream().close();
            Scanner sc = new Scanner(process.getInputStream());
            String property = sc.next();
            serial = sc.next();
            serial = Md5Utils.hash(serial);
            //System.out.println(property + ": " + serial);
        } catch (IOException e) {
            serial = null;
        }
        if (serial == null) {
            serial = getMachineCode();
        }
        return serial;
    }

    //制作临时授权
    public static String makeTempLicense(String FilePath) {
        String tempLicenseDate = "";
        String str = readToString(FilePath);
        if (str.equals("")) {//没有授权文件
            Date date = new Date();//取时间
            Calendar calendar = new GregorianCalendar();
            calendar.setTime(date);
            calendar.add(Calendar.DATE, 1);//把日期往后增加一天.正数往后推,负数往前推
            date = calendar.getTime();   //这个时间就是日期往后推一天的结果
            tempLicenseDate = (new java.text.SimpleDateFormat("yyyyMMddhhmmss")).format(date);
            String machineCode = getMachineCode();
            String tempLicense = "{\"machineCode\":\"" + machineCode + "\",\"systemAuthorizeDate\":\"" + tempLicenseDate + "\"}";
            writeFile(FilePath, getLicense(getMachineCode(), tempLicense));
        }

        return tempLicenseDate;
    }

    public static String parsLicense(String machineCode) {
        String str = readToString("D:\\synjones.env\\license.cpy");
        String returnStr = "";
        //System.out.println("readfile "+str);
        if (str.equals("")) {//没有授权文件
            returnStr = "null";
        } else {
            try {
                returnStr = parsLicense(machineCode, str);
            } catch (Exception e) {
                returnStr = "error";
            }
        }

        return returnStr;
    }

    public static String parsLicense() {
        String authorizeCode = parsLicense(getMachineCode());
        if (authorizeCode.equals("error")) {
            authorizeCode = parsLicense(getCPUCode());
        }
        return authorizeCode;
    }

    //base64编码
    public static String encode64(String src) {
        byte[] encodeBytes = Base64.getEncoder().encode(src.getBytes());
        return new String(encodeBytes);
    }

    //base64解码
    public static String decode64(String src) {
        byte[] decodeBytes = Base64.getDecoder().decode(src.getBytes());
        return new String(decodeBytes);
    }

    //AES加密
    public static String encodeAES(String key, String src) {
        try {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
            keyGenerator.init(128);// size
            SecretKey secretKey = keyGenerator.generateKey();
            byte[] keyBytes = HexBin.decode(key);

            SecretKey generateKey = new SecretKeySpec(keyBytes, "AES");

            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(Cipher.ENCRYPT_MODE, generateKey);
            byte[] resultBytes = cipher.doFinal(src.getBytes());

            return Hex.encodeHexString(resultBytes);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    public static void writeFile(String FilePath, String content) {
        String FileName = FilePath.substring(FilePath.lastIndexOf("\\") + 1);
        String FileDir = FilePath.substring(0, FilePath.lastIndexOf("\\") + 1);
        FileOutputStream fileWriter;
        OutputStreamWriter writer = null;
        try {
            File outDir = new File(FileDir);
            if (!outDir.exists() && !outDir.isDirectory()) {
                outDir.mkdir();
            }

            String file = FilePath;
            String charSet = "UTF-8";
            //写字符转换成字节流
            fileWriter = new FileOutputStream(file);
            writer = new OutputStreamWriter(fileWriter, charSet);
            writer.write(content);
        } catch (IOException e1) {
            // TODO Auto-generated catch block
            e1.printStackTrace();
        } finally {
            try {
                writer.close();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }


    }

    public static String readToString(String fileName) {
        String encoding = "UTF-8";
        File file = new File(fileName);
        Long filelength = file.length();
        byte[] filecontent = new byte[filelength.intValue()];
        try {
            FileInputStream in = new FileInputStream(file);
            in.read(filecontent);
            in.close();
        } catch (FileNotFoundException e) {
            return "";
        } catch (IOException e) {
            return "";
        }
        try {
            return new String(filecontent, encoding);
        } catch (UnsupportedEncodingException e) {
            System.err.println("The OS does not support " + encoding);
            e.printStackTrace();
            return "";
        }
    }
    //读取文件中的字符串
    public static String readFile(File file) {
        BufferedReader reader = null;
        try {
            //用流读取文件
            reader = new BufferedReader(new FileReader(file));
            String line;
            StringBuffer content = new StringBuffer();
            // 读取想定文件
            while ((line = reader.readLine()) != null) {
                content.append(line);
            }
            return content.toString();
        } catch (IOException e) {
            return null;
        } finally {
            if (reader != null) {
                IOUtils.closeQuietly(reader);
            }
        }
    }
    //AES解密
    public static String decodeAES(String key, String src) {
        try {
            byte[] keyBytes = HexBin.decode(key);
            SecretKey generateKey = new SecretKeySpec(keyBytes, "AES");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(Cipher.DECRYPT_MODE, generateKey);
            byte[] result = Hex.decodeHex(src.toCharArray());
            return new String(cipher.doFinal(result));
        } catch (Exception e) {
            //e.printStackTrace();
        }
        return null;
    }

    public static String encode(String key, String src) {
        try {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("DESede");
            keyGenerator.init(168);// size
            SecretKey secretKey = keyGenerator.generateKey();
            byte[] keyBytes = HexBin.decode(key);

            DESedeKeySpec desKeySpec = new DESedeKeySpec(keyBytes);
            SecretKeyFactory secretKeyFactory = SecretKeyFactory
                    .getInstance("DESede");
            SecretKey generateKey = secretKeyFactory.generateSecret(desKeySpec);

            Cipher cipher = Cipher.getInstance("DESede/ECB/PKCS5Padding");
            cipher.init(Cipher.ENCRYPT_MODE, generateKey);
            byte[] resultBytes = cipher.doFinal(src.getBytes());

            return Hex.encodeHexString(resultBytes);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

}
