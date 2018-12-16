/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50642
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 50642
 File Encoding         : 65001

 Date: 16/12/2018 16:17:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` bigint(40) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文章标题',
  `summary` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文章简介，默认100个汉字以内',
  `is_top` tinyint(1) NOT NULL DEFAULT 0 COMMENT '文章是否置顶，0为否，1为是',
  `traffic` int(10) NOT NULL DEFAULT 0 COMMENT '文章访问量',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modify_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, '夜来幽梦', '夜来幽梦', 1, 40, '2018-11-20 13:45:27', '2018-12-16 12:57:09');
INSERT INTO `article` VALUES (2, '等你一朵微笑', '等你一朵微笑', 0, 4, '2018-11-20 14:08:33', '2018-12-16 12:01:16');
INSERT INTO `article` VALUES (3, '夜来幽梦忽还乡', '夜来幽梦忽还乡', 0, 3, '2018-11-20 14:10:20', '2018-11-20 14:10:20');
INSERT INTO `article` VALUES (8, 'markdow 测试', '', 1, 42, '2018-11-25 14:50:05', '2018-12-16 15:46:53');
INSERT INTO `article` VALUES (14, 'markdow 测试', '', 0, 4, '2018-11-27 10:47:13', '2018-12-16 12:14:28');

-- ----------------------------
-- Table structure for article_category_rel
-- ----------------------------
DROP TABLE IF EXISTS `article_category_rel`;
CREATE TABLE `article_category_rel`  (
  `id` bigint(40) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(40) NOT NULL COMMENT '分类id',
  `article_id` bigint(40) NOT NULL COMMENT '文章id',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modify_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of article_category_rel
-- ----------------------------
INSERT INTO `article_category_rel` VALUES (1, 2, 1, '2018-11-20 13:45:27', '2018-11-20 13:45:27');
INSERT INTO `article_category_rel` VALUES (2, 2, 2, '2018-11-20 14:08:33', '2018-11-20 14:08:33');
INSERT INTO `article_category_rel` VALUES (3, 1, 3, '2018-11-20 14:10:20', '2018-11-20 14:10:20');
INSERT INTO `article_category_rel` VALUES (8, 1, 8, '2018-11-25 14:50:05', '2018-11-25 14:50:05');
INSERT INTO `article_category_rel` VALUES (14, 1, 14, '2018-11-27 10:47:13', '2018-11-27 10:47:13');

-- ----------------------------
-- Table structure for article_comment_rel
-- ----------------------------
DROP TABLE IF EXISTS `article_comment_rel`;
CREATE TABLE `article_comment_rel`  (
  `id` bigint(40) NOT NULL AUTO_INCREMENT,
  `article_id` bigint(40) NOT NULL COMMENT '文章ID',
  `comment_id` bigint(40) NOT NULL COMMENT '对应的留言ID',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `is_effective` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效，默认为1有效，置0无效',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of article_comment_rel
-- ----------------------------
INSERT INTO `article_comment_rel` VALUES (1, 1, 1, '2018-11-20 13:46:04', 1);
INSERT INTO `article_comment_rel` VALUES (2, 1, 2, '2018-11-20 14:07:07', 1);
INSERT INTO `article_comment_rel` VALUES (3, 1, 3, '2018-11-20 14:17:12', 1);
INSERT INTO `article_comment_rel` VALUES (4, 1, 4, '2018-12-15 19:49:24', 0);

-- ----------------------------
-- Table structure for article_content
-- ----------------------------
DROP TABLE IF EXISTS `article_content`;
CREATE TABLE `article_content`  (
  `id` bigint(40) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `article_id` bigint(40) NOT NULL COMMENT '对应文章ID',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modify_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of article_content
-- ----------------------------
INSERT INTO `article_content` VALUES (1, '这个梦，来的很突兀。\n\n突然，你出现在了我的梦里，背对我走着，脚步有点浮夸，紧跟在后面的是你父母。你就这样不紧不慢的走着，你后面的父母就一直在数落你，说你怎么就选择了千军万马过独木桥的公务员呢？你选点其他的不好么？\n\n我就静静的躺在边上，看着这一切，仿佛是我隐身了，是你的梦中游人一般。\n\n你的脚步步伐有点浮夸，我把它称之为拖，感觉有什么沉重的东西在你后面拖着你一样让你走的有点费劲，但你感觉没在乎这东西拖着你一样。你静静的远去了，远去了，你母亲的叨唠声也静静远去了。终于，你消失在我的视线里，却从没回头叫我一眼，好像我真是隐身一样。\n\n那瞬间，我感觉想哭却哭不出来。突然，你闺蜜在前面看见我了，并向我走来。我知道，他们知道我心情不好，想来安慰我，可此刻的我，却不想掉下泪来，我感觉此刻的我就像盐碱地一般，干涩，寂静。', 1, '2018-11-20 13:45:27', '2018-11-20 13:45:27');
INSERT INTO `article_content` VALUES (2, '那些人那些事渐渐在过去的时间里变了样，是谁把曾经的亲密变成如今的模样？忧伤，因为彼此最难丈量的距离。\n\n  看一朵菊花在水中翻滚，也许只有滚烫的温度才能催开一朵花的影像。看一朵花渐渐在水中醒转，绽放成那年那月的春风，我想起属于我们的纸鸢、在石头缝中挣扎的小蟹，还有荆棘丛中的红果，那些曾经的小伙伴，我们把一朵花开回忆成了怎样的时光？我还是那么怀念共有的年轻，她的歌，他的小诗，伊的任性我的沉默，还有你的六弦，如今的我，是你们眼中怎样的漠然？\n\n    些许往事跌碎在冷冷的风。你的泪，我的泪，她的泪，共同的殇，从此青春成记忆，我们拥抱在子夜的街角。从没有想过居然贫瘠到用这样的方式取暖。烛光在跳跃，苦涩在荡漾，你的声音祭奠在那年的回忆；我只能做一个忠实的听客，沙发支持起疲倦的身体，听一段爱情绚丽如彩虹，又转瞬成魔，不知我们何时擦了看不见的神灯，就这样被张狂。看你哭着笑，我不知道那些故事应该如何安放，这个红尘从来没有谁对谁错，一个人的故事，只有自己继续演戏，哪怕演到渐渐失忆！\n\n   看一段曾经被祝福无数的情缘，终究失去最初的模样。我终于明白从来都是因为爱情的他，而不是因为他的爱情。然，即使天地远遁，倔强如我依旧相信，那种叫爱情的传说，她一直在彼岸花开，人来人往，她一直在，哪怕只在对岸嫣然。你是否愿意和我一起任性？\n\n  徘徊在那些日子的门外，你一直失去轻叩的勇气；丢失了那日的爱情，丢失了那年的天空之城。在一起，一如当年站在你身边，陪你笑，陪你哭，我信这只是人生里需要经历的难。我固执地望见重生与轮回。失去是最近的距离，我相信一段往事去了会再来，我相信那日的承诺本是真实的模样。期待一种轮回，在轮回中再遇见最初的人，即使已经不是最初的容颜，甚至最初的符号。传说在涅槃，愿意等待在这一刻，就算风干成那么薄薄的一片，也要在这一片里永生……干一杯昨日的事，放纵在今日的泪；爱情，应该是这样的愿意等待！生活，应该是这样的愿意相信！\n\n    可不可以重头再来？依旧是昨日年轻的伙伴，站在今日时光的站台，等你一朵微笑，等你轮回中的花开……', 2, '2018-11-20 14:08:33', '2018-11-20 14:08:33');
INSERT INTO `article_content` VALUES (3, '很多大学生可能都会问：“我考了那么多试，难道就是为了离开家？”，考上大学的我们，与父母分别了，这是成长必须经历的过程。\n\n总有一天，我们会离开父母的怀抱，独自一人去面对外面的世界，可是，我不想这一天来的这么早。\n\n初到大学，面对新鲜事物，总想着去参与，忙的不可开交。人们都说高中忙的心安理得，大学忙的莫名其妙，这一点我感觉到了。\n\n每天我都会问自己：“这么忙是为了什么？我的目的是什么？我想要什么？”，常常在一个人寂寞孤独的时候，想家，想我爸妈。\n\n我知道，无论外面的风雨有多么大，我也要风雨无阻的赶回家，因为家是世界上最温馨的地方。\n\n我这里是一座繁华城市的市中心，虽然这个城市很热闹，但我更爱我的家。\n\n到晚上时，这里亮起万家灯火，可是，却没有一盏属于我。\n\n三毛说过，家就是一个人，点着一盏灯，等你。我明白，这一盏灯，一定属于我。\n\n上大学前想着自由，上大学后想着父母。我多想现在就能回到爸妈身旁，一家人坐在一起，吃一顿家里的饭菜，想把自己遇到的事都能当面的向爸妈诉说。\n\n可是我在这个不是家的地方，举步皆是流浪。所有以前认为是十分平常的小事，如今都变得多么的可遇不可求。\n\n可是，我们做为孩子，总得离开父母的怀抱，自己独自去闯出一片天地。\n\n但当我们受伤的时候，当我们孤独无助的时候，别忘了，我们还有家。\n\n家会轻轻抚平我们的创伤，家会默默温暖我们的心灵，在外漂泊，才会发现，唯有家才是我们可以停靠的码头。\n\n我们的父母静静地在家守候，等待着那一扇门开，等待着那一人归来。当我们回到家的那一瞬间， 整个家都亮了。\n\n异乡的天空，我是断线的风筝；异乡的人群，我是孤独的背影。\n\n我好想回家看看那久别的笑脸，听听那喋喋不休的唠叨，感受那熟悉的一切。\n\n家，就是一个人，点着一盏灯，在等你。而那份等待包含了所有对你的爱。\n\n好久没回家，不是不想家。夜来幽梦忽还乡，我思念的家，一切都还好吗？', 3, '2018-11-20 14:10:20', '2018-11-20 14:10:20');
INSERT INTO `article_content` VALUES (8, '### git的安装\n安装依赖\n\n```\nyum -y install zlib-devel openssl-devel cpio expat-devel gettext-devel curl-devel perl-ExtUtils-CBuilder perl-ExtUtils- MakeMaker\n```\n\n\n### git基础配置\n##### 1.配置用户名（提交时候会引用）\n```\ngit config --global user.name \"minger\"\n```\n##### 2.配置邮箱\n```\ngit config --global user.email \"lymlzjtu@163.com\"\n```\n##### 3.编码配置\n```\n让git不要管win和linux换行符转换的额事情\ngit config --global core.autocrlf false\n避免中文乱码\ngit config --global gui.encoding utf-8\n避免git status 显示的中文文件乱码\ngit config --global core.quotepath off\n如果是window系统，还需要配置\ngit config --global core.ignorecase false\n```\n##### 4.git ssh key配置\n```\nssh-keygen -t rsa -C \"lymlzjtu@163.com\"\n一路回车即可!\n```\n##### 5.若下面出错\n\n```\n[minger@iZ2ze7s23bov6rczk6ch0zZ git-2.8.0]$ ssh-add ~/.ssh/id_rsa\nCould not open a connection to your authentication agent.\n[minger@iZ2ze7s23bov6rczk6ch0zZ git-2.8.0]$ eval `ssh-agent`\nAgent pid 14756\n```', 8, '2018-11-25 14:50:05', '2018-11-25 14:50:05');
INSERT INTO `article_content` VALUES (14, '### git的安装\n安装依赖\n\n```\nyum -y install zlib-devel openssl-devel cpio expat-devel gettext-devel curl-devel perl-ExtUtils-CBuilder perl-ExtUtils- MakeMaker\n```\n\n\n### git基础配置\n##### 1.配置用户名（提交时候会引用）\n```\ngit config --global user.name \"minger\"\n```\n##### 2.配置邮箱\n```\ngit config --global user.email \"lymlzjtu@163.com\"\n```\n##### 3.编码配置\n```\n让git不要管win和linux换行符转换的额事情\ngit config --global core.autocrlf false\n避免中文乱码\ngit config --global gui.encoding utf-8\n避免git status 显示的中文文件乱码\ngit config --global core.quotepath off\n如果是window系统，还需要配置\ngit config --global core.ignorecase false\n```\n##### 4.git ssh key配置\n```\nssh-keygen -t rsa -C \"lymlzjtu@163.com\"\n一路回车即可!\n```\n##### 5.若下面出错\n\n```\n[minger@iZ2ze7s23bov6rczk6ch0zZ git-2.8.0]$ ssh-add ~/.ssh/id_rsa\nCould not open a connection to your authentication agent.\n[minger@iZ2ze7s23bov6rczk6ch0zZ git-2.8.0]$ eval `ssh-agent`\nAgent pid 14756\n```', 14, '2018-11-27 10:47:13', '2018-12-16 12:14:16');
INSERT INTO `article_content` VALUES (15, 'ce', 15, '2018-12-15 19:55:45', '2018-12-15 19:55:45');
INSERT INTO `article_content` VALUES (16, 'ce', 16, '2018-12-15 19:56:05', '2018-12-15 19:56:05');
INSERT INTO `article_content` VALUES (17, 'ce', 17, '2018-12-15 19:56:15', '2018-12-15 19:56:15');
INSERT INTO `article_content` VALUES (18, 'ce', 18, '2018-12-15 19:56:25', '2018-12-15 19:56:25');
INSERT INTO `article_content` VALUES (19, 'ce', 19, '2018-12-15 19:56:33', '2018-12-15 19:56:33');
INSERT INTO `article_content` VALUES (20, 'ce', 20, '2018-12-15 19:56:50', '2018-12-15 19:56:50');

-- ----------------------------
-- Table structure for article_picture
-- ----------------------------
DROP TABLE IF EXISTS `article_picture`;
CREATE TABLE `article_picture`  (
  `id` bigint(40) NOT NULL AUTO_INCREMENT,
  `article_id` bigint(40) NOT NULL COMMENT '对应文章id',
  `picture_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片url',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modify_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '这张表用来保存题图url，每一篇文章都应该有题图' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of article_picture
-- ----------------------------
INSERT INTO `article_picture` VALUES (1, 1, 'https://upload-images.jianshu.io/upload_images/5397992-60357b5dd32da31d.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/550/format/webp', '2018-11-20 13:45:27', '2018-11-20 13:45:27');
INSERT INTO `article_picture` VALUES (2, 2, 'https://upload-images.jianshu.io/upload_images/4945504-1270129305971217.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/650/format/webp', '2018-11-20 14:08:33', '2018-11-20 14:08:33');
INSERT INTO `article_picture` VALUES (3, 3, 'https://upload-images.jianshu.io/upload_images/8877283-ae597da606d59f21.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1000/format/webp', '2018-11-20 14:10:20', '2018-11-20 14:10:20');
INSERT INTO `article_picture` VALUES (8, 8, 'https://upload-images.jianshu.io/upload_images/4080164-a77c989516fc12d6.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/480/format/webp', '2018-11-25 14:50:05', '2018-11-25 14:50:05');
INSERT INTO `article_picture` VALUES (14, 14, 'https://upload-images.jianshu.io/upload_images/4080164-a77c989516fc12d6.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/480/format/webp', '2018-11-27 10:47:13', '2018-11-27 10:47:13');
INSERT INTO `article_picture` VALUES (15, 15, 'ce', '2018-12-15 19:55:45', '2018-12-15 19:55:45');
INSERT INTO `article_picture` VALUES (16, 16, 'ce', '2018-12-15 19:56:05', '2018-12-15 19:56:05');
INSERT INTO `article_picture` VALUES (17, 17, 'ce', '2018-12-15 19:56:15', '2018-12-15 19:56:15');
INSERT INTO `article_picture` VALUES (18, 18, 'ce', '2018-12-15 19:56:25', '2018-12-15 19:56:25');
INSERT INTO `article_picture` VALUES (19, 19, 'ce', '2018-12-15 19:56:33', '2018-12-15 19:56:33');
INSERT INTO `article_picture` VALUES (20, 20, 'ce', '2018-12-15 19:56:50', '2018-12-15 19:56:50');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` bigint(40) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `number` tinyint(10) NOT NULL DEFAULT 0 COMMENT '该分类下的文章数量',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '分类创建时间',
  `modify_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '测试分类一', 3, '2018-11-20 13:44:49', '2018-12-16 15:14:58');
INSERT INTO `category` VALUES (2, '测试分类二', 2, '2018-11-20 13:45:00', '2018-11-27 10:45:47');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` bigint(40) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '留言/评论内容',
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '邮箱，用于回复消息',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户自己定义的名称',
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '留言/评论IP',
  `is_effective` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效，默认为1为有效，0为无效',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '因为message分为两种，一种是留言，一种是评论，这里搞成一张表是因为它们几乎是拥有相同的字段，我觉得没必要分成两张表来进行维护' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 'ceshi', 'fajlskdjf@flasfj.com', 'ceshi', '0:0:0:0:0:0:0:1', 1, '2018-11-20 13:46:04');
INSERT INTO `comment` VALUES (2, '景色很好', '734263927@qq.com', '景色很好', '0:0:0:0:0:0:0:1', 1, '2018-11-20 14:07:07');
INSERT INTO `comment` VALUES (3, 'cehsi', 'cehsi', 'ceshi', '0:0:0:0:0:0:0:1', 1, '2018-11-20 14:17:12');
INSERT INTO `comment` VALUES (4, '2143', '214', '2124', '0:0:0:0:0:0:0:1', 0, '2018-12-15 19:49:24');
INSERT INTO `comment` VALUES (5, 'fad', 'daf', 'adsf', '0:0:0:0:0:0:0:1', 1, '2018-12-15 19:49:48');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` bigint(40) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作地址的IP',
  `create_by` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '操作时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '操作内容',
  `operate_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作的访问地址',
  `operate_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2673 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_view
-- ----------------------------
DROP TABLE IF EXISTS `sys_view`;
CREATE TABLE `sys_view`  (
  `id` bigint(40) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '访问IP',
  `create_by` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '访问时间',
  `create_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2736 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
