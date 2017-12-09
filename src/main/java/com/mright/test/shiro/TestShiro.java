package com.mright.test.shiro;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.Factory;
import org.junit.Test;

import java.util.Arrays;

/**
 * @author zhaochuanzhen
 * @desc
 * @time 16:37 2017/12/9
 */
public class TestShiro {

    @Test
    public void testAuthorizationRealm(){
        Subject subject = this.login("shiro-realm", "zhangsan", "111111");
        System.out.println(subject.isAuthenticated());
        if(subject.hasRole("role1")){
            System.out.println("该用户拥有role1的角色");
        }
        if(subject.hasAllRoles(Arrays.asList("role1","role2"))){
            System.out.println("\"role1\",\"role2\"");
        }
        if(subject.isPermitted("user:create")){
            System.out.println("该用户拥有user:create的权限");
        }
        if(subject.isPermittedAll("user:create","user:delete","items:add")){
            System.out.println("user:create user:delete items:add");
        }
        subject.checkPermission("items:add:1");
    }

    @Test
    public void testAuthorization(){
        Subject subject = this.login("shiro-permission", "zhang", "123");
        if(subject.hasRole("role1")){
            System.out.println("该用户拥有role1的角色");
        }
        if(subject.hasAllRoles(Arrays.asList("role1","role2"))){
            System.out.println("\"role1\",\"role2\"");
        }
        if(subject.isPermitted("user:create")){
            System.out.println("该用户拥有user:create的权限");
        }
        if(subject.isPermittedAll("user:create","user:delete")){
            System.out.println("user:create user:delete");
        }
        System.out.println(subject.isAuthenticated());
    }

    @Test
    public void testRealmMd5(){
        Subject subject = this.login("shiro-realm-md5", "zhangsan", "123456");
        System.out.println(subject.isAuthenticated());
    }

    @Test
    public void testMD5(){
        String source = "123456";
        String salt = "qwert";
        int hashIterations = 1;
        Md5Hash md5Hash = new Md5Hash(source, salt, hashIterations);
        System.out.println(md5Hash.toString());

        SimpleHash simpleHash = new SimpleHash("md5",source,salt,hashIterations);
        System.out.println(simpleHash.toString());
    }

    @Test
    public void testCustomRealm() {
        Subject subject = this.login("shiro-realm", "zhangsan", "111111");
        System.out.println(subject.isAuthenticated());
    }

    @Test
    public void testLoginAndLogout() {
        Subject subject = this.login("shiro-first", "zhangsan", "123456");
        System.out.println(subject.isAuthenticated());
    }

    private Subject login(String iniPath, String userCode, String password) {
        Factory<SecurityManager> factory = new IniSecurityManagerFactory("classpath:shiro/" + iniPath + ".ini");
        SecurityManager securityManager = factory.getInstance();
        SecurityUtils.setSecurityManager(securityManager);
        Subject subject = SecurityUtils.getSubject();
        try {
            subject.login(new UsernamePasswordToken(userCode, password));
        } catch (IncorrectCredentialsException exception) {
            System.out.println("密码错误");
        } catch (UnknownAccountException exception) {
            System.out.println("用户名错误");
        }
        return subject;
    }

}
