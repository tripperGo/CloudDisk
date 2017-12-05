package com.mright.platform.service.impl;

import com.mright.platform.dao.PermissionDao;
import com.mright.platform.entity.Permission;
import com.mright.platform.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author zhaochuanzhen
 * @desc
 * @since 14:49 2017/12/4
 */
@Service
public class PermissionServiceImpl implements PermissionService {

    @Autowired
    private PermissionDao permissionDao;

    /**
     * 创建权限
     */
    @Override
    public Permission createPermission(Permission permission) {
        Integer count = 0;
        if (permission != null) {
            count = permissionDao.createPermission(permission);
        }
        if (count == 1) {
            return permission;
        }
        return null;
    }

    /**
     * 删除权限
     */
    @Override
    public void deletePermission(Long permissionId) {
        if (permissionId != null) {
            permissionDao.deletePermission(permissionId);
        }
    }
}