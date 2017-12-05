package com.mright.test.shiro;

import com.mright.common.utils.TestUtil;
import com.mright.platform.service.UserService;
import junit.framework.Assert;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.Factory;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author zhaochuanzhen
 * @desc
 * @time 22:22 2017/12/5
 */
public class TestRealm extends TestUtil {

    @Autowired
    private UserService userService;

    @Test
    public void testLoginSuccess() {
        System.out.println(userService.findByUsername("zhangsan"));
        Subject subject = login("shiro", "zhangsan", "123");
        Assert.assertTrue(subject.isAuthenticated());
    }

    /*@Test(expected = UnknownAccountException.class)
    public void testLoginFailWithUnknownUsername() {
        login("classpath:shiro.ini", u1.getUsername() + "1", password);
    }

    @Test(expected = IncorrectCredentialsException.class)
    public void testLoginFailWithErrorPassowrd() {
        login("classpath:shiro.ini", u1.getUsername(), password + "1");
    }

    @Test(expected = LockedAccountException.class)
    public void testLoginFailWithLocked() {
        login("classpath:shiro.ini", u4.getUsername(), password + "1");
    }

    @Test(expected = ExcessiveAttemptsException.class)
    public void testLoginFailWithLimitRetryCount() {
        for (int i = 1; i <= 5; i++) {
            try {
                login("classpath:shiro.ini", u3.getUsername(), password + "1");
            } catch (Exception e) {*//*ignore*//*}
        }
        login("classpath:shiro.ini", u3.getUsername(), password + "1");

        //需要清空缓存，否则后续的执行就会遇到问题(或者使用一个全新账户测试)
    }


    @Test
    public void testHasRole() {
        login("classpath:shiro.ini", u1.getUsername(), password);
        Assert.assertTrue(subject().hasRole("admin"));
    }

    @Test
    public void testNoRole() {
        login("classpath:shiro.ini", u2.getUsername(), password);
        Assert.assertFalse(subject().hasRole("admin"));
    }

    @Test
    public void testHasPermission() {
        login("classpath:shiro.ini", u1.getUsername(), password);
        Assert.assertTrue(subject().isPermittedAll("user:create", "menu:create"));
    }

    @Test
    public void testNoPermission() {
        login("classpath:shiro.ini", u2.getUsername(), password);
        Assert.assertFalse(subject().isPermitted("user:create"));
    }*/

    private Subject login(String ini, String username, String password) {
        //1、获取SecurityManager工厂，此处使用Ini配置文件初始化SecurityManager
        Factory<org.apache.shiro.mgt.SecurityManager> factory =
                new IniSecurityManagerFactory("classpath:shiro/" + ini + ".ini");

        //2、得到SecurityManager实例 并绑定给SecurityUtils
        org.apache.shiro.mgt.SecurityManager securityManager = factory.getInstance();
        SecurityUtils.setSecurityManager(securityManager);

        //3、得到Subject及创建用户名/密码身份验证Token（即用户身份/凭证）
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);

        subject.login(token);
        return subject;
    }
}
