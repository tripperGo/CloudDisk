package com.mright.test.shiro.realm;

import org.apache.shiro.authc.*;
import org.apache.shiro.realm.Realm;

/**
 * @author zhaochuanzhen
 * @desc
 * @since 16:27 2017/11/27
 */
public class MyRealm1 implements Realm {
    @Override
    public String getName() {
        return "myRealm1";
    }

    @Override
    public boolean supports(AuthenticationToken token) {
        return token instanceof UsernamePasswordToken;
    }

    @Override
    public AuthenticationInfo getAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        String username = (String) token.getPrincipal();
        String password = new String((char[]) token.getCredentials());
        if (!"zhang".equals(username)) {
            throw new UnknownAccountException();
        } else if (!"123".equals(password)) {
            throw new IncorrectCredentialsException();
        }
        return new SimpleAuthenticationInfo("zhang", "123", this.getName());
    }
}
