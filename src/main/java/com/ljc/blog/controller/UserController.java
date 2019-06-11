package com.ljc.blog.controller;

import com.ljc.blog.entity.User;
import com.ljc.blog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
    @Autowired
      private    UserService userService;
    @RequestMapping(value = "/insertUser",method = RequestMethod.POST)
  public ModelAndView insertUser(User user){
        ModelAndView modelAndView = new ModelAndView();
        if(user!=null){
          userService.insertUser(user);
            modelAndView.setViewName("loginResult");
            modelAndView.addObject("success","成功");
        }else{
            modelAndView.setViewName("loginResult");
            modelAndView.addObject("success","失败");
        }
    return modelAndView;

    }
    @RequestMapping("/login")
    public  String login(){
        return "Admin/login";
    }
}
