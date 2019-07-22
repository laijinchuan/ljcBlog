package com.ljc.blog.service.imp;

import com.ljc.blog.entity.AircleGroup;
import com.ljc.blog.mapper.AircleGroupMapper;
import com.ljc.blog.service.AircleGroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.UUID;
@Service
public class AircleGroupServiceImp implements AircleGroupService {
    @Autowired
    private AircleGroupMapper aircleGroupMapper;
    @Override
    public AircleGroup insertGroup(AircleGroup aircleGroup) {
        aircleGroup.setFid(UUID.randomUUID().toString());
        aircleGroup.setRegisterTime(new Date());
        aircleGroupMapper.insert(aircleGroup);
        return aircleGroup;
    }

    @Override
    public List<AircleGroup> selectAll() {
       return aircleGroupMapper.selectAll();
    }
}
