package util;

import annotation.*;
import util.*;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import java.util.Random;

public class Tools {
    /**
     * 生成Token
     * @return 生成的token
     */
    public static String makeToken() {
        String token = (System.currentTimeMillis() + new Random().nextInt(999999999)) + "";
        try {
            MessageDigest md = MessageDigest.getInstance("md5");
            byte[] md5 =  md.digest(token.getBytes());
            return Base64.getEncoder().encodeToString(md5);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 打印类运行日志
     * @param object 类实例
     * @param msg 信息
     */
    public static void printClassMessage(Object object, String msg){
        System.out.println(object.getClass().getName() + " : " + msg);
    }


    /**
     * 从request中获取数据到 {@link modles}数据模型中
     * @param element 待录入数据模型实例
     * @param request 页面请求
     * @throws IllegalAccessException UNKNOWN+
     */
    public static <T> void fill(T element, HttpServletRequest request) throws IllegalAccessException {
        for (Field field: element.getClass().getDeclaredFields()) {
            String column = ReflectTools.renameOfField(field);
            if (!ReflectTools.hasAnnotation(field, ValidationIgnore.class)) {
                if(field.getType().equals(String[].class)){
                    String[] preValue = request.getParameterValues(column);
                    ReflectTools.setValue(element, field, preValue);
                }else{
                    String preValue = request.getParameter(column);
                    if(preValue != null){
                        ReflectTools.setValue(element, field, string2Type(field.getType(), preValue));
                    }
                }
            }
        }
    }

    /**
     * 字符串转化为对应类型
     * @param type 类型
     * @param value 输入字符串
     * @return 对应类型值
     */
    public static Object string2Type(Class<?> type, String value){

        if (type.equals(String.class)){
            return value;
        } else if(type.equals(int.class) || type.equals(Integer.class)) {
            return Integer.parseInt(value);
        } else if(type.equals(long.class) || type.equals(Long.class)) {
            return Long.valueOf(value);
        } else if(type.equals(float.class) || type.equals(Float.class)) {
            return Float.valueOf(value);
        } else if(type.equals(double.class) || type.equals(Double.class)) {
            return Double.valueOf(value);
        } else {
            return value;
        }
    }

    /**
     * 重定向
     * @param context 通过context获取路径信息
     * @param url 转发地址
     */
    public static <T> void sendRedirect(HttpServletResponse response, ServletContext context, String url) throws IOException {
        response.sendRedirect(context.getContextPath() + url);

    }
}


