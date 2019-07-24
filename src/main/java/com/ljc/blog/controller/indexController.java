package com.ljc.blog.controller;

import com.ljc.blog.entity.Aircle;
import com.ljc.blog.entity.AircleGroup;
import com.ljc.blog.service.AircleGroupService;
import com.ljc.blog.service.AircleService;
import com.ljc.blog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class indexController {
    @Autowired
    private AircleService aircleService;
    @Autowired
    private AircleGroupService aircleGroupService;
    @Autowired
    private UserService userService;
        @RequestMapping(value = {"/","/index"})
        public String indexView(Model model){
            List<AircleGroup> aircleGroups = aircleGroupService.selectAll();
            model.addAttribute("aircleGroups",aircleGroups);
            List<Aircle> aircles = aircleService.listAircle();
            for(Aircle aircle:aircles){
                String context = aircle.getContext();
                if(aircle.getContext().length()>10){
                    String substring = aircle.getContext().substring(0, 10);
                    aircle.setContext(substring);
                }

            }
            model.addAttribute("aircles",aircles);
            return "/Home/index";
    }
    @RequestMapping("/queryByGroup")
    public String indexByGroup(String groupId,Model model){
    List<AircleGroup> aircleGroups = aircleGroupService.selectAll();
        model.addAttribute("aircleGroups",aircleGroups);
    List<Aircle> aircles = aircleService.selectAircleBySelective(groupId);
    for(Aircle aircle:aircles){
        String context = aircle.getContext();
        if(aircle.getContext().length()>10){
            String substring = aircle.getContext().substring(0, 10);
            aircle.setContext(substring);
        }
    }
        model.addAttribute("aircles",aircles);
    return "/Home/page/queryByGroup";
}
}
