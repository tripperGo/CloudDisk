package com.mright.test.shiro.realm;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import java.util.ArrayList;
import java.util.List;

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
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principal) {
        String userCode = (String) principal.getPrimaryPrincipal();
        List<String> roles = new ArrayList<>();
        roles.add("role1");
        roles.add("role2");
        List<String> permissions = new ArrayList<>();
        permissions.add("user:create");
        permissions.add("user:delete");
        permissions.add("items:add");
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        info.addRoles(roles);
        info.addStringPermissions(permissions);
        return info;
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
