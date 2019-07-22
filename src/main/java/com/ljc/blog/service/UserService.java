package com.ljc.blog.service;

import com.ljc.blog.entity.User;

import java.util.List;

/**
 *
 */
public interface UserService {
    /**
     * 添加用户
     * @param user
     * @return
     *
     */
    User insertUser(User user);

    /**
     * 查看所有用户
     * @return
     */
    List<User>  selectAll();
}
