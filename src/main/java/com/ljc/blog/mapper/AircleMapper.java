package com.ljc.blog.mapper;

import com.ljc.blog.entity.Aircle;

import java.util.List;

public interface AircleMapper {
    int deleteByPrimaryKey(String fid);

    int insert(Aircle record);

    int insertSelective(Aircle record);

    Aircle selectByPrimaryKey(String fid);

    int updateByPrimaryKeySelective(Aircle record);

    int updateByPrimaryKey(Aircle record);

    List<Aircle> selectAll();
}