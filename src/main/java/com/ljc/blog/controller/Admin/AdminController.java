package com.ljc.blog.controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Admin")
public class AdminController {
    @RequestMapping("/")
    public String admin(){
        return "/Admin/index";
    }
}
