package com.mright.test.shiro.realm;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

/**
 * @author zhaochuanzhen
 * @desc
 * @time 17:53 2017/12/9
 */
public class CustomRealm extends AuthorizingRealm {

    @Override
    public String getName() {
        return "customRealm";
    }

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        String userCode = (String) token.getPrincipal();
        String password = "111111";
        if(!"zhangsan".equals(userCode)){
            return null;
        }
        SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(userCode,password,this.getName());
        return info;
    }

}
