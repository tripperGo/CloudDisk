package com.mright.platform.service.impl;

import com.mright.platform.dao.RoleDao;
import com.mright.platform.entity.Role;
import com.mright.platform.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author zhaochuanzhen
 * @desc
 * @since 15:12 2017/12/4
 */
@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleDao roleDao;

    /**
     * 创建角色
     */
    @Override
    public Role createRole(Role role) {
        Integer count = 0;
        if (role != null) {
            count = roleDao.createRole(role);
        }
        if (count == 1) {
            return role;
        }
        return null;
    }

    /**
     * 删除角色
     */
    @Override
    public void deleteRole(Long roleId) {
        if (roleId != null) {
            roleDao.deleteRole(roleId);
        }
    }

    /**
     * 添加角色-权限之间关系
     */
    @Override
    public void correlationPermissions(Long roleId, Long... permissionIds) {
        if (roleId != null && permissionIds != null && permissionIds.length > 0) {
            roleDao.createRolesPermissions(roleId, permissionIds);
        }
    }

    /**
     * 移除角色-权限之间关系
     */
    @Override
    public void uncorrelationPermissions(Long roleId, Long... permissionIds) {
        if (roleId != null && permissionIds != null && permissionIds.length > 0) {
            roleDao.uncorrelationPermissions(roleId, permissionIds);
        }
    }
}
