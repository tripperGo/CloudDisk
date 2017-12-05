package com.mright.platform.dao;

import com.mright.platform.entity.Permission;
import org.springframework.stereotype.Repository;

/**
 * @author zhaochuanzhen
 * @desc
 * @since 14:50 2017/12/4
 */
@Repository
public interface PermissionDao {

    /**
     * 创建权限
     */
    Integer createPermission(Permission permission);

    /**
     * 删除权限
     */
    Integer deletePermission(Long permissionId);
}
