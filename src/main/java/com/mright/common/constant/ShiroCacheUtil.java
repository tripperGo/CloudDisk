package com.mright.common.constant;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * @author ochuanzhen
 * @desc
 * @time 21:19 2017/12/5
 */
public class ShiroCacheUtil implements Serializable {

    /**
     * 重试登陆的次数，如果大于五次，则锁定账户一小时
     */
    public static Map<String, Integer> retryCount = new HashMap<>();

}
