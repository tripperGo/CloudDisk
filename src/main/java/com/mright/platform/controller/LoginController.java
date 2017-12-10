package com.mright.platform.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * @author zhaochuanzhen
 * @desc
 * @time 20:59 2017/12/9
 */
@Controller
@RequestMapping("login")
public class LoginController {

    /**
     * 跳转到登陆页面
     */
    @RequestMapping("loginPage")
    public String loginPage() {
        return "login";
    }

    /**
     * 执行登陆认证
     */
    @RequestMapping("login")
    public String login(HttpServletRequest request) throws Exception {
        //shiroLoginFailure是shiro异常类的全限命名
        String exceptionClassName = (String) request.getAttribute("shiroLoginFailure");
        if (!StringUtils.isEmpty(exceptionClassName)) {
            if (UnknownAccountException.class.getName().equals(exceptionClassName)) {
                throw new Exception("账户不存在");
            } else if (IncorrectCredentialsException.class.getName().equals(exceptionClassName)) {
                throw new Exception("用户名/密码错误");
            } else {
                throw new Exception("未知异常");
            }
        }
        //如果认证失败，则跳转到login页面
        return "login";
    }

    /**
     * 主页
     */
    @RequestMapping("main")
    public String mainPage(Model model) {
        Subject subject = SecurityUtils.getSubject();
        String username = (String) subject.getPrincipal();
        model.addAttribute("username", username);
        return "/index";
    }

}