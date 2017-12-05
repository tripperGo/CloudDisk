package com.mright.platform.service;

import com.mright.platform.entity.Role;

/**
 * @author zhaochuanzhen
 * @desc
 * @since 15:11 2017/12/4
 */
public interface RoleService {

    /**
     * 创建角色
     */
    Role createRole(Role role);

    /**
     * 删除角色
     */
    void deleteRole(Long roleId);

    /**
     * 添加角色-权限之间关系
     */
    void correlationPermissions(Long roleId, Long... permissionIds);

    /**
     * 移除角色-权限之间关系
     */
    void uncorrelationPermissions(Long roleId, Long... permissionIds);

}
