package com.mright.platform.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author zhaochuanzhen
 * @desc
 * @time 20:59 2017/12/9
 */
@Controller
@RequestMapping("login")
public class LoginController {

    @RequestMapping("loginPage")
    public String loginPage(){
        return "login";
    }

}
