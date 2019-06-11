package com.ljc.blog.service;

import com.ljc.blog.entity.User;

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
}
