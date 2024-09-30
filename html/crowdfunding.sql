SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `CATEGORY_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类别标识',
  `NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'medical');
INSERT INTO `category` VALUES ('2', 'education');
INSERT INTO `category` VALUES ('3', 'social impact');
INSERT INTO `category` VALUES ('4', 'crisis relief');

-- ----------------------------
-- Table structure for fundraiser
-- ----------------------------
DROP TABLE IF EXISTS `fundraiser`;
CREATE TABLE `fundraiser`  (
  `FUNDRAISER_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '募捐者 ID (PK)',
  `ORGANIZER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组织者',
  `CAPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `TARGET_FUNDING` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '目标资金',
  `CURRENT_FUNDING` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '当前资金',
  `CITY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '城市',
  `ACTIVE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活跃状态',
  `CATEGORY_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类别'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fundraiser
-- ----------------------------
INSERT INTO `fundraiser` VALUES ('Hongwei Yin', 'Yuezhong Liang', 'Guangxi University of Science and Technology Fundraising Association', '50000000', '24000000', 'Liuzhou', 'Active', '1');
INSERT INTO `fundraiser` VALUES ('Liuzhou Civil Affairs Bureau', 'Yongmei Chen ', 'Sliding Star Dream', '60000000', '47000000', 'Liuzhou', 'Not active', '2');
INSERT INTO `fundraiser` VALUES ('Yizhou Ding', 'China \"Chinese Charity Day\"', 'Join hands in charity and create a better life together', '95200000', '61000000', 'Liuzhou', 'Active', '1');
INSERT INTO `fundraiser` VALUES ('Tencent Charity', 'Twenty social organizations in Liuzhou City', 'Doing good things together doubles love', '60000000', '54000000', 'Liuzhou', 'Active', '1');
INSERT INTO `fundraiser` VALUES ('Qiaoqiao Dou ', 'Chenzhou Charity Federation', 'Flood prevention and drought resistance in Chenzhou City', '70000000', '32000000', 'Chenzhou', 'Not active', '2');

SET FOREIGN_KEY_CHECKS = 1;
