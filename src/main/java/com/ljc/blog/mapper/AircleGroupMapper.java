package com.ljc.blog.mapper;

import com.ljc.blog.entity.AircleGroup;

import java.util.List;

public interface AircleGroupMapper {
    int deleteByPrimaryKey(String fid);

    int insert(AircleGroup record);

    int insertSelective(AircleGroup record);

    AircleGroup selectByPrimaryKey(String fid);

    int updateByPrimaryKeySelective(AircleGroup record);

    int updateByPrimaryKey(AircleGroup record);

    List<AircleGroup> selectAll();
}