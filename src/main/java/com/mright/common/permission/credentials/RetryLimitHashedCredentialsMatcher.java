package com.mright.common.permission.credentials;

import com.mright.common.constant.ShiroCacheUtil;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;

/**
 * @author zhaochuanzhen
 * @desc
 * @time 21:16 2017/12/5
 */
public class RetryLimitHashedCredentialsMatcher extends HashedCredentialsMatcher {

    private Integer retryCount;

    public RetryLimitHashedCredentialsMatcher() {
    }

    @Override
    public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info) {
        String username = (String) token.getPrincipal();
        retryCount = ShiroCacheUtil.retryCount.get(username);
        //retry count + 1
        if (retryCount == null) {
            retryCount = 0;
        } else {
            retryCount++;
        }
        ShiroCacheUtil.retryCount.put(username, retryCount);
        if (retryCount > 5) {
            //if retry count > 5 throw
            throw new ExcessiveAttemptsException();
        }

        boolean matches = super.doCredentialsMatch(token, info);
        if (matches) {
            //clear retry count
            ShiroCacheUtil.retryCount.remove(username);
        }
        return matches;
    }

}
