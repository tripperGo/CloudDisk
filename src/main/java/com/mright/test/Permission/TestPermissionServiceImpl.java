package com.mright.test.Permission;

import com.mright.common.utils.TestUtil;
import com.mright.platform.entity.Permission;
import com.mright.platform.entity.Role;
import com.mright.platform.entity.User;
import com.mright.platform.service.PermissionService;
import com.mright.platform.service.RoleService;
import com.mright.platform.service.UserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author zhaochuanzhen
 * @desc
 * @since 15:03 2017/12/4
 */
public class TestPermissionServiceImpl extends TestUtil {

    @Autowired
    private PermissionService permissionService;

    @Autowired
    private RoleService roleService;

    @Autowired
    private UserService userService;

    @Test
    public void createUser() {
        User user = new User();
        user.setPassword("123");
        user.setSalt("salt");
        user.setLocked(true);
        user.setUsername("zhangsan");
        userService.createUser(user);
    }

    @Test
    public void changePassword() {
        userService.changePassword(1l,"123456");
    }

    @Test
    public void correlationRoles() {
        Long roleId = 1l;
        Long[] pIds = {1l, 2l, 3l};
        userService.correlationRoles(roleId, pIds);
    }

    @Test
    public void uncorrelationRoles() {
        Long roleId = 1l;
        Long[] pIds = {1l, 2l, 3l};
        userService.uncorrelationRoles(roleId, pIds);
    }

    @Test
    public void findByUsername() {
        System.out.println(userService.findByUsername("username"));
    }

    @Test
    public void findRoles() {
        System.out.println(userService.findRoles("username"));
    }

    @Test
    public void findPermissions() {
        System.out.println(userService.findPermissions("username"));
    }

    @Test
    public void testBeachDeletePermissionRole() {
        Long roleId = 1l;
        Long[] pIds = {1l, 2l, 3l};
        roleService.uncorrelationPermissions(roleId, pIds);
    }

    @Test
    public void testBeachInsertPermissionRole() {
        Long roleId = 1l;
        Long[] pIds = {1l, 2l, 3l};
        roleService.correlationPermissions(roleId, pIds);
    }

    @Test
    public void createRole() {
        Role role = new Role();
        role.setDescription("角色描述");
        role.setAvailable(true);
        role.setRole("角色");
        Role r = roleService.createRole(role);
        System.out.println(r);
    }

    @Test
    public void deleteRole() {
        roleService.deleteRole(1l);
    }

    @Test
    public void testCreatePermission() {
        Permission permission = new Permission();
        permission.setAvailable(true);
        permission.setDescription("权限描述");
        permission.setPermission("权限一");
        Permission result = permissionService.createPermission(permission);
        System.out.println(result);
    }

    @Test
    public void testDeletePermission() {
        permissionService.deletePermission(1l);
    }

}
