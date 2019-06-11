package com.ljc.blog.mapper;

import com.ljc.blog.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    /**
     * 根据id删除用户
     * @param userId 用户id
     * @return 影响行数
     */
    int deleteUser(String userId);

    /**
     * 添加用户
     * @param user  用户参数
     * @return 影响行数
     */
    int insertUser(User user);

    /**
     * 更新用户
     * @param user
     * @return
     */
    int updateUser(User user);

    /**
     * 根据id查询用户
     * @param userId
     * @return
     */
    User getUserById(String userId);

    /**
     * 获取所有用户
     * @return
     */
    List<User> getAllUser();

    /**
            * 根据用户名查找用户
     * @param Username
     */
    User getUserByName(String  Username);

    /**
     * 根据邮箱获取用户
     * @param email
     * @return
     */
    User getUserByEmail(String email);
    /**
     * 根据用户名或Email获得用户
     *
     * @param str 用户名或Email
     * @return 用户
     */
    User getUserByNameOrEmail(String str) ;
}
