package com.ljc.blog.service;

import com.ljc.blog.entity.Aircle;

import java.util.List;

public interface  AircleService {
    /**
     * 获得所有文章
     * @return
     */
    List<Aircle> listAircle();

    int insertAircle(Aircle aircle);

    /**
     *根据分组id查询所有文章
     * @param groupId
     * @return
     */
    List<Aircle>  selectAircleBySelective(String groupId);

}
