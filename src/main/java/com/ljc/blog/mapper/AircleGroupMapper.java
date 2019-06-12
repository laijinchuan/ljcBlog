package com.ljc.blog.mapper;

import com.ljc.blog.entity.AircleGroup;

import java.util.List;

/**
 * 文章分组
 */
public interface AircleGroupMapper {
    /**
     * 根据主键删除分组
     * @param fid 主键
     * @return
     */
    int deleteByPrimaryKey(String fid);

    int insert(AircleGroup record);

    /**
     * 根据条件插入数据
     * @param record
     * @return
     */
    int insertSelective(AircleGroup record);

    AircleGroup selectByPrimaryKey(String fid);

    /**
     * 查找所有分组
     * @return
     */
    List<AircleGroup>  selectAll();
    /**
     * 不为空时更新
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(AircleGroup record);

    /**
     * 全部更新
     * @param record
     * @return
     */
    int updateByPrimaryKey(AircleGroup record);
}