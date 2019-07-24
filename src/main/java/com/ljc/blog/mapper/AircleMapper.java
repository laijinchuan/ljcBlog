package com.ljc.blog.mapper;

import com.ljc.blog.entity.Aircle;

import java.util.List;

public interface AircleMapper {
    int deleteByPrimaryKey(String fid);

    int insert(Aircle record);

    int insertSelective(Aircle record);

    Aircle selectByPrimaryKey(String fid);
    /**
     * 根据分类ID查询数据
     * @param groupId 分类ID
     * @return 文章列表
     */
    List<Aircle> selectAircleBySelective(String groupId );

    int updateByPrimaryKeySelective(Aircle record);

    int updateByPrimaryKey(Aircle record);

    List<Aircle> selectAll();
}