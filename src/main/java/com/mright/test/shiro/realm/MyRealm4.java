package com.mright.test.shiro.realm;

import org.apache.shiro.authc.*;
import org.apache.shiro.realm.Realm;
import org.apache.shiro.util.ByteSource;

/**
 * @author zhaochuanzhen
 * @desc
 * @since 11:20 2017/12/4
 */
public class MyRealm4 implements Realm {
    @Override
    public String getName() {
        return "MyRealm4";
    }

    @Override
    public boolean supports(AuthenticationToken token) {
        return token instanceof UsernamePasswordToken;
    }

    @Override
    public AuthenticationInfo getAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        String username = (String) token.getPrincipal();
        String password = new String((char[]) (token.getCredentials()));
        String salt = "202cb962ac59075b964b07152d234b70";
        SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(username, password, this.getName());
        info.setCredentialsSalt(ByteSource.Util.bytes(username + salt));
        return info;
    }
}
