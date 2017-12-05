package com.mright.platform.dao;

import com.mright.platform.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.Set;

/**
 * @author zhaochuanzhen
 * @desc
 * @since 16:01 2017/12/4
 */
@Repository
public interface UserDao {

    /**
     * 创建账户
     */
    Integer createUser(User user);

    /**
     * 根据用户ID查找用户信息
     */
    User findOne(Long userId);

    /**
     * 修改用户信息
     */
    void updateUser(User user);

    /**
     * 添加用户-角色关系
     */
    void correlationRoles(@Param("userId") Long userId, @Param("roleIds") Long... roleIds);

    /**
     * 移除用户-角色关系
     */
    void uncorrelationRoles(@Param("userId") Long userId, @Param("roleIds") Long... roleIds);

    /**
     * 根据用户名查找用户
     */

    User findByUsername(@Param("username") String username);

    /**
     * 根据用户名查找其角色
     */
    Set<String> findRoles(@Param("username") String username);

    /**
     * 根据用户名查找其权限
     */
    Set<String> findPermissions(@Param("username") String username);
}
