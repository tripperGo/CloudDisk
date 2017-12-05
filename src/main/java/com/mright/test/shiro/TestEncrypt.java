package com.mright.test.shiro;

import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.DefaultHashService;
import org.apache.shiro.crypto.hash.HashRequest;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.apache.shiro.util.SimpleByteSource;
import org.junit.Test;

/**
 * @author zhaochuanzhen
 * @desc
 * @since 11:32 2017/12/1
 */
public class TestEncrypt {

    @Test
    public void testHashService() {
        DefaultHashService hashService = new DefaultHashService(); //默认算法SHA-512
        hashService.setHashAlgorithmName("SHA-512");
        hashService.setPrivateSalt(new SimpleByteSource("123")); //私盐，默认无
        hashService.setGeneratePublicSalt(true);//是否生成公盐，默认false
        hashService.setRandomNumberGenerator(new SecureRandomNumberGenerator());//用于生成公盐。默认就这个
        hashService.setHashIterations(1); //生成Hash值的迭代次数
        HashRequest request = new HashRequest.Builder()
                .setAlgorithmName("MD5").setSource(ByteSource.Util.bytes("hello"))
                .setSalt(ByteSource.Util.bytes("123")).setIterations(2).build();
        String hex = hashService.computeHash(request).toHex();
        System.out.println(hex);
    }

    @Test
    public void testHashedCredentialsMatcher() {
        String algorithmName = "md5";
        String username = "zhang";
        String password = "123";
        String salt1 = username;
        String salt2 = new SecureRandomNumberGenerator().nextBytes().toHex();//需要存储的盐
        SimpleHash hash = new SimpleHash(algorithmName, password, salt1 + salt2, 2);
        String enPassword = hash.toHex();
        System.out.println(enPassword);
    }

}
