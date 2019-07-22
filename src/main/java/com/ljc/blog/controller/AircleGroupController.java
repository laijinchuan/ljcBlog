package com.ljc.blog.controller;

import com.ljc.blog.entity.AircleGroup;
import com.ljc.blog.service.AircleGroupService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;

@Controller
public class AircleGroupController {
    @Autowired
    private AircleGroupService aircleGroupService;
    @RequestMapping(value = "/insertGroup",method = RequestMethod.POST,produces = "application/json; charset=utf-8")
    @ResponseBody
    public String insertGroup(  AircleGroup aircleGroup){
        System.out.println(aircleGroup);
        JSONObject json = new JSONObject();
        if(aircleGroup!=null){
           aircleGroupService.insertGroup(aircleGroup);
            json.put("message","添加成功");
        }else{
            json.put("message","添加失败");
        }
        return    json.toString();
    }
    @RequestMapping("/enterGroup")
    public String enterGroup(){
        return "/Admin/Group/insertGroup";
    }
    @RequestMapping("/testJson")
    @ResponseBody
    public  HashMap<String, Object>  testJson( String data){
        System.out.println(data);
        HashMap<String, Object> map = new HashMap<>();
        map.put("code","1231");
        map.put("data","好的");
       return map;
    }
}
