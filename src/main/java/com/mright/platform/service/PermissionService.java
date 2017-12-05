package com.mright.platform.service;

import com.mright.platform.entity.Permission;

/**
 * @author zhaochuanzhen
 * @desc
 * @since 14:47 2017/12/4
 */
public interface PermissionService {

    /**
     * 创建权限
     */
    Permission createPermission(Permission permission);

    /**
     * 删除权限
     */
    void deletePermission(Long permissionId);

}
