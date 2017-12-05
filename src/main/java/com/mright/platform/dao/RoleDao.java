package com.mright.platform.dao;

import com.mright.platform.entity.Role;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * @author zhaochuanzhen
 * @desc
 * @since 15:13 2017/12/4
 */
@Repository
public interface RoleDao {

    /**
     * 创建角色
     */
    Integer createRole(Role role);

    /**
     * 删除角色
     */
    void deleteRole(Long roleId);

    /**
     * 添加角色-权限之间关系
     */
    void createRolesPermissions(@Param("roleId") Long roleId, @Param("permissionIds") Long... permissionIds);

    /**
     * 移除角色-权限之间关系
     */
    void uncorrelationPermissions(@Param("roleId") Long roleId, @Param("permissionIds") Long... permissionIds);
}
