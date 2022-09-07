package com.hk.tonglian;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @description TODO
 * @Author:zzw
 * @Date:2022/9/7 17:03
 */
public class UtilTool {

    //获取当前时间
    public static String getNowLong() {
        Date date = new Date(System.currentTimeMillis());
        String nowtime = "";
        if (date != null) {
            SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            nowtime = sf.format(date);
        }
        return nowtime;
    }
    public static String getNowShort() {
        Date date = new Date(System.currentTimeMillis());
        String nowtime = "";
        if (date != null) {
            SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
            nowtime = sf.format(date);
        }
        return nowtime;
    }
}
