package com.ljc.blog.service.imp;

import cn.hutool.http.HtmlUtil;
import com.ljc.blog.entity.Aircle;
import com.ljc.blog.entity.AircleGroup;
import com.ljc.blog.mapper.AircleGroupMapper;
import com.ljc.blog.mapper.AircleMapper;
import com.ljc.blog.service.AircleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service
public class AircleServiceImp implements AircleService {
    @Autowired(required = false)
    private AircleMapper aircleMapper;
    @Autowired
    private AircleGroupMapper aircleGroupMapper;
    @Override
    public List<Aircle> listAircle() {
        List<Aircle> aircles = aircleMapper.selectAll();
        aircleAddGroup(aircles);
        return aircles;
    }

    @Override
    public int insertAircle(Aircle aircle) {
        aircle.setFid(UUID.randomUUID().toString());
        aircle.setWriteTime(new Date());
        String context = aircle.getContext();
        //去除页面标签
        String contextSum = HtmlUtil.cleanHtmlTag(context);
        if(contextSum.length()>150){
             contextSum=contextSum.substring(0,150);
             aircle.setContextSum(contextSum);
        }else{
            aircle.setContextSum(contextSum);
        }
        return   aircleMapper.insert(aircle);

    }

    /**
     * 根据组别查询文章
     * @param groupId
     * @return
     */
    @Override
    public List<Aircle> selectAircleBySelective(String groupId) {
        List<Aircle> aircles = aircleMapper.selectAircleBySelective(groupId);
        aircleAddGroup(aircles);
        return aircles;
    }

    /**
     * 为每篇文章添加组别
     * @param aircles
     */
    public  void aircleAddGroup( List<Aircle> aircles){
        for (Aircle a:aircles){
            List<AircleGroup> groupList=null;
            if(a.getGroupId()!=null){
                groupList=new ArrayList<AircleGroup>();
                AircleGroup aircleGroup = aircleGroupMapper.selectByPrimaryKey(a.getGroupId());
                groupList.add(aircleGroup);
            }
            if(groupList!=null){
                a.setAircleGroupList(groupList);
            }
        }
    }
}

