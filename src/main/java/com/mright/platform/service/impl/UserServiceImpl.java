package com.mright.platform.service.impl;

import com.mright.common.utils.PasswordUtil;
import com.mright.platform.dao.UserDao;
import com.mright.platform.entity.User;
import com.mright.platform.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.Set;

/**
 * @author zhaochuanzhen
 * @desc
 * @since 16:00 2017/12/4
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    /**
     * 创建账户
     */
    @Override
    public User createUser(User user) {
        Integer count = 0;
        if (user != null && !StringUtils.isEmpty(user.getCredentialsSalt()) && !StringUtils.isEmpty(user.getPassword())) {
            User tempUser = PasswordUtil.encryptPassword(user.getPassword(), user.getCredentialsSalt());
            user.setSalt(tempUser.getSalt());
            user.setPassword(tempUser.getPassword());
            count = userDao.createUser(user);
        }
        if (count == 1) {
            return user;
        }
        return null;
    }

    /**
     * 修改密码
     */
    @Override
    public void changePassword(Long userId, String newPassword) {
        User user = userDao.findOne(userId);
        user.setPassword(newPassword);
        User tempUser = PasswordUtil.encryptPassword(user.getPassword(), user.getCredentialsSalt());
        user.setSalt(tempUser.getSalt());
        user.setPassword(tempUser.getPassword());
        userDao.updateUser(user);
    }

    /**
     * 添加用户-角色关系
     */
    @Override
    public void correlationRoles(Long userId, Long... roleIds) {
        if (userId != null && roleIds != null && roleIds.length > 0) {
            userDao.correlationRoles(userId, roleIds);
        }
    }

    /**
     * 移除用户-角色关系
     */
    @Override
    public void uncorrelationRoles(Long userId, Long... roleIds) {
        if (userId != null && roleIds != null && roleIds.length > 0) {
            userDao.uncorrelationRoles(userId, roleIds);
        }
    }

    /**
     * 根据用户名查找用户
     */
    @Override
    public User findByUsername(String username) {
        User result = null;
        if (!StringUtils.isEmpty(username)) {
            result = userDao.findByUsername(username);
        }
        return result;
    }

    /**
     * 根据用户名查找其角色
     */
    @Override
    public Set<String> findRoles(String username) {
        Set<String> result = null;
        if (!StringUtils.isEmpty(username)) {
            result = userDao.findRoles(username);
        }
        return result;
    }

    /**
     * 根据用户名查找其权限
     */
    @Override
    public Set<String> findPermissions(String username) {
        Set<String> result = null;
        if (!StringUtils.isEmpty(username)) {
            result = userDao.findPermissions(username);
        }
        return result;
    }
}