<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<rapid:override name="left">
    <div id="primary" class="content-area">

        <main id="main" class="site-main" role="main">
            <c:forEach items="${aircles}" var="a">
                <article class="post type-post">
                    <figure class="thumbnail">
                        <a href="">
                            <img width="280" height="210"
                                 src="/image/thumbnail/random/img_${Math.random()*1000}.jpg"
                                 class="attachment-content size-content wp-post-image"
                                 alt="${a.title}">
                        </a>
                        <span class="cat">
                                <a href="">
                                        ${a.aircleGroupList[a.aircleGroupList.size()-1].groupName}
                                </a>
                            </span>
                    </figure>
                    <header class="entry-header">
                        <h2 class="entry-title">
                            <a href=""
                               rel="bookmark">
                                    ${a.title}
                            </a>
                        </h2>
                    </header>
                    <div class="entry-content">
                        <div class="archive-content">
                                ${a.contextSum}...
                        </div>
                        <span class="title-l"></span>
                            <%--  <span class="new-icon">
                                  <c:choose>
                                      <c:when test="${a.articleStatus == 2}">
                                          <i class="fa fa-bookmark-o"></i>
                                      </c:when>
                                      <c:otherwise>
                                          <jsp:useBean id="nowDate" class="java.util.Date"/>
                                          <c:set var="interval"
                                                 value="${nowDate.time - a.articleCreateTime.time}"/>&lt;%&ndash;时间差毫秒数&ndash;%&gt;
                                          <fmt:formatNumber value="${interval/1000/60/60/24}" pattern="#0"
                                                            var="days"/>
                                          <c:if test="${days <= 7}">NEW</c:if>
                                      </c:otherwise>
                                  </c:choose>
                              </span>--%>
                        <span class="entry-meta">
                            <span class="date">
                                <fmt:formatDate value="${a.writeTime}" pattern="yyyy年MM月dd日"/>
                            &nbsp;&nbsp;
                            </span>
                            <%--<span class="views">
                                <i class="fa fa-eye"></i>
                                    ${a.articleViewCount} views
                            </span>--%>
                            <span class="comment">&nbsp;&nbsp;
                                <a href="" rel="external nofollow">
                                  <i class="fa fa-comment-o"></i>
                                   <%-- <c:choose>
                                        <c:when test="${a.articleCommentCount == 0}">
                                            发表评论
                                        </c:when>
                                        <c:otherwise>
                                            ${a.articleCommentCount}
                                        </c:otherwise>
                                    </c:choose>--%>

                                </a>
                            </span>
                        </span>
                        <div class="clear"></div>
                    </div><!-- .entry-content -->

                    <span class="entry-more">
                        <a href=""
                           rel="bookmark">
                            阅读全文
                        </a>
                    </span>
                </article>
            </c:forEach>
        </main>

    </div>
</rapid:override>
<%@ include file="../public/framework.jsp" %>

