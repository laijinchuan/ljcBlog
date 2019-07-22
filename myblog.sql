/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : myblog

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2019-07-22 18:56:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `aircle`
-- ----------------------------
DROP TABLE IF EXISTS `aircle`;
CREATE TABLE `aircle` (
  `Fid` varchar(44) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `context` mediumtext NOT NULL,
  `view_count` varchar(100) DEFAULT '',
  `write_time` datetime DEFAULT NULL,
  `group_id` varchar(44) NOT NULL DEFAULT '',
  `context_sum` text NOT NULL,
  PRIMARY KEY (`Fid`),
  UNIQUE KEY `title` (`title`),
  KEY `out_key` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aircle
-- ----------------------------
INSERT INTO `aircle` VALUES ('939201cc-6d7b-4c8b-a5bf-49c2cdf14383', '这是我的第一篇文章', '<div align=\"center\"><p><b>如何修改数据库字段名称</b></p><p align=\"left\"><br></p><div align=\"right\"><br></div><div align=\"left\"><p>--新增备用字段备份数据</p></div><div align=\"left\"><p>ALTER TABLE T_BG_BGCONTROLSCHEME add FBONAME_temp nvarchar(500) NULL;</p></div><div align=\"left\"><p>--把字段值赋值给新增字段，并删除原有字段数据</p></div><div align=\"left\"><p>update T_BG_BGCONTROLSCHEME set FBONAME_temp=FBONAME,FBONAME=null;  </p></div><div align=\"left\"><p>--重新设置字段长度</p></div><div align=\"left\"><p>ALTER TABLE T_BG_BGCONTROLSCHEME ALTER COLUMN [FBONAME] nvarchar(500); </p></div><div align=\"left\"><p>--把备用字段数据再重新赋值给加长之后的长度</p></div><div align=\"left\"><p>update T_BG_BGCONTROLSCHEME set FBONAME=FBONAME_temp,FBONAME_temp=null;</p></div><div align=\"left\"><p>--删除备用字段</p></div><div align=\"left\"><p>ALTER TABLE T_BG_BGCONTROLSCHEME drop COLUMN FBONAME_temp;</p></div></div>', null, '2019-07-22 16:26:39', '0ee34bcf-dcc6-4a8f-9e89-8d614f08883a', '如何修改数据库字段名称--新增备用字段备份数据ALTER TABLE T_BG_BGCONTROLSCHEME add FBONAME_temp nvarchar(500) NULL;--把字段值赋值给新增字段，并删除原有字段数据update T_BG_BGCONTROLSCHEME set FBO');
INSERT INTO `aircle` VALUES ('569f3f37-4add-479a-b8dd-47db6d44c5c5', '这是我的第二篇文章', '<div align=\"center\"><p><b>java正则表达式常见应用</b></p><p align=\"left\"><br></p><div style=\"text-align: left;\">package com.modules.plateform.tool;</div><div style=\"text-align: left;\"><br></div><div style=\"text-align: left;\">import java.util.regex.Pattern;</div><div style=\"text-align: left;\">/**</div><div style=\"text-align: left;\"> * 账户相关属性验证工具</div><div style=\"text-align: left;\"> *</div><div style=\"text-align: left;\"> */</div><div style=\"text-align: left;\">public class AccountValidatorUtil {</div><div style=\"text-align: left;\">    /**</div><div style=\"text-align: left;\">     * 正则表达式：验证用户名</div><div style=\"text-align: left;\">     */</div><div style=\"text-align: left;\">    public static final String REGEX_USERNAME = \"^[a-zA-Z]\\\\w{5,20}$\";</div><div style=\"text-align: left;\"> </div><div style=\"text-align: left;\">    /**</div><div style=\"text-align: left;\">     * 正则表达式：验证密码</div><div style=\"text-align: left;\">     */</div><div style=\"text-align: left;\">    public static final String REGEX_PASSWORD = \"^[a-zA-Z0-9]{6,20}$\";</div><div style=\"text-align: left;\"> </div><div style=\"text-align: left;\">    /**</div><div style=\"text-align: left;\">     * 正则表达式：验证手机号</div><div style=\"text-align: left;\">     */</div><div style=\"text-align: left;\">    public static final String REGEX_MOBILE = \"^((17[0-9])|(14[0-9])|(13[0-9])|(15[^4,\\\\D])|(18[0,5-9]))\\\\d{8}$\";</div><div style=\"text-align: left;\"><span>public static final String REGEX_MOBILE =\"^[1](([3][0-9])|([4][5,7,9])|([5][^4,6,9])|([6][6])|([7][3,5,6,7,8])|([8][0-9])|([9][8,9]))[0-9]{8}$\";</span></div><div style=\"text-align: left;\"> </div><div style=\"text-align: left;\">    /**</div><div style=\"text-align: left;\">     * 正则表达式：验证邮箱</div><div style=\"text-align: left;\">     */</div><div style=\"text-align: left;\">    public static final String REGEX_EMAIL = \"^([a-z0-9A-Z]+[-|\\\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\\\.)+[a-zA-Z]{2,}$\";</div><div style=\"text-align: left;\"> </div><div style=\"text-align: left;\">    /**</div><div style=\"text-align: left;\">     * 正则表达式：验证汉字</div><div style=\"text-align: left;\">     */</div><div style=\"text-align: left;\">    public static final String REGEX_CHINESE = \"^[\\u4e00-\\u9fa5],{0,}$\";</div><div style=\"text-align: left;\"> </div><div style=\"text-align: left;\">    /**</div><div style=\"text-align: left;\">     * 正则表达式：验证身份证</div><div style=\"text-align: left;\">     */</div><div style=\"text-align: left;\">    public static final String REGEX_ID_CARD = \"(^\\\\d{18}$)|(^\\\\d{15}$)\";</div><div style=\"text-align: left;\"> </div><div style=\"text-align: left;\">    /**</div><div style=\"text-align: left;\">     * 正则表达式：验证URL</div><div style=\"text-align: left;\">     */</div><div style=\"text-align: left;\">    public static final String REGEX_URL = \"http(s)?://([\\\\w-]+\\\\.)+[\\\\w-]+(/[\\\\w- ./?%&amp;=]*)?\";</div><div style=\"text-align: left;\"> </div><div style=\"text-align: left;\">    /**</div><div style=\"text-align: left;\">     * 正则表达式：验证IP地址</div><div style=\"text-align: left;\">     */</div><div style=\"text-align: left;\">    public static final String REGEX_IP_ADDR = \"(25[0-5]|2[0-4]\\\\d|[0-1]\\\\d{2}|[1-9]?\\\\d)\";</div><div style=\"text-align: left;\"> </div><div style=\"text-align: left;\">    /**</div><div style=\"text-align: left;\">     * 校验用户名</div><div style=\"text-align: left;\">     * </div><div style=\"text-align: left;\">     * @param username</div><div style=\"text-align: left;\">     * @return 校验通过返回true，否则返回false</div><div style=\"text-align: left;\">     */</div><div style=\"text-align: left;\">    public static boolean isUsername(String username) {</div><div style=\"text-align: left;\">        return Pattern.matches(REGEX_USERNAME, username);</div><div style=\"text-align: left;\">    }</div><div style=\"text-align: left;\"> </div><div style=\"text-align: left;\">    /**</div><div style=\"text-align: left;\">     * 校验密码</div><div style=\"text-align: left;\">     * </div><div style=\"text-align: left;\">     * @param password</div><div style=\"text-align: left;\">     * @return 校验通过返回true，否则返回false</div><div style=\"text-align: left;\">     */</div><div style=\"text-align: left;\">    public static boolean isPassword(String password) {</div><div style=\"text-align: left;\">        return Pattern.matches(REGEX_PASSWORD, password);</div><div style=\"text-align: left;\">    }</div><div style=\"text-align: left;\"> </div><div style=\"text-align: left;\">    /**</div><div style=\"text-align: left;\">     * 校验手机号</div><div style=\"text-align: left;\">     * </div><div style=\"text-align: left;\">     * @param mobile</div><div style=\"text-align: left;\">     * @return 校验通过返回true，否则返回false</div><div style=\"text-align: left;\">     */</div><div style=\"text-align: left;\">    public static boolean isMobile(String mobile) {</div><div style=\"text-align: left;\">        return Pattern.matches(REGEX_MOBILE, mobile);</div><div style=\"text-align: left;\">    }</div><div style=\"text-align: left;\"> </div><div style=\"text-align: left;\">    /**</div><div style=\"text-align: left;\">     * 校验邮箱</div><div style=\"text-align: left;\">     * </div><div style=\"text-align: left;\">     * @param email</div><div style=\"text-align: left;\">     * @return 校验通过返回true，否则返回false</div><div style=\"text-align: left;\">     */</div><div style=\"text-align: left;\">    public static boolean isEmail(String email) {</div><div style=\"text-align: left;\">        return Pattern.matches(REGEX_EMAIL, email);</div><div style=\"text-align: left;\">    }</div><div style=\"text-align: left;\"> </div><div style=\"text-align: left;\">    /**</div><div style=\"text-align: left;\">     * 校验汉字</div><div style=\"text-align: left;\">     * </div><div style=\"text-align: left;\">     * @param chinese</div><div style=\"text-align: left;\">     * @return 校验通过返回true，否则返回false</div><div style=\"text-align: left;\">     */</div><div style=\"text-align: left;\">    public static boolean isChinese(String chinese) {</div><div style=\"text-align: left;\">        return Pattern.matches(REGEX_CHINESE, chinese);</div><div style=\"text-align: left;\">    }</div><div style=\"text-align: left;\"> </div><div style=\"text-align: left;\">    /**</div><div style=\"text-align: left;\">     * 校验身份证</div><div style=\"text-align: left;\">     * </div><div style=\"text-align: left;\">     * @param idCard</div><div style=\"text-align: left;\">     * @return 校验通过返回true，否则返回false</div><div style=\"text-align: left;\">     */</div><div style=\"text-align: left;\">    public static boolean isIDCard(String idCard) {</div><div style=\"text-align: left;\">        return Pattern.matches(REGEX_ID_CARD, idCard);</div><div style=\"text-align: left;\">    }</div><div style=\"text-align: left;\"> </div><div style=\"text-align: left;\">    /**</div><div style=\"text-align: left;\">     * 校验URL</div><div style=\"text-align: left;\">     * </div><div style=\"text-align: left;\">     * @param url</div><div style=\"text-align: left;\">     * @return 校验通过返回true，否则返回false</div><div style=\"text-align: left;\">     */</div><div style=\"text-align: left;\">    public static boolean isUrl(String url) {</div><div style=\"text-align: left;\">        return Pattern.matches(REGEX_URL, url);</div><div style=\"text-align: left;\">    }</div><div style=\"text-align: left;\"> </div><div style=\"text-align: left;\">    /**</div><div style=\"text-align: left;\">     * 校验IP地址</div><div style=\"text-align: left;\">     * </div><div style=\"text-align: left;\">     * @param ipAddr</div><div style=\"text-align: left;\">     * @return</div><div style=\"text-align: left;\">     */</div><div style=\"text-align: left;\">    public static boolean isIPAddr(String ipAddr) {</div><div style=\"text-align: left;\">        return Pattern.matches(REGEX_IP_ADDR, ipAddr);</div><div style=\"text-align: left;\">    }</div><div style=\"text-align: left;\">}</div></div>', null, '2019-07-22 16:54:41', 'b06246b4-7d23-4af5-8fed-3e5d00058593', 'java正则表达式常见应用package com.modules.plateform.tool;import java.util.regex.Pattern;/** * 账户相关属性验证工具 * */public class AccountValidatorUtil {    /**     * 正');

-- ----------------------------
-- Table structure for `aircle_group`
-- ----------------------------
DROP TABLE IF EXISTS `aircle_group`;
CREATE TABLE `aircle_group` (
  `Fid` varchar(44) NOT NULL,
  `group_name` varchar(255) NOT NULL DEFAULT '',
  `remark` varchar(255) DEFAULT '',
  `group_icon` varchar(100) DEFAULT '',
  `register_time` datetime DEFAULT NULL,
  PRIMARY KEY (`Fid`),
  UNIQUE KEY `group_name` (`group_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aircle_group
-- ----------------------------
INSERT INTO `aircle_group` VALUES ('b06246b4-7d23-4af5-8fed-3e5d00058593', 'Java技术基础', '一些关于java的介绍', 'java', '2019-07-22 16:29:33');
INSERT INTO `aircle_group` VALUES ('1f3da0c0-847b-4b2b-ad37-aaa0fcfc00f6', '科学', 'as', '阿萨德', '2019-06-19 18:35:07');
INSERT INTO `aircle_group` VALUES ('e83749a5-8469-4142-98ca-876341715c2a', '', '', '', '2019-07-22 18:36:01');
INSERT INTO `aircle_group` VALUES ('0ee34bcf-dcc6-4a8f-9e89-8d614f08883a', '个人兴趣', '这是好的', '兴趣', '2019-07-22 16:15:37');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` varchar(44) NOT NULL,
  `user_name` varchar(255) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_email` varchar(100) DEFAULT '',
  `user_register_time` datetime DEFAULT NULL,
  `user_last_login_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('b5ba9d25-c9f6-4b9b-a48f-5eb5e9db37ef', '1231', '123', '1231', null, '2019-06-11 13:37:28');
INSERT INTO `user` VALUES ('e4a29db0-ecd7-4260-8c72-cbdc7155c11a', '赖金川', '40002', '1213@qw.com', null, '2019-06-11 13:40:47');
INSERT INTO `user` VALUES ('a0596cb0-71b3-417b-98ad-c1cf0f82a445', '这还', '2313', 'safad', null, '2019-06-11 13:42:03');
