package com.mright.test.shiro.realm;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;

/**
 * @author zhaochuanzhen
 * @desc
 * @time 18:27 2017/12/9
 */
public class CustomRealmMd5 extends AuthorizingRealm {

    @Override
    public String getName() {
        return "customRealmMd5";
    }

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        String userCode = (String) token.getPrincipal();
        String salt = "qwert";
        //bacbc96d57da0555dc8b58beadbc2d93
        //1703b354f343bf1089543c6aace3e930
        String password = "1703b354f343bf1089543c6aace3e930";//密码+salt
        if (!"zhangsan".equals(userCode)) {
            return null;
        }
        SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(userCode, password, ByteSource.Util.bytes(salt), this.getName());
        return info;
    }
}
