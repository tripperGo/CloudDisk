package com.mright.common.utils;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @author zhaochuanzhen
 * @desc 单元测试工具类,加载配置文件
 * @since 15:03 2017/12/4
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-*.xml")
public class TestUtil {
}