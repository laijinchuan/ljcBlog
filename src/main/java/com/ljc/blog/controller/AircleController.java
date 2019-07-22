package com.ljc.blog.controller;

import com.ljc.blog.entity.Aircle;
import com.ljc.blog.entity.AircleGroup;
import com.ljc.blog.service.AircleGroupService;
import com.ljc.blog.service.AircleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

@RequestMapping("/Aricle")
@Controller
public class AircleController {
    @Autowired
    private AircleService  aircleService;

    @Autowired
    private AircleGroupService aircleGroupService;

    /**
     * 进入文章新增页面
     * @param model
     * @return
     */
    @RequestMapping("/insert")
    public String insertAircle(Model model){
        List<AircleGroup> aircleGroups = aircleGroupService.selectAll();
        model.addAttribute("aircleGroups",aircleGroups);
        return "/Admin/Aircle/insertAircle";
    }
    @RequestMapping(value = "/insertSubmit",method = RequestMethod.POST)
    public String AircleSubmit(Aircle airclepa){
        Aircle aircle = new Aircle();
        aircle.setTitle(airclepa.getTitle());
        aircle.setContext(airclepa.getContext());
        List<AircleGroup>  groupList=new ArrayList<AircleGroup>();
        if(airclepa.getAircleGroupList()!=null){
            groupList.add(new AircleGroup(airclepa.getGroupId()));
        }
        aircle.setAircleGroupList(groupList);
        aircle.setGroupId(airclepa.getGroupId());
        aircleService.insertAircle(aircle);
        return "redirect:/index";
    }

}
