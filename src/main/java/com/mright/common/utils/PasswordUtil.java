package com.mright.common.utils;

import com.mright.platform.entity.User;
import org.apache.shiro.crypto.RandomNumberGenerator;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;

/**
 * @author zhaochuanzhen
 * @desc
 * @since 16:02 2017/12/4
 */
public class PasswordUtil {

    private static RandomNumberGenerator randomNumberGenerator = null;
    private static String algorithmName = "md5";
    private static final int hashIterations = 2;

    static {
        randomNumberGenerator = new SecureRandomNumberGenerator();
    }

    public static User encryptPassword(String password, String credentialsSalt) {
        User user = new User();
        user.setSalt(randomNumberGenerator.nextBytes().toHex());
        String newPassword = new SimpleHash(
                algorithmName,
                password,
                ByteSource.Util.bytes(credentialsSalt),
                hashIterations).toHex();
        user.setPassword(newPassword);
        return user;
    }

}