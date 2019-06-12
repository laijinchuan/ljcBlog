package com.ljc.blog.service;

import com.ljc.blog.entity.AircleGroup;

import java.util.List;

public interface AircleGroupService
{
    /**
     * 新增分组
     * @param aircleGroup
     * @return
     */
   AircleGroup insertGroup(AircleGroup aircleGroup);

    /**
     * 查找所有分组
     * @return
     */
   List<AircleGroup> selectAll();
}
