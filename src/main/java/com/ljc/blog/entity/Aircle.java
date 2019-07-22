package com.ljc.blog.entity;

import java.util.Date;
import java.util.List;

public class Aircle {
    private String fid;

    private String title;

    private String context;

    private String viewCount;

    private Date writeTime;

    private String  contextSum;

    public String getContextSum() {
        return contextSum;
    }

    public void setContextSum(String contextSum) {
        this.contextSum = contextSum;
    }

    public List<AircleGroup> getAircleGroupList() {
        return aircleGroupList;
    }

    public void setAircleGroupList(List<AircleGroup> aircleGroupList) {
        this.aircleGroupList = aircleGroupList;
    }

    private String groupId;

    private List<AircleGroup> aircleGroupList;
    public String getFid() {
        return fid;
    }

    public void setFid(String fid) {
        this.fid = fid == null ? null : fid.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context == null ? null : context.trim();
    }

    public String getViewCount() {
        return viewCount;
    }

    public void setViewCount(String viewCount) {
        this.viewCount = viewCount == null ? null : viewCount.trim();
    }

    public Date getWriteTime() {
        return writeTime;
    }

    public void setWriteTime(Date writeTime) {
        this.writeTime = writeTime;
    }

    public String getGroupId() {
        return groupId;
    }

    public void setGroupId(String groupId) {
        this.groupId = groupId == null ? null : groupId.trim();
    }
}