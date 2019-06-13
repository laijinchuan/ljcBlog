package com.ljc.blog.controller;

import com.ljc.blog.entity.AircleGroup;
import com.ljc.blog.service.AircleGroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class AircleGroupController {
    @Autowired
    private AircleGroupService aircleGroupService;
    @RequestMapping("/insertGroup")
    public  String  insertGroup(List<AircleGroup> listAir){
        if(listAir.size()>0){
           for (AircleGroup r:listAir){
               aircleGroupService.insertGroup(r);
           }
           return "";
        }
        return  null;

    }
}
