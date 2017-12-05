package com.mright.test.shiro;

import com.alibaba.druid.pool.DruidDataSource;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authc.pam.AtLeastOneSuccessfulStrategy;
import org.apache.shiro.authc.pam.ModularRealmAuthenticator;
import org.apache.shiro.authz.ModularRealmAuthorizer;
import org.apache.shiro.authz.permission.WildcardPermissionResolver;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.mgt.DefaultSecurityManager;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.realm.Realm;
import org.apache.shiro.realm.jdbc.JdbcRealm;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.Factory;
import org.junit.Assert;
import org.junit.Test;

import java.util.Arrays;

/**
 * @author zhaochuanzhen
 * @desc
 * @since 15:47 2017/11/27
 */
public class TestLogin {

    @Test
    public void testAuthentication() {
        this.login("shiro", "zhang", "123");
    }

    @Test
    public void testRealm() {
        this.login("shiro-realm", "zhang", "123");
    }

    @Test
    public void testJDBCRealm() {
        this.login("shiro-jdbc-realm", "zhang", "123");
    }

    @Test
    public void testRole() {
        Subject subject = this.login("shiro-role", "zhang", "123");
        subject.checkRole("role2");
        subject.checkRoles("role1", "role2");
        boolean[] flag = subject.hasRoles(Arrays.asList("role1", "role2", "role3"));
        for (boolean f : flag) {
            System.out.println(f);
        }
    }

    @Test
    public void testPermission() {
        Subject subject = this.login("shiro-permission", "zhang", "123");
        subject.checkPermission("user:create");
        boolean bl = subject.isPermitted("user:delete");
        System.out.println(bl);
        boolean[] flags = subject.isPermitted("user:create", "user:delete");
        for (boolean f : flags) {
            System.out.println(f);
        }
        boolean f = subject.isPermittedAll("user:create", "user:delete");
        System.out.println(f);
    }

    @Test
    public void testPermission2() {
        Subject subject = this.login("shiro-permission", "zhang", "123");
        subject.checkPermissions("system:user:view");
    }

    @Test
    public void testEncryptRealm(){
        Subject subject = this.login("shiro-jdbc-realm","zhang","");

    }

    @Test
    public void testIni() {
        DefaultSecurityManager securityManager = new DefaultSecurityManager();
        //设置authenticator
        ModularRealmAuthenticator authenticator = new ModularRealmAuthenticator();
        authenticator.setAuthenticationStrategy(new AtLeastOneSuccessfulStrategy());
        securityManager.setAuthenticator(authenticator);
        //设置authorizer
        ModularRealmAuthorizer authorizer = new ModularRealmAuthorizer();
        authorizer.setPermissionResolver(new WildcardPermissionResolver());
        securityManager.setAuthorizer(authorizer);
        //设置Realm
        DruidDataSource ds = new DruidDataSource();
        ds.setDriverClassName("com.mysql.jdbc.Driver");
        ds.setUrl("jdbc:mysql://localhost:3306/shiro");
        ds.setUsername("root");
        ds.setPassword("");
        JdbcRealm jdbcRealm = new JdbcRealm();
        jdbcRealm.setDataSource(ds);
        jdbcRealm.setPermissionsLookupEnabled(true);
        securityManager.setRealms(Arrays.asList((Realm) jdbcRealm));
        //将SecurityManager设置到SecurityUtils 方便全局使用
        SecurityUtils.setSecurityManager(securityManager);
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken("zhang", "123");
        subject.login(token);
        Assert.assertTrue(subject.isAuthenticated());
    }

    private Subject login(String ini, String username, String password) {
        Factory<SecurityManager> factory = new IniSecurityManagerFactory("classpath:shiro/" + ini + ".ini");
        SecurityManager securityManager = factory.getInstance();
        SecurityUtils.setSecurityManager(securityManager);
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        try {
            subject.login(token);
        } catch (LockedAccountException exception) {
            System.out.println("锁定的账号");
        } catch (DisabledAccountException exception) {
            System.out.println("禁用的账号");
        } catch (UnknownAccountException exception) {
            System.out.println("用户名错误");
        } catch (ExcessiveAttemptsException exception) {
            System.out.println("登陆次数过多");
        } catch (IncorrectCredentialsException exception) {
            System.out.println("密码错误");
        } catch (ExpiredCredentialsException exception) {
            System.out.println("登录过期");
        } finally {
            Assert.assertEquals(true, subject.isAuthenticated());
        }
        return subject;
    }

}
