package com.ljc.blog.service.imp;

import com.ljc.blog.entity.User;
import com.ljc.blog.mapper.UserMapper;
import com.ljc.blog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.UUID;

@Service
public class UserServiceImp implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public User insertUser(User user) {
        user.setUserLastLoginDate(new Date());
        UUID uuid = UUID.randomUUID();
        user.setUserId(uuid.toString());
        userMapper.insertUser(user);
        return user;
    }
}
