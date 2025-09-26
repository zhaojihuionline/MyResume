/*
 Navicat Premium Data Transfer

 Source Server         : resume
 Source Server Type    : PostgreSQL
 Source Server Version : 140019
 Source Host           : localhost:15432
 Source Catalog        : resume
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 140019
 File Encoding         : 65001

 Date: 26/09/2025 15:01:31
*/


-- ----------------------------
-- Sequence structure for casbin_rule_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."casbin_rule_id_seq";
CREATE SEQUENCE "public"."casbin_rule_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for exa_attachment_category_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."exa_attachment_category_id_seq";
CREATE SEQUENCE "public"."exa_attachment_category_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for exa_customers_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."exa_customers_id_seq";
CREATE SEQUENCE "public"."exa_customers_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for exa_file_chunks_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."exa_file_chunks_id_seq";
CREATE SEQUENCE "public"."exa_file_chunks_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for exa_file_upload_and_downloads_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."exa_file_upload_and_downloads_id_seq";
CREATE SEQUENCE "public"."exa_file_upload_and_downloads_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for exa_files_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."exa_files_id_seq";
CREATE SEQUENCE "public"."exa_files_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gva_announcements_info_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gva_announcements_info_id_seq";
CREATE SEQUENCE "public"."gva_announcements_info_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for jwt_blacklists_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."jwt_blacklists_id_seq";
CREATE SEQUENCE "public"."jwt_blacklists_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for resume_basic_info_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."resume_basic_info_id_seq";
CREATE SEQUENCE "public"."resume_basic_info_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for resume_education_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."resume_education_id_seq";
CREATE SEQUENCE "public"."resume_education_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for resume_project_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."resume_project_id_seq";
CREATE SEQUENCE "public"."resume_project_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for resume_work_experience_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."resume_work_experience_id_seq";
CREATE SEQUENCE "public"."resume_work_experience_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_apis_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_apis_id_seq";
CREATE SEQUENCE "public"."sys_apis_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_authorities_authority_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_authorities_authority_id_seq";
CREATE SEQUENCE "public"."sys_authorities_authority_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_auto_code_histories_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_auto_code_histories_id_seq";
CREATE SEQUENCE "public"."sys_auto_code_histories_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_auto_code_packages_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_auto_code_packages_id_seq";
CREATE SEQUENCE "public"."sys_auto_code_packages_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_base_menu_btns_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_base_menu_btns_id_seq";
CREATE SEQUENCE "public"."sys_base_menu_btns_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_base_menu_parameters_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_base_menu_parameters_id_seq";
CREATE SEQUENCE "public"."sys_base_menu_parameters_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_base_menus_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_base_menus_id_seq";
CREATE SEQUENCE "public"."sys_base_menus_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_dictionaries_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_dictionaries_id_seq";
CREATE SEQUENCE "public"."sys_dictionaries_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_dictionary_details_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_dictionary_details_id_seq";
CREATE SEQUENCE "public"."sys_dictionary_details_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_export_template_condition_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_export_template_condition_id_seq";
CREATE SEQUENCE "public"."sys_export_template_condition_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_export_template_join_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_export_template_join_id_seq";
CREATE SEQUENCE "public"."sys_export_template_join_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_export_templates_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_export_templates_id_seq";
CREATE SEQUENCE "public"."sys_export_templates_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_ignore_apis_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_ignore_apis_id_seq";
CREATE SEQUENCE "public"."sys_ignore_apis_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_operation_records_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_operation_records_id_seq";
CREATE SEQUENCE "public"."sys_operation_records_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_params_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_params_id_seq";
CREATE SEQUENCE "public"."sys_params_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_users_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_users_id_seq";
CREATE SEQUENCE "public"."sys_users_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_versions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_versions_id_seq";
CREATE SEQUENCE "public"."sys_versions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for casbin_rule
-- ----------------------------
DROP TABLE IF EXISTS "public"."casbin_rule";
CREATE TABLE "public"."casbin_rule" (
  "id" int8 NOT NULL DEFAULT nextval('casbin_rule_id_seq'::regclass),
  "ptype" varchar(100) COLLATE "pg_catalog"."default",
  "v0" varchar(100) COLLATE "pg_catalog"."default",
  "v1" varchar(100) COLLATE "pg_catalog"."default",
  "v2" varchar(100) COLLATE "pg_catalog"."default",
  "v3" varchar(100) COLLATE "pg_catalog"."default",
  "v4" varchar(100) COLLATE "pg_catalog"."default",
  "v5" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of casbin_rule
-- ----------------------------
INSERT INTO "public"."casbin_rule" VALUES (368, 'p', '888', '/项目经验/getResumeProjectList', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (369, 'p', '888', '/项目经验/findResumeProject', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (370, 'p', '888', '/项目经验/updateResumeProject', 'PUT', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (371, 'p', '888', '/项目经验/deleteResumeProjectByIds', 'DELETE', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (372, 'p', '888', '/项目经验/deleteResumeProject', 'DELETE', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (373, 'p', '888', '/项目经验/createResumeProject', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (374, 'p', '888', '/教育背景/getResumeEducationList', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (375, 'p', '888', '/教育背景/findResumeEducation', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (376, 'p', '888', '/教育背景/updateResumeEducation', 'PUT', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (377, 'p', '888', '/教育背景/deleteResumeEducationByIds', 'DELETE', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (378, 'p', '888', '/教育背景/deleteResumeEducation', 'DELETE', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (379, 'p', '888', '/教育背景/createResumeEducation', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (380, 'p', '888', '/工作经历/getResumeWorkExperienceList', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (381, 'p', '888', '/工作经历/findResumeWorkExperience', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (382, 'p', '888', '/工作经历/updateResumeWorkExperience', 'PUT', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (383, 'p', '888', '/工作经历/deleteResumeWorkExperienceByIds', 'DELETE', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (384, 'p', '888', '/工作经历/deleteResumeWorkExperience', 'DELETE', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (385, 'p', '888', '/工作经历/createResumeWorkExperience', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (386, 'p', '888', '/基本信息/getResumeBasicInfoList', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (387, 'p', '888', '/基本信息/findResumeBasicInfo', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (388, 'p', '888', '/基本信息/updateResumeBasicInfo', 'PUT', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (389, 'p', '888', '/基本信息/deleteResumeBasicInfoByIds', 'DELETE', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (390, 'p', '888', '/基本信息/deleteResumeBasicInfo', 'DELETE', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (391, 'p', '888', '/基本信息/createResumeBasicInfo', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (392, 'p', '888', '/sysVersion/deleteSysVersionByIds', 'DELETE', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (393, 'p', '888', '/sysVersion/deleteSysVersion', 'DELETE', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (394, 'p', '888', '/sysVersion/importVersion', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (395, 'p', '888', '/sysVersion/exportVersion', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (396, 'p', '888', '/sysVersion/downloadVersionJson', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (397, 'p', '888', '/sysVersion/getSysVersionList', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (134, 'p', '8881', '/user/admin_register', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (135, 'p', '8881', '/api/createApi', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (136, 'p', '8881', '/api/getApiList', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (137, 'p', '8881', '/api/getApiById', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (138, 'p', '8881', '/api/deleteApi', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (139, 'p', '8881', '/api/updateApi', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (140, 'p', '8881', '/api/getAllApis', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (141, 'p', '8881', '/authority/createAuthority', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (142, 'p', '8881', '/authority/deleteAuthority', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (143, 'p', '8881', '/authority/getAuthorityList', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (144, 'p', '8881', '/authority/setDataAuthority', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (145, 'p', '8881', '/menu/getMenu', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (146, 'p', '8881', '/menu/getMenuList', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (147, 'p', '8881', '/menu/addBaseMenu', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (148, 'p', '8881', '/menu/getBaseMenuTree', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (149, 'p', '8881', '/menu/addMenuAuthority', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (150, 'p', '8881', '/menu/getMenuAuthority', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (151, 'p', '8881', '/menu/deleteBaseMenu', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (152, 'p', '8881', '/menu/updateBaseMenu', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (153, 'p', '8881', '/menu/getBaseMenuById', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (154, 'p', '8881', '/user/changePassword', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (155, 'p', '8881', '/user/getUserList', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (156, 'p', '8881', '/user/setUserAuthority', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (157, 'p', '8881', '/fileUploadAndDownload/upload', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (158, 'p', '8881', '/fileUploadAndDownload/getFileList', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (159, 'p', '8881', '/fileUploadAndDownload/deleteFile', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (160, 'p', '8881', '/fileUploadAndDownload/editFileName', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (161, 'p', '8881', '/fileUploadAndDownload/importURL', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (162, 'p', '8881', '/casbin/updateCasbin', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (163, 'p', '8881', '/casbin/getPolicyPathByAuthorityId', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (164, 'p', '8881', '/jwt/jsonInBlacklist', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (165, 'p', '8881', '/system/getSystemConfig', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (166, 'p', '8881', '/system/setSystemConfig', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (167, 'p', '8881', '/customer/customer', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (168, 'p', '8881', '/customer/customer', 'PUT', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (169, 'p', '8881', '/customer/customer', 'DELETE', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (170, 'p', '8881', '/customer/customer', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (171, 'p', '8881', '/customer/customerList', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (172, 'p', '8881', '/user/getUserInfo', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (173, 'p', '9528', '/user/admin_register', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (174, 'p', '9528', '/api/createApi', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (175, 'p', '9528', '/api/getApiList', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (176, 'p', '9528', '/api/getApiById', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (177, 'p', '9528', '/api/deleteApi', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (178, 'p', '9528', '/api/updateApi', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (179, 'p', '9528', '/api/getAllApis', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (180, 'p', '9528', '/authority/createAuthority', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (181, 'p', '9528', '/authority/deleteAuthority', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (182, 'p', '9528', '/authority/getAuthorityList', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (183, 'p', '9528', '/authority/setDataAuthority', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (184, 'p', '9528', '/menu/getMenu', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (185, 'p', '9528', '/menu/getMenuList', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (186, 'p', '9528', '/menu/addBaseMenu', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (187, 'p', '9528', '/menu/getBaseMenuTree', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (188, 'p', '9528', '/menu/addMenuAuthority', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (189, 'p', '9528', '/menu/getMenuAuthority', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (190, 'p', '9528', '/menu/deleteBaseMenu', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (191, 'p', '9528', '/menu/updateBaseMenu', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (192, 'p', '9528', '/menu/getBaseMenuById', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (193, 'p', '9528', '/user/changePassword', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (194, 'p', '9528', '/user/getUserList', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (195, 'p', '9528', '/user/setUserAuthority', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (196, 'p', '9528', '/fileUploadAndDownload/upload', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (197, 'p', '9528', '/fileUploadAndDownload/getFileList', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (198, 'p', '9528', '/fileUploadAndDownload/deleteFile', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (199, 'p', '9528', '/fileUploadAndDownload/editFileName', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (200, 'p', '9528', '/fileUploadAndDownload/importURL', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (201, 'p', '9528', '/casbin/updateCasbin', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (202, 'p', '9528', '/casbin/getPolicyPathByAuthorityId', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (203, 'p', '9528', '/jwt/jsonInBlacklist', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (204, 'p', '9528', '/system/getSystemConfig', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (205, 'p', '9528', '/system/setSystemConfig', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (206, 'p', '9528', '/customer/customer', 'PUT', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (207, 'p', '9528', '/customer/customer', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (208, 'p', '9528', '/customer/customer', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (209, 'p', '9528', '/customer/customer', 'DELETE', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (210, 'p', '9528', '/customer/customerList', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (211, 'p', '9528', '/autoCode/createTemp', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (212, 'p', '9528', '/user/getUserInfo', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (398, 'p', '888', '/sysVersion/findSysVersion', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (399, 'p', '888', '/attachmentCategory/deleteCategory', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (400, 'p', '888', '/attachmentCategory/addCategory', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (401, 'p', '888', '/attachmentCategory/getCategoryList', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (402, 'p', '888', '/sysParams/getSysParam', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (403, 'p', '888', '/sysParams/getSysParamsList', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (404, 'p', '888', '/sysParams/findSysParams', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (405, 'p', '888', '/sysParams/updateSysParams', 'PUT', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (406, 'p', '888', '/sysParams/deleteSysParamsByIds', 'DELETE', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (407, 'p', '888', '/sysParams/deleteSysParams', 'DELETE', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (408, 'p', '888', '/sysParams/createSysParams', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (409, 'p', '888', '/info/getInfoList', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (410, 'p', '888', '/info/findInfo', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (411, 'p', '888', '/info/updateInfo', 'PUT', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (412, 'p', '888', '/info/deleteInfoByIds', 'DELETE', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (413, 'p', '888', '/info/deleteInfo', 'DELETE', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (414, 'p', '888', '/info/createInfo', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (415, 'p', '888', '/sysExportTemplate/importExcel', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (416, 'p', '888', '/sysExportTemplate/exportTemplate', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (417, 'p', '888', '/sysExportTemplate/exportExcel', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (418, 'p', '888', '/sysExportTemplate/getSysExportTemplateList', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (419, 'p', '888', '/sysExportTemplate/findSysExportTemplate', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (420, 'p', '888', '/sysExportTemplate/updateSysExportTemplate', 'PUT', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (421, 'p', '888', '/sysExportTemplate/deleteSysExportTemplateByIds', 'DELETE', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (422, 'p', '888', '/sysExportTemplate/deleteSysExportTemplate', 'DELETE', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (423, 'p', '888', '/sysExportTemplate/createSysExportTemplate', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (424, 'p', '888', '/authorityBtn/canRemoveAuthorityBtn', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (425, 'p', '888', '/authorityBtn/getAuthorityBtn', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (426, 'p', '888', '/authorityBtn/setAuthorityBtn', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (427, 'p', '888', '/email/sendEmail', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (428, 'p', '888', '/email/emailTest', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (429, 'p', '888', '/simpleUploader/mergeFileMd5', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (430, 'p', '888', '/simpleUploader/checkFileMd5', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (431, 'p', '888', '/simpleUploader/upload', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (432, 'p', '888', '/sysOperationRecord/deleteSysOperationRecordByIds', 'DELETE', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (433, 'p', '888', '/sysOperationRecord/deleteSysOperationRecord', 'DELETE', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (434, 'p', '888', '/sysOperationRecord/getSysOperationRecordList', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (435, 'p', '888', '/sysOperationRecord/findSysOperationRecord', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (436, 'p', '888', '/sysOperationRecord/createSysOperationRecord', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (437, 'p', '888', '/sysDictionary/getSysDictionaryList', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (438, 'p', '888', '/sysDictionary/findSysDictionary', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (439, 'p', '888', '/sysDictionary/updateSysDictionary', 'PUT', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (440, 'p', '888', '/sysDictionary/deleteSysDictionary', 'DELETE', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (441, 'p', '888', '/sysDictionary/createSysDictionary', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (442, 'p', '888', '/sysDictionaryDetail/getSysDictionaryDetailList', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (443, 'p', '888', '/sysDictionaryDetail/findSysDictionaryDetail', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (444, 'p', '888', '/sysDictionaryDetail/deleteSysDictionaryDetail', 'DELETE', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (445, 'p', '888', '/sysDictionaryDetail/createSysDictionaryDetail', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (446, 'p', '888', '/sysDictionaryDetail/updateSysDictionaryDetail', 'PUT', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (447, 'p', '888', '/autoCode/addFunc', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (448, 'p', '888', '/autoCode/delSysHistory', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (449, 'p', '888', '/autoCode/getSysHistory', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (450, 'p', '888', '/autoCode/rollback', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (451, 'p', '888', '/autoCode/getMeta', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (452, 'p', '888', '/autoCode/delPackage', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (453, 'p', '888', '/autoCode/getPackage', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (454, 'p', '888', '/autoCode/getTemplates', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (455, 'p', '888', '/autoCode/createPackage', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (456, 'p', '888', '/autoCode/mcpList', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (457, 'p', '888', '/autoCode/mcpTest', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (458, 'p', '888', '/autoCode/mcp', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (459, 'p', '888', '/autoCode/pubPlug', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (460, 'p', '888', '/autoCode/installPlugin', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (461, 'p', '888', '/autoCode/getColumn', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (462, 'p', '888', '/autoCode/preview', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (463, 'p', '888', '/autoCode/createTemp', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (464, 'p', '888', '/autoCode/getTables', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (465, 'p', '888', '/autoCode/getDB', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (466, 'p', '888', '/customer/customerList', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (467, 'p', '888', '/customer/customer', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (468, 'p', '888', '/customer/customer', 'DELETE', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (469, 'p', '888', '/customer/customer', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (470, 'p', '888', '/customer/customer', 'PUT', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (471, 'p', '888', '/system/setSystemConfig', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (472, 'p', '888', '/system/getSystemConfig', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (473, 'p', '888', '/system/getServerInfo', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (474, 'p', '888', '/fileUploadAndDownload/importURL', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (475, 'p', '888', '/fileUploadAndDownload/getFileList', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (476, 'p', '888', '/fileUploadAndDownload/editFileName', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (477, 'p', '888', '/fileUploadAndDownload/deleteFile', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (478, 'p', '888', '/fileUploadAndDownload/upload', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (479, 'p', '888', '/fileUploadAndDownload/removeChunk', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (480, 'p', '888', '/fileUploadAndDownload/breakpointContinueFinish', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (481, 'p', '888', '/fileUploadAndDownload/breakpointContinue', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (482, 'p', '888', '/fileUploadAndDownload/findFile', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (483, 'p', '888', '/menu/addMenuAuthority', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (484, 'p', '888', '/menu/getMenuAuthority', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (485, 'p', '888', '/menu/getBaseMenuTree', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (486, 'p', '888', '/menu/getMenuList', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (487, 'p', '888', '/menu/getBaseMenuById', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (488, 'p', '888', '/menu/updateBaseMenu', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (489, 'p', '888', '/menu/deleteBaseMenu', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (490, 'p', '888', '/menu/getMenu', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (491, 'p', '888', '/menu/addBaseMenu', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (492, 'p', '888', '/casbin/getPolicyPathByAuthorityId', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (493, 'p', '888', '/casbin/updateCasbin', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (494, 'p', '888', '/authority/setDataAuthority', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (495, 'p', '888', '/authority/getAuthorityList', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (496, 'p', '888', '/authority/updateAuthority', 'PUT', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (497, 'p', '888', '/authority/deleteAuthority', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (498, 'p', '888', '/authority/createAuthority', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (499, 'p', '888', '/authority/copyAuthority', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (500, 'p', '888', '/api/ignoreApi', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (501, 'p', '888', '/api/enterSyncApi', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (502, 'p', '888', '/api/getApiGroups', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (503, 'p', '888', '/api/syncApi', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (504, 'p', '888', '/api/deleteApisByIds', 'DELETE', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (505, 'p', '888', '/api/getApiById', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (506, 'p', '888', '/api/getAllApis', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (507, 'p', '888', '/api/getApiList', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (508, 'p', '888', '/api/updateApi', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (509, 'p', '888', '/api/deleteApi', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (510, 'p', '888', '/api/createApi', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (511, 'p', '888', '/user/setSelfSetting', 'PUT', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (512, 'p', '888', '/user/resetPassword', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (513, 'p', '888', '/user/setUserAuthority', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (514, 'p', '888', '/user/changePassword', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (515, 'p', '888', '/user/setUserAuthorities', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (516, 'p', '888', '/user/getUserInfo', 'GET', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (517, 'p', '888', '/user/setSelfInfo', 'PUT', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (518, 'p', '888', '/user/setUserInfo', 'PUT', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (519, 'p', '888', '/user/getUserList', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (520, 'p', '888', '/user/admin_register', 'POST', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (521, 'p', '888', '/user/deleteUser', 'DELETE', '', '', '');
INSERT INTO "public"."casbin_rule" VALUES (522, 'p', '888', '/jwt/jsonInBlacklist', 'POST', '', '', '');

-- ----------------------------
-- Table structure for exa_attachment_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."exa_attachment_category";
CREATE TABLE "public"."exa_attachment_category" (
  "id" int8 NOT NULL DEFAULT nextval('exa_attachment_category_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "name" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "pid" int8 DEFAULT 0
)
;
COMMENT ON COLUMN "public"."exa_attachment_category"."name" IS '分类名称';
COMMENT ON COLUMN "public"."exa_attachment_category"."pid" IS '父节点ID';

-- ----------------------------
-- Records of exa_attachment_category
-- ----------------------------

-- ----------------------------
-- Table structure for exa_customers
-- ----------------------------
DROP TABLE IF EXISTS "public"."exa_customers";
CREATE TABLE "public"."exa_customers" (
  "id" int8 NOT NULL DEFAULT nextval('exa_customers_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "customer_name" text COLLATE "pg_catalog"."default",
  "customer_phone_data" text COLLATE "pg_catalog"."default",
  "sys_user_id" int8,
  "sys_user_authority_id" int8
)
;
COMMENT ON COLUMN "public"."exa_customers"."customer_name" IS '客户名';
COMMENT ON COLUMN "public"."exa_customers"."customer_phone_data" IS '客户手机号';
COMMENT ON COLUMN "public"."exa_customers"."sys_user_id" IS '管理ID';
COMMENT ON COLUMN "public"."exa_customers"."sys_user_authority_id" IS '管理角色ID';

-- ----------------------------
-- Records of exa_customers
-- ----------------------------

-- ----------------------------
-- Table structure for exa_file_chunks
-- ----------------------------
DROP TABLE IF EXISTS "public"."exa_file_chunks";
CREATE TABLE "public"."exa_file_chunks" (
  "id" int8 NOT NULL DEFAULT nextval('exa_file_chunks_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "exa_file_id" int8,
  "file_chunk_number" int8,
  "file_chunk_path" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of exa_file_chunks
-- ----------------------------

-- ----------------------------
-- Table structure for exa_file_upload_and_downloads
-- ----------------------------
DROP TABLE IF EXISTS "public"."exa_file_upload_and_downloads";
CREATE TABLE "public"."exa_file_upload_and_downloads" (
  "id" int8 NOT NULL DEFAULT nextval('exa_file_upload_and_downloads_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "name" text COLLATE "pg_catalog"."default",
  "class_id" int8 DEFAULT 0,
  "url" text COLLATE "pg_catalog"."default",
  "tag" text COLLATE "pg_catalog"."default",
  "key" text COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."exa_file_upload_and_downloads"."name" IS '文件名';
COMMENT ON COLUMN "public"."exa_file_upload_and_downloads"."class_id" IS '分类id';
COMMENT ON COLUMN "public"."exa_file_upload_and_downloads"."url" IS '文件地址';
COMMENT ON COLUMN "public"."exa_file_upload_and_downloads"."tag" IS '文件标签';
COMMENT ON COLUMN "public"."exa_file_upload_and_downloads"."key" IS '编号';

-- ----------------------------
-- Records of exa_file_upload_and_downloads
-- ----------------------------
INSERT INTO "public"."exa_file_upload_and_downloads" VALUES (1, '2025-09-25 03:30:34.982188+00', '2025-09-25 03:30:34.982188+00', NULL, '10.png', 0, 'https://qmplusimg.henrongyi.top/gvalogo.png', 'png', '158787308910.png');
INSERT INTO "public"."exa_file_upload_and_downloads" VALUES (2, '2025-09-25 03:30:34.982188+00', '2025-09-25 03:30:34.982188+00', NULL, 'logo.png', 0, 'https://qmplusimg.henrongyi.top/1576554439myAvatar.png', 'png', '1587973709logo.png');

-- ----------------------------
-- Table structure for exa_files
-- ----------------------------
DROP TABLE IF EXISTS "public"."exa_files";
CREATE TABLE "public"."exa_files" (
  "id" int8 NOT NULL DEFAULT nextval('exa_files_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "file_name" text COLLATE "pg_catalog"."default",
  "file_md5" text COLLATE "pg_catalog"."default",
  "file_path" text COLLATE "pg_catalog"."default",
  "chunk_total" int8,
  "is_finish" bool
)
;

-- ----------------------------
-- Records of exa_files
-- ----------------------------

-- ----------------------------
-- Table structure for gva_announcements_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."gva_announcements_info";
CREATE TABLE "public"."gva_announcements_info" (
  "id" int8 NOT NULL DEFAULT nextval('gva_announcements_info_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "title" text COLLATE "pg_catalog"."default",
  "content" text COLLATE "pg_catalog"."default",
  "user_id" int8,
  "attachments" jsonb
)
;
COMMENT ON COLUMN "public"."gva_announcements_info"."title" IS '公告标题';
COMMENT ON COLUMN "public"."gva_announcements_info"."content" IS '公告内容';
COMMENT ON COLUMN "public"."gva_announcements_info"."user_id" IS '发布者';
COMMENT ON COLUMN "public"."gva_announcements_info"."attachments" IS '相关附件';

-- ----------------------------
-- Records of gva_announcements_info
-- ----------------------------

-- ----------------------------
-- Table structure for jwt_blacklists
-- ----------------------------
DROP TABLE IF EXISTS "public"."jwt_blacklists";
CREATE TABLE "public"."jwt_blacklists" (
  "id" int8 NOT NULL DEFAULT nextval('jwt_blacklists_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "jwt" text COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."jwt_blacklists"."jwt" IS 'jwt';

-- ----------------------------
-- Records of jwt_blacklists
-- ----------------------------
INSERT INTO "public"."jwt_blacklists" VALUES (2, '2025-09-26 05:04:50.594661+00', '2025-09-26 05:04:50.594661+00', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiNTkyMzNiZTItMjk4My00ZTQwLTg1YTUtMDIxZDM2NTI5YzQ3IiwiSUQiOjEsIlVzZXJuYW1lIjoiYWRtaW4iLCJOaWNrTmFtZSI6Ik1yLuWlh-a3vCIsIkF1dGhvcml0eUlkIjo4ODgsIkJ1ZmZlclRpbWUiOjg2NDAwLCJpc3MiOiJxbVBsdXMiLCJhdWQiOlsiR1ZBIl0sImV4cCI6MTc1OTM3NjM1MCwibmJmIjoxNzU4NzcxNTUwfQ.Bf7cd_MNrCHIGf4zGjeexSd-Kp90q_qcKNMBHVq4CZQ');

-- ----------------------------
-- Table structure for resume_basic_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."resume_basic_info";
CREATE TABLE "public"."resume_basic_info" (
  "id" int8 NOT NULL DEFAULT nextval('resume_basic_info_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "name" varchar(50) COLLATE "pg_catalog"."default",
  "avatar" varchar(255) COLLATE "pg_catalog"."default",
  "phone" varchar(20) COLLATE "pg_catalog"."default",
  "email" varchar(100) COLLATE "pg_catalog"."default",
  "address" varchar(200) COLLATE "pg_catalog"."default",
  "summary" text COLLATE "pg_catalog"."default",
  "skills" jsonb,
  "is_public" bool DEFAULT false,
  "created_by" int8,
  "updated_by" int8,
  "deleted_by" int8
)
;
COMMENT ON COLUMN "public"."resume_basic_info"."name" IS '姓名';
COMMENT ON COLUMN "public"."resume_basic_info"."avatar" IS '头像';
COMMENT ON COLUMN "public"."resume_basic_info"."phone" IS '联系电话';
COMMENT ON COLUMN "public"."resume_basic_info"."email" IS '邮箱';
COMMENT ON COLUMN "public"."resume_basic_info"."address" IS '地址';
COMMENT ON COLUMN "public"."resume_basic_info"."summary" IS '个人简介';
COMMENT ON COLUMN "public"."resume_basic_info"."skills" IS '技能标签JSON';
COMMENT ON COLUMN "public"."resume_basic_info"."is_public" IS '是否公开简历';
COMMENT ON COLUMN "public"."resume_basic_info"."created_by" IS '创建者';
COMMENT ON COLUMN "public"."resume_basic_info"."updated_by" IS '更新者';
COMMENT ON COLUMN "public"."resume_basic_info"."deleted_by" IS '删除者';

-- ----------------------------
-- Records of resume_basic_info
-- ----------------------------
INSERT INTO "public"."resume_basic_info" VALUES (1, '2025-09-25 09:58:57.728291+00', '2025-09-26 06:53:10.92475+00', NULL, '赵吉辉', 'https://qmplusimg.henrongyi.top/1576554439myAvatar.png', '13285519185', 'zhaojihuionline@outlook.com', '合肥', '<p>我的个人简介</p>', '{}', 't', 1, 1, 0);

-- ----------------------------
-- Table structure for resume_education
-- ----------------------------
DROP TABLE IF EXISTS "public"."resume_education";
CREATE TABLE "public"."resume_education" (
  "id" int8 NOT NULL DEFAULT nextval('resume_education_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "resume_id" int8,
  "school" varchar(100) COLLATE "pg_catalog"."default",
  "major" varchar(100) COLLATE "pg_catalog"."default",
  "degree" varchar(50) COLLATE "pg_catalog"."default",
  "start_date" timestamptz(6),
  "end_date" timestamptz(6),
  "gpa" varchar(20) COLLATE "pg_catalog"."default",
  "description" text COLLATE "pg_catalog"."default",
  "created_by" int8,
  "updated_by" int8,
  "deleted_by" int8
)
;
COMMENT ON COLUMN "public"."resume_education"."resume_id" IS '关联简历基本信息ID';
COMMENT ON COLUMN "public"."resume_education"."school" IS '学校名称';
COMMENT ON COLUMN "public"."resume_education"."major" IS '专业';
COMMENT ON COLUMN "public"."resume_education"."degree" IS '学历';
COMMENT ON COLUMN "public"."resume_education"."start_date" IS '入学时间';
COMMENT ON COLUMN "public"."resume_education"."end_date" IS '毕业时间';
COMMENT ON COLUMN "public"."resume_education"."gpa" IS 'GPA成绩';
COMMENT ON COLUMN "public"."resume_education"."description" IS '在校表现描述';
COMMENT ON COLUMN "public"."resume_education"."created_by" IS '创建者';
COMMENT ON COLUMN "public"."resume_education"."updated_by" IS '更新者';
COMMENT ON COLUMN "public"."resume_education"."deleted_by" IS '删除者';

-- ----------------------------
-- Records of resume_education
-- ----------------------------
INSERT INTO "public"."resume_education" VALUES (2, '2025-09-26 06:12:39.487328+00', '2025-09-26 06:12:39.487328+00', NULL, 1, '安徽工业大学', '电子信息工程', 'benke', '2004-08-31 16:00:00+00', '2008-06-29 16:00:00+00', '', '<p>电子041班班长</p>', 1, 0, 0);

-- ----------------------------
-- Table structure for resume_project
-- ----------------------------
DROP TABLE IF EXISTS "public"."resume_project";
CREATE TABLE "public"."resume_project" (
  "id" int8 NOT NULL DEFAULT nextval('resume_project_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "resume_id" int8,
  "project_name" varchar(100) COLLATE "pg_catalog"."default",
  "role" varchar(50) COLLATE "pg_catalog"."default",
  "start_date" timestamptz(6),
  "end_date" timestamptz(6),
  "technologies" jsonb,
  "description" text COLLATE "pg_catalog"."default",
  "achievements" text COLLATE "pg_catalog"."default",
  "project_url" varchar(255) COLLATE "pg_catalog"."default",
  "screenshots" jsonb,
  "created_by" int8,
  "updated_by" int8,
  "deleted_by" int8
)
;
COMMENT ON COLUMN "public"."resume_project"."resume_id" IS '关联简历基本信息ID';
COMMENT ON COLUMN "public"."resume_project"."project_name" IS '项目名称';
COMMENT ON COLUMN "public"."resume_project"."role" IS '在项目中担任的角色';
COMMENT ON COLUMN "public"."resume_project"."start_date" IS '项目开始时间';
COMMENT ON COLUMN "public"."resume_project"."end_date" IS '项目结束时间';
COMMENT ON COLUMN "public"."resume_project"."technologies" IS '使用的技术栈';
COMMENT ON COLUMN "public"."resume_project"."description" IS '项目详细描述';
COMMENT ON COLUMN "public"."resume_project"."achievements" IS '项目成果和个人贡献';
COMMENT ON COLUMN "public"."resume_project"."project_url" IS '项目访问链接';
COMMENT ON COLUMN "public"."resume_project"."screenshots" IS '项目截图';
COMMENT ON COLUMN "public"."resume_project"."created_by" IS '创建者';
COMMENT ON COLUMN "public"."resume_project"."updated_by" IS '更新者';
COMMENT ON COLUMN "public"."resume_project"."deleted_by" IS '删除者';

-- ----------------------------
-- Records of resume_project
-- ----------------------------

-- ----------------------------
-- Table structure for resume_work_experience
-- ----------------------------
DROP TABLE IF EXISTS "public"."resume_work_experience";
CREATE TABLE "public"."resume_work_experience" (
  "id" int8 NOT NULL DEFAULT nextval('resume_work_experience_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "resume_id" int8,
  "company_name" varchar(100) COLLATE "pg_catalog"."default",
  "position" varchar(50) COLLATE "pg_catalog"."default",
  "start_date" timestamptz(6),
  "end_date" timestamptz(6),
  "is_current" bool DEFAULT false,
  "description" text COLLATE "pg_catalog"."default",
  "achievements" text COLLATE "pg_catalog"."default",
  "sort_order" int8 DEFAULT 0,
  "created_by" int8,
  "updated_by" int8,
  "deleted_by" int8
)
;
COMMENT ON COLUMN "public"."resume_work_experience"."resume_id" IS '关联简历基本信息ID';
COMMENT ON COLUMN "public"."resume_work_experience"."company_name" IS '公司名称';
COMMENT ON COLUMN "public"."resume_work_experience"."position" IS '职位';
COMMENT ON COLUMN "public"."resume_work_experience"."start_date" IS '工作开始时间';
COMMENT ON COLUMN "public"."resume_work_experience"."end_date" IS '工作结束时间';
COMMENT ON COLUMN "public"."resume_work_experience"."is_current" IS '是否为当前工作';
COMMENT ON COLUMN "public"."resume_work_experience"."description" IS '工作描述';
COMMENT ON COLUMN "public"."resume_work_experience"."achievements" IS '主要成就';
COMMENT ON COLUMN "public"."resume_work_experience"."sort_order" IS '排序序号';
COMMENT ON COLUMN "public"."resume_work_experience"."created_by" IS '创建者';
COMMENT ON COLUMN "public"."resume_work_experience"."updated_by" IS '更新者';
COMMENT ON COLUMN "public"."resume_work_experience"."deleted_by" IS '删除者';

-- ----------------------------
-- Records of resume_work_experience
-- ----------------------------

-- ----------------------------
-- Table structure for sys_apis
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_apis";
CREATE TABLE "public"."sys_apis" (
  "id" int8 NOT NULL DEFAULT nextval('sys_apis_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "path" text COLLATE "pg_catalog"."default",
  "description" text COLLATE "pg_catalog"."default",
  "api_group" text COLLATE "pg_catalog"."default",
  "method" text COLLATE "pg_catalog"."default" DEFAULT 'POST'::text
)
;
COMMENT ON COLUMN "public"."sys_apis"."path" IS 'api路径';
COMMENT ON COLUMN "public"."sys_apis"."description" IS 'api中文描述';
COMMENT ON COLUMN "public"."sys_apis"."api_group" IS 'api组';
COMMENT ON COLUMN "public"."sys_apis"."method" IS '方法';

-- ----------------------------
-- Records of sys_apis
-- ----------------------------
INSERT INTO "public"."sys_apis" VALUES (1, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/jwt/jsonInBlacklist', 'jwt加入黑名单(退出，必选)', 'jwt', 'POST');
INSERT INTO "public"."sys_apis" VALUES (2, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/user/deleteUser', '删除用户', '系统用户', 'DELETE');
INSERT INTO "public"."sys_apis" VALUES (3, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/user/admin_register', '用户注册', '系统用户', 'POST');
INSERT INTO "public"."sys_apis" VALUES (4, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/user/getUserList', '获取用户列表', '系统用户', 'POST');
INSERT INTO "public"."sys_apis" VALUES (5, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/user/setUserInfo', '设置用户信息', '系统用户', 'PUT');
INSERT INTO "public"."sys_apis" VALUES (6, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/user/setSelfInfo', '设置自身信息(必选)', '系统用户', 'PUT');
INSERT INTO "public"."sys_apis" VALUES (7, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/user/getUserInfo', '获取自身信息(必选)', '系统用户', 'GET');
INSERT INTO "public"."sys_apis" VALUES (8, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/user/setUserAuthorities', '设置权限组', '系统用户', 'POST');
INSERT INTO "public"."sys_apis" VALUES (9, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/user/changePassword', '修改密码（建议选择)', '系统用户', 'POST');
INSERT INTO "public"."sys_apis" VALUES (10, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/user/setUserAuthority', '修改用户角色(必选)', '系统用户', 'POST');
INSERT INTO "public"."sys_apis" VALUES (11, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/user/resetPassword', '重置用户密码', '系统用户', 'POST');
INSERT INTO "public"."sys_apis" VALUES (12, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/user/setSelfSetting', '用户界面配置', '系统用户', 'PUT');
INSERT INTO "public"."sys_apis" VALUES (13, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/api/createApi', '创建api', 'api', 'POST');
INSERT INTO "public"."sys_apis" VALUES (14, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/api/deleteApi', '删除Api', 'api', 'POST');
INSERT INTO "public"."sys_apis" VALUES (15, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/api/updateApi', '更新Api', 'api', 'POST');
INSERT INTO "public"."sys_apis" VALUES (16, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/api/getApiList', '获取api列表', 'api', 'POST');
INSERT INTO "public"."sys_apis" VALUES (17, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/api/getAllApis', '获取所有api', 'api', 'POST');
INSERT INTO "public"."sys_apis" VALUES (18, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/api/getApiById', '获取api详细信息', 'api', 'POST');
INSERT INTO "public"."sys_apis" VALUES (19, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/api/deleteApisByIds', '批量删除api', 'api', 'DELETE');
INSERT INTO "public"."sys_apis" VALUES (20, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/api/syncApi', '获取待同步API', 'api', 'GET');
INSERT INTO "public"."sys_apis" VALUES (21, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/api/getApiGroups', '获取路由组', 'api', 'GET');
INSERT INTO "public"."sys_apis" VALUES (22, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/api/enterSyncApi', '确认同步API', 'api', 'POST');
INSERT INTO "public"."sys_apis" VALUES (23, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/api/ignoreApi', '忽略API', 'api', 'POST');
INSERT INTO "public"."sys_apis" VALUES (24, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/authority/copyAuthority', '拷贝角色', '角色', 'POST');
INSERT INTO "public"."sys_apis" VALUES (25, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/authority/createAuthority', '创建角色', '角色', 'POST');
INSERT INTO "public"."sys_apis" VALUES (26, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/authority/deleteAuthority', '删除角色', '角色', 'POST');
INSERT INTO "public"."sys_apis" VALUES (27, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/authority/updateAuthority', '更新角色信息', '角色', 'PUT');
INSERT INTO "public"."sys_apis" VALUES (28, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/authority/getAuthorityList', '获取角色列表', '角色', 'POST');
INSERT INTO "public"."sys_apis" VALUES (29, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/authority/setDataAuthority', '设置角色资源权限', '角色', 'POST');
INSERT INTO "public"."sys_apis" VALUES (30, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/casbin/updateCasbin', '更改角色api权限', 'casbin', 'POST');
INSERT INTO "public"."sys_apis" VALUES (31, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/casbin/getPolicyPathByAuthorityId', '获取权限列表', 'casbin', 'POST');
INSERT INTO "public"."sys_apis" VALUES (32, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/menu/addBaseMenu', '新增菜单', '菜单', 'POST');
INSERT INTO "public"."sys_apis" VALUES (33, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/menu/getMenu', '获取菜单树(必选)', '菜单', 'POST');
INSERT INTO "public"."sys_apis" VALUES (34, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/menu/deleteBaseMenu', '删除菜单', '菜单', 'POST');
INSERT INTO "public"."sys_apis" VALUES (35, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/menu/updateBaseMenu', '更新菜单', '菜单', 'POST');
INSERT INTO "public"."sys_apis" VALUES (36, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/menu/getBaseMenuById', '根据id获取菜单', '菜单', 'POST');
INSERT INTO "public"."sys_apis" VALUES (37, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/menu/getMenuList', '分页获取基础menu列表', '菜单', 'POST');
INSERT INTO "public"."sys_apis" VALUES (38, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/menu/getBaseMenuTree', '获取用户动态路由', '菜单', 'POST');
INSERT INTO "public"."sys_apis" VALUES (39, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/menu/getMenuAuthority', '获取指定角色menu', '菜单', 'POST');
INSERT INTO "public"."sys_apis" VALUES (40, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/menu/addMenuAuthority', '增加menu和角色关联关系', '菜单', 'POST');
INSERT INTO "public"."sys_apis" VALUES (41, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/fileUploadAndDownload/findFile', '寻找目标文件（秒传）', '分片上传', 'GET');
INSERT INTO "public"."sys_apis" VALUES (42, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/fileUploadAndDownload/breakpointContinue', '断点续传', '分片上传', 'POST');
INSERT INTO "public"."sys_apis" VALUES (43, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/fileUploadAndDownload/breakpointContinueFinish', '断点续传完成', '分片上传', 'POST');
INSERT INTO "public"."sys_apis" VALUES (44, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/fileUploadAndDownload/removeChunk', '上传完成移除文件', '分片上传', 'POST');
INSERT INTO "public"."sys_apis" VALUES (45, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/fileUploadAndDownload/upload', '文件上传（建议选择）', '文件上传与下载', 'POST');
INSERT INTO "public"."sys_apis" VALUES (46, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/fileUploadAndDownload/deleteFile', '删除文件', '文件上传与下载', 'POST');
INSERT INTO "public"."sys_apis" VALUES (47, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/fileUploadAndDownload/editFileName', '文件名或者备注编辑', '文件上传与下载', 'POST');
INSERT INTO "public"."sys_apis" VALUES (48, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/fileUploadAndDownload/getFileList', '获取上传文件列表', '文件上传与下载', 'POST');
INSERT INTO "public"."sys_apis" VALUES (49, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/fileUploadAndDownload/importURL', '导入URL', '文件上传与下载', 'POST');
INSERT INTO "public"."sys_apis" VALUES (50, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/system/getServerInfo', '获取服务器信息', '系统服务', 'POST');
INSERT INTO "public"."sys_apis" VALUES (51, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/system/getSystemConfig', '获取配置文件内容', '系统服务', 'POST');
INSERT INTO "public"."sys_apis" VALUES (52, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/system/setSystemConfig', '设置配置文件内容', '系统服务', 'POST');
INSERT INTO "public"."sys_apis" VALUES (53, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/customer/customer', '更新客户', '客户', 'PUT');
INSERT INTO "public"."sys_apis" VALUES (54, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/customer/customer', '创建客户', '客户', 'POST');
INSERT INTO "public"."sys_apis" VALUES (55, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/customer/customer', '删除客户', '客户', 'DELETE');
INSERT INTO "public"."sys_apis" VALUES (56, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/customer/customer', '获取单一客户', '客户', 'GET');
INSERT INTO "public"."sys_apis" VALUES (57, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/customer/customerList', '获取客户列表', '客户', 'GET');
INSERT INTO "public"."sys_apis" VALUES (58, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/autoCode/getDB', '获取所有数据库', '代码生成器', 'GET');
INSERT INTO "public"."sys_apis" VALUES (59, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/autoCode/getTables', '获取数据库表', '代码生成器', 'GET');
INSERT INTO "public"."sys_apis" VALUES (60, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/autoCode/createTemp', '自动化代码', '代码生成器', 'POST');
INSERT INTO "public"."sys_apis" VALUES (61, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/autoCode/preview', '预览自动化代码', '代码生成器', 'POST');
INSERT INTO "public"."sys_apis" VALUES (62, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/autoCode/getColumn', '获取所选table的所有字段', '代码生成器', 'GET');
INSERT INTO "public"."sys_apis" VALUES (63, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/autoCode/installPlugin', '安装插件', '代码生成器', 'POST');
INSERT INTO "public"."sys_apis" VALUES (64, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/autoCode/pubPlug', '打包插件', '代码生成器', 'POST');
INSERT INTO "public"."sys_apis" VALUES (65, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/autoCode/mcp', '自动生成 MCP Tool 模板', '代码生成器', 'POST');
INSERT INTO "public"."sys_apis" VALUES (66, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/autoCode/mcpTest', 'MCP Tool 测试', '代码生成器', 'POST');
INSERT INTO "public"."sys_apis" VALUES (67, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/autoCode/mcpList', '获取 MCP ToolList', '代码生成器', 'POST');
INSERT INTO "public"."sys_apis" VALUES (68, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/autoCode/createPackage', '配置模板', '模板配置', 'POST');
INSERT INTO "public"."sys_apis" VALUES (69, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/autoCode/getTemplates', '获取模板文件', '模板配置', 'GET');
INSERT INTO "public"."sys_apis" VALUES (70, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/autoCode/getPackage', '获取所有模板', '模板配置', 'POST');
INSERT INTO "public"."sys_apis" VALUES (71, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/autoCode/delPackage', '删除模板', '模板配置', 'POST');
INSERT INTO "public"."sys_apis" VALUES (72, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/autoCode/getMeta', '获取meta信息', '代码生成器历史', 'POST');
INSERT INTO "public"."sys_apis" VALUES (73, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/autoCode/rollback', '回滚自动生成代码', '代码生成器历史', 'POST');
INSERT INTO "public"."sys_apis" VALUES (74, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/autoCode/getSysHistory', '查询回滚记录', '代码生成器历史', 'POST');
INSERT INTO "public"."sys_apis" VALUES (75, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/autoCode/delSysHistory', '删除回滚记录', '代码生成器历史', 'POST');
INSERT INTO "public"."sys_apis" VALUES (76, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/autoCode/addFunc', '增加模板方法', '代码生成器历史', 'POST');
INSERT INTO "public"."sys_apis" VALUES (77, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysDictionaryDetail/updateSysDictionaryDetail', '更新字典内容', '系统字典详情', 'PUT');
INSERT INTO "public"."sys_apis" VALUES (78, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysDictionaryDetail/createSysDictionaryDetail', '新增字典内容', '系统字典详情', 'POST');
INSERT INTO "public"."sys_apis" VALUES (79, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysDictionaryDetail/deleteSysDictionaryDetail', '删除字典内容', '系统字典详情', 'DELETE');
INSERT INTO "public"."sys_apis" VALUES (80, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysDictionaryDetail/findSysDictionaryDetail', '根据ID获取字典内容', '系统字典详情', 'GET');
INSERT INTO "public"."sys_apis" VALUES (81, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysDictionaryDetail/getSysDictionaryDetailList', '获取字典内容列表', '系统字典详情', 'GET');
INSERT INTO "public"."sys_apis" VALUES (82, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysDictionary/createSysDictionary', '新增字典', '系统字典', 'POST');
INSERT INTO "public"."sys_apis" VALUES (83, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysDictionary/deleteSysDictionary', '删除字典', '系统字典', 'DELETE');
INSERT INTO "public"."sys_apis" VALUES (84, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysDictionary/updateSysDictionary', '更新字典', '系统字典', 'PUT');
INSERT INTO "public"."sys_apis" VALUES (85, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysDictionary/findSysDictionary', '根据ID获取字典（建议选择）', '系统字典', 'GET');
INSERT INTO "public"."sys_apis" VALUES (86, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysDictionary/getSysDictionaryList', '获取字典列表', '系统字典', 'GET');
INSERT INTO "public"."sys_apis" VALUES (87, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysOperationRecord/createSysOperationRecord', '新增操作记录', '操作记录', 'POST');
INSERT INTO "public"."sys_apis" VALUES (88, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysOperationRecord/findSysOperationRecord', '根据ID获取操作记录', '操作记录', 'GET');
INSERT INTO "public"."sys_apis" VALUES (89, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysOperationRecord/getSysOperationRecordList', '获取操作记录列表', '操作记录', 'GET');
INSERT INTO "public"."sys_apis" VALUES (90, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysOperationRecord/deleteSysOperationRecord', '删除操作记录', '操作记录', 'DELETE');
INSERT INTO "public"."sys_apis" VALUES (91, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysOperationRecord/deleteSysOperationRecordByIds', '批量删除操作历史', '操作记录', 'DELETE');
INSERT INTO "public"."sys_apis" VALUES (92, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/simpleUploader/upload', '插件版分片上传', '断点续传(插件版)', 'POST');
INSERT INTO "public"."sys_apis" VALUES (93, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/simpleUploader/checkFileMd5', '文件完整度验证', '断点续传(插件版)', 'GET');
INSERT INTO "public"."sys_apis" VALUES (94, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/simpleUploader/mergeFileMd5', '上传完成合并文件', '断点续传(插件版)', 'GET');
INSERT INTO "public"."sys_apis" VALUES (95, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/email/emailTest', '发送测试邮件', 'email', 'POST');
INSERT INTO "public"."sys_apis" VALUES (96, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/email/sendEmail', '发送邮件', 'email', 'POST');
INSERT INTO "public"."sys_apis" VALUES (97, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/authorityBtn/setAuthorityBtn', '设置按钮权限', '按钮权限', 'POST');
INSERT INTO "public"."sys_apis" VALUES (98, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/authorityBtn/getAuthorityBtn', '获取已有按钮权限', '按钮权限', 'POST');
INSERT INTO "public"."sys_apis" VALUES (99, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/authorityBtn/canRemoveAuthorityBtn', '删除按钮', '按钮权限', 'POST');
INSERT INTO "public"."sys_apis" VALUES (100, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysExportTemplate/createSysExportTemplate', '新增导出模板', '导出模板', 'POST');
INSERT INTO "public"."sys_apis" VALUES (101, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysExportTemplate/deleteSysExportTemplate', '删除导出模板', '导出模板', 'DELETE');
INSERT INTO "public"."sys_apis" VALUES (102, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysExportTemplate/deleteSysExportTemplateByIds', '批量删除导出模板', '导出模板', 'DELETE');
INSERT INTO "public"."sys_apis" VALUES (103, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysExportTemplate/updateSysExportTemplate', '更新导出模板', '导出模板', 'PUT');
INSERT INTO "public"."sys_apis" VALUES (104, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysExportTemplate/findSysExportTemplate', '根据ID获取导出模板', '导出模板', 'GET');
INSERT INTO "public"."sys_apis" VALUES (105, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysExportTemplate/getSysExportTemplateList', '获取导出模板列表', '导出模板', 'GET');
INSERT INTO "public"."sys_apis" VALUES (106, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysExportTemplate/exportExcel', '导出Excel', '导出模板', 'GET');
INSERT INTO "public"."sys_apis" VALUES (107, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysExportTemplate/exportTemplate', '下载模板', '导出模板', 'GET');
INSERT INTO "public"."sys_apis" VALUES (108, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysExportTemplate/importExcel', '导入Excel', '导出模板', 'POST');
INSERT INTO "public"."sys_apis" VALUES (109, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/info/createInfo', '新建公告', '公告', 'POST');
INSERT INTO "public"."sys_apis" VALUES (110, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/info/deleteInfo', '删除公告', '公告', 'DELETE');
INSERT INTO "public"."sys_apis" VALUES (111, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/info/deleteInfoByIds', '批量删除公告', '公告', 'DELETE');
INSERT INTO "public"."sys_apis" VALUES (112, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/info/updateInfo', '更新公告', '公告', 'PUT');
INSERT INTO "public"."sys_apis" VALUES (113, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/info/findInfo', '根据ID获取公告', '公告', 'GET');
INSERT INTO "public"."sys_apis" VALUES (114, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/info/getInfoList', '获取公告列表', '公告', 'GET');
INSERT INTO "public"."sys_apis" VALUES (115, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysParams/createSysParams', '新建参数', '参数管理', 'POST');
INSERT INTO "public"."sys_apis" VALUES (116, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysParams/deleteSysParams', '删除参数', '参数管理', 'DELETE');
INSERT INTO "public"."sys_apis" VALUES (117, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysParams/deleteSysParamsByIds', '批量删除参数', '参数管理', 'DELETE');
INSERT INTO "public"."sys_apis" VALUES (118, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysParams/updateSysParams', '更新参数', '参数管理', 'PUT');
INSERT INTO "public"."sys_apis" VALUES (119, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysParams/findSysParams', '根据ID获取参数', '参数管理', 'GET');
INSERT INTO "public"."sys_apis" VALUES (120, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysParams/getSysParamsList', '获取参数列表', '参数管理', 'GET');
INSERT INTO "public"."sys_apis" VALUES (121, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysParams/getSysParam', '获取参数列表', '参数管理', 'GET');
INSERT INTO "public"."sys_apis" VALUES (122, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/attachmentCategory/getCategoryList', '分类列表', '媒体库分类', 'GET');
INSERT INTO "public"."sys_apis" VALUES (123, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/attachmentCategory/addCategory', '添加/编辑分类', '媒体库分类', 'POST');
INSERT INTO "public"."sys_apis" VALUES (124, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/attachmentCategory/deleteCategory', '删除分类', '媒体库分类', 'POST');
INSERT INTO "public"."sys_apis" VALUES (125, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysVersion/findSysVersion', '获取单一版本', '版本控制', 'GET');
INSERT INTO "public"."sys_apis" VALUES (126, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysVersion/getSysVersionList', '获取版本列表', '版本控制', 'GET');
INSERT INTO "public"."sys_apis" VALUES (127, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysVersion/downloadVersionJson', '下载版本json', '版本控制', 'GET');
INSERT INTO "public"."sys_apis" VALUES (128, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysVersion/exportVersion', '创建版本', '版本控制', 'POST');
INSERT INTO "public"."sys_apis" VALUES (129, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysVersion/importVersion', '同步版本', '版本控制', 'POST');
INSERT INTO "public"."sys_apis" VALUES (130, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysVersion/deleteSysVersion', '删除版本', '版本控制', 'DELETE');
INSERT INTO "public"."sys_apis" VALUES (131, '2025-09-25 03:30:34.775238+00', '2025-09-25 03:30:34.775238+00', NULL, '/sysVersion/deleteSysVersionByIds', '批量删除版本', '版本控制', 'DELETE');
INSERT INTO "public"."sys_apis" VALUES (132, '2025-09-25 09:08:28.175699+00', '2025-09-25 09:08:28.175699+00', NULL, '/基本信息/createResumeBasicInfo', '新增个人基本信息管理', '个人基本信息管理', 'POST');
INSERT INTO "public"."sys_apis" VALUES (133, '2025-09-25 09:08:28.17783+00', '2025-09-25 09:08:28.17783+00', NULL, '/基本信息/deleteResumeBasicInfo', '删除个人基本信息管理', '个人基本信息管理', 'DELETE');
INSERT INTO "public"."sys_apis" VALUES (134, '2025-09-25 09:08:28.178886+00', '2025-09-25 09:08:28.178886+00', NULL, '/基本信息/deleteResumeBasicInfoByIds', '批量删除个人基本信息管理', '个人基本信息管理', 'DELETE');
INSERT INTO "public"."sys_apis" VALUES (135, '2025-09-25 09:08:28.18004+00', '2025-09-25 09:08:28.18004+00', NULL, '/基本信息/updateResumeBasicInfo', '更新个人基本信息管理', '个人基本信息管理', 'PUT');
INSERT INTO "public"."sys_apis" VALUES (136, '2025-09-25 09:08:28.181092+00', '2025-09-25 09:08:28.181092+00', NULL, '/基本信息/findResumeBasicInfo', '根据ID获取个人基本信息管理', '个人基本信息管理', 'GET');
INSERT INTO "public"."sys_apis" VALUES (137, '2025-09-25 09:08:28.182754+00', '2025-09-25 09:08:28.182754+00', NULL, '/基本信息/getResumeBasicInfoList', '获取个人基本信息管理列表', '个人基本信息管理', 'GET');
INSERT INTO "public"."sys_apis" VALUES (138, '2025-09-25 09:08:28.214905+00', '2025-09-25 09:08:28.214905+00', NULL, '/工作经历/createResumeWorkExperience', '新增工作经历管理', '工作经历管理', 'POST');
INSERT INTO "public"."sys_apis" VALUES (139, '2025-09-25 09:08:28.215962+00', '2025-09-25 09:08:28.215962+00', NULL, '/工作经历/deleteResumeWorkExperience', '删除工作经历管理', '工作经历管理', 'DELETE');
INSERT INTO "public"."sys_apis" VALUES (140, '2025-09-25 09:08:28.217037+00', '2025-09-25 09:08:28.217037+00', NULL, '/工作经历/deleteResumeWorkExperienceByIds', '批量删除工作经历管理', '工作经历管理', 'DELETE');
INSERT INTO "public"."sys_apis" VALUES (141, '2025-09-25 09:08:28.218145+00', '2025-09-25 09:08:28.218145+00', NULL, '/工作经历/updateResumeWorkExperience', '更新工作经历管理', '工作经历管理', 'PUT');
INSERT INTO "public"."sys_apis" VALUES (142, '2025-09-25 09:08:28.219198+00', '2025-09-25 09:08:28.219198+00', NULL, '/工作经历/findResumeWorkExperience', '根据ID获取工作经历管理', '工作经历管理', 'GET');
INSERT INTO "public"."sys_apis" VALUES (143, '2025-09-25 09:08:28.220399+00', '2025-09-25 09:08:28.220399+00', NULL, '/工作经历/getResumeWorkExperienceList', '获取工作经历管理列表', '工作经历管理', 'GET');
INSERT INTO "public"."sys_apis" VALUES (144, '2025-09-25 09:08:28.248826+00', '2025-09-25 09:08:28.248826+00', NULL, '/教育背景/createResumeEducation', '新增教育背景管理', '教育背景管理', 'POST');
INSERT INTO "public"."sys_apis" VALUES (145, '2025-09-25 09:08:28.250378+00', '2025-09-25 09:08:28.250378+00', NULL, '/教育背景/deleteResumeEducation', '删除教育背景管理', '教育背景管理', 'DELETE');
INSERT INTO "public"."sys_apis" VALUES (146, '2025-09-25 09:08:28.251662+00', '2025-09-25 09:08:28.251662+00', NULL, '/教育背景/deleteResumeEducationByIds', '批量删除教育背景管理', '教育背景管理', 'DELETE');
INSERT INTO "public"."sys_apis" VALUES (147, '2025-09-25 09:08:28.252747+00', '2025-09-25 09:08:28.252747+00', NULL, '/教育背景/updateResumeEducation', '更新教育背景管理', '教育背景管理', 'PUT');
INSERT INTO "public"."sys_apis" VALUES (148, '2025-09-25 09:08:28.253814+00', '2025-09-25 09:08:28.253814+00', NULL, '/教育背景/findResumeEducation', '根据ID获取教育背景管理', '教育背景管理', 'GET');
INSERT INTO "public"."sys_apis" VALUES (149, '2025-09-25 09:08:28.255982+00', '2025-09-25 09:08:28.255982+00', NULL, '/教育背景/getResumeEducationList', '获取教育背景管理列表', '教育背景管理', 'GET');
INSERT INTO "public"."sys_apis" VALUES (150, '2025-09-25 09:08:28.290296+00', '2025-09-25 09:08:28.290296+00', NULL, '/项目经验/createResumeProject', '新增项目经验管理', '项目经验管理', 'POST');
INSERT INTO "public"."sys_apis" VALUES (151, '2025-09-25 09:08:28.2919+00', '2025-09-25 09:08:28.2919+00', NULL, '/项目经验/deleteResumeProject', '删除项目经验管理', '项目经验管理', 'DELETE');
INSERT INTO "public"."sys_apis" VALUES (152, '2025-09-25 09:08:28.292946+00', '2025-09-25 09:08:28.292946+00', NULL, '/项目经验/deleteResumeProjectByIds', '批量删除项目经验管理', '项目经验管理', 'DELETE');
INSERT INTO "public"."sys_apis" VALUES (153, '2025-09-25 09:08:28.293986+00', '2025-09-25 09:08:28.293986+00', NULL, '/项目经验/updateResumeProject', '更新项目经验管理', '项目经验管理', 'PUT');
INSERT INTO "public"."sys_apis" VALUES (154, '2025-09-25 09:08:28.295027+00', '2025-09-25 09:08:28.295027+00', NULL, '/项目经验/findResumeProject', '根据ID获取项目经验管理', '项目经验管理', 'GET');
INSERT INTO "public"."sys_apis" VALUES (155, '2025-09-25 09:08:28.29634+00', '2025-09-25 09:08:28.29634+00', NULL, '/项目经验/getResumeProjectList', '获取项目经验管理列表', '项目经验管理', 'GET');

-- ----------------------------
-- Table structure for sys_authorities
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_authorities";
CREATE TABLE "public"."sys_authorities" (
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "authority_id" int8 NOT NULL DEFAULT nextval('sys_authorities_authority_id_seq'::regclass),
  "authority_name" text COLLATE "pg_catalog"."default",
  "parent_id" int8,
  "default_router" text COLLATE "pg_catalog"."default" DEFAULT 'dashboard'::text
)
;
COMMENT ON COLUMN "public"."sys_authorities"."authority_id" IS '角色ID';
COMMENT ON COLUMN "public"."sys_authorities"."authority_name" IS '角色名';
COMMENT ON COLUMN "public"."sys_authorities"."parent_id" IS '父角色ID';
COMMENT ON COLUMN "public"."sys_authorities"."default_router" IS '默认菜单';

-- ----------------------------
-- Records of sys_authorities
-- ----------------------------
INSERT INTO "public"."sys_authorities" VALUES ('2025-09-25 03:30:34.790508+00', '2025-09-25 03:30:34.970925+00', NULL, 9528, '测试角色', 0, 'dashboard');
INSERT INTO "public"."sys_authorities" VALUES ('2025-09-25 03:30:34.790508+00', '2025-09-25 03:30:34.975666+00', NULL, 8881, '普通用户子角色', 888, 'dashboard');
INSERT INTO "public"."sys_authorities" VALUES ('2025-09-25 03:30:34.790508+00', '2025-09-25 09:56:18.454047+00', NULL, 888, '普通用户', 0, 'dashboard');

-- ----------------------------
-- Table structure for sys_authority_btns
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_authority_btns";
CREATE TABLE "public"."sys_authority_btns" (
  "authority_id" int8,
  "sys_menu_id" int8,
  "sys_base_menu_btn_id" int8
)
;
COMMENT ON COLUMN "public"."sys_authority_btns"."authority_id" IS '角色ID';
COMMENT ON COLUMN "public"."sys_authority_btns"."sys_menu_id" IS '菜单ID';
COMMENT ON COLUMN "public"."sys_authority_btns"."sys_base_menu_btn_id" IS '菜单按钮ID';

-- ----------------------------
-- Records of sys_authority_btns
-- ----------------------------
INSERT INTO "public"."sys_authority_btns" VALUES (888, 39, 25);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 39, 26);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 39, 27);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 39, 28);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 39, 29);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 39, 30);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 39, 31);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 39, 32);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 38, 17);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 38, 18);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 38, 19);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 38, 20);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 38, 21);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 38, 22);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 38, 23);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 38, 24);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 37, 9);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 37, 10);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 37, 11);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 37, 12);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 37, 13);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 37, 14);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 37, 15);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 37, 16);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 36, 1);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 36, 2);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 36, 3);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 36, 4);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 36, 5);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 36, 6);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 36, 7);
INSERT INTO "public"."sys_authority_btns" VALUES (888, 36, 8);

-- ----------------------------
-- Table structure for sys_authority_menus
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_authority_menus";
CREATE TABLE "public"."sys_authority_menus" (
  "sys_base_menu_id" int8 NOT NULL,
  "sys_authority_authority_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_authority_menus"."sys_authority_authority_id" IS '角色ID';

-- ----------------------------
-- Records of sys_authority_menus
-- ----------------------------
INSERT INTO "public"."sys_authority_menus" VALUES (1, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (2, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (3, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (4, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (5, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (6, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (7, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (8, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (9, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (10, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (11, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (12, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (13, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (14, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (15, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (16, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (17, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (18, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (19, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (20, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (21, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (22, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (23, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (24, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (25, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (26, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (27, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (28, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (29, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (30, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (31, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (32, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (33, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (34, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (35, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (1, 9528);
INSERT INTO "public"."sys_authority_menus" VALUES (2, 9528);
INSERT INTO "public"."sys_authority_menus" VALUES (4, 9528);
INSERT INTO "public"."sys_authority_menus" VALUES (8, 9528);
INSERT INTO "public"."sys_authority_menus" VALUES (1, 8881);
INSERT INTO "public"."sys_authority_menus" VALUES (2, 8881);
INSERT INTO "public"."sys_authority_menus" VALUES (3, 8881);
INSERT INTO "public"."sys_authority_menus" VALUES (4, 8881);
INSERT INTO "public"."sys_authority_menus" VALUES (5, 8881);
INSERT INTO "public"."sys_authority_menus" VALUES (6, 8881);
INSERT INTO "public"."sys_authority_menus" VALUES (7, 8881);
INSERT INTO "public"."sys_authority_menus" VALUES (8, 8881);
INSERT INTO "public"."sys_authority_menus" VALUES (9, 8881);
INSERT INTO "public"."sys_authority_menus" VALUES (17, 8881);
INSERT INTO "public"."sys_authority_menus" VALUES (18, 8881);
INSERT INTO "public"."sys_authority_menus" VALUES (19, 8881);
INSERT INTO "public"."sys_authority_menus" VALUES (20, 8881);
INSERT INTO "public"."sys_authority_menus" VALUES (21, 8881);
INSERT INTO "public"."sys_authority_menus" VALUES (22, 8881);
INSERT INTO "public"."sys_authority_menus" VALUES (23, 8881);
INSERT INTO "public"."sys_authority_menus" VALUES (24, 8881);
INSERT INTO "public"."sys_authority_menus" VALUES (25, 8881);
INSERT INTO "public"."sys_authority_menus" VALUES (26, 8881);
INSERT INTO "public"."sys_authority_menus" VALUES (27, 8881);
INSERT INTO "public"."sys_authority_menus" VALUES (28, 8881);
INSERT INTO "public"."sys_authority_menus" VALUES (29, 8881);
INSERT INTO "public"."sys_authority_menus" VALUES (30, 8881);
INSERT INTO "public"."sys_authority_menus" VALUES (39, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (38, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (37, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (36, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (40, 888);
INSERT INTO "public"."sys_authority_menus" VALUES (41, 888);

-- ----------------------------
-- Table structure for sys_auto_code_histories
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_auto_code_histories";
CREATE TABLE "public"."sys_auto_code_histories" (
  "id" int8 NOT NULL DEFAULT nextval('sys_auto_code_histories_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "table_name" text COLLATE "pg_catalog"."default",
  "package" text COLLATE "pg_catalog"."default",
  "request" text COLLATE "pg_catalog"."default",
  "struct_name" text COLLATE "pg_catalog"."default",
  "abbreviation" text COLLATE "pg_catalog"."default",
  "business_db" text COLLATE "pg_catalog"."default",
  "description" text COLLATE "pg_catalog"."default",
  "templates" text COLLATE "pg_catalog"."default",
  "Injections" text COLLATE "pg_catalog"."default",
  "flag" int8,
  "api_ids" text COLLATE "pg_catalog"."default",
  "menu_id" int8,
  "export_template_id" int8,
  "package_id" int8
)
;
COMMENT ON COLUMN "public"."sys_auto_code_histories"."table_name" IS '表名';
COMMENT ON COLUMN "public"."sys_auto_code_histories"."package" IS '模块名/插件名';
COMMENT ON COLUMN "public"."sys_auto_code_histories"."request" IS '前端传入的结构化信息';
COMMENT ON COLUMN "public"."sys_auto_code_histories"."struct_name" IS '结构体名称';
COMMENT ON COLUMN "public"."sys_auto_code_histories"."abbreviation" IS '结构体名称缩写';
COMMENT ON COLUMN "public"."sys_auto_code_histories"."business_db" IS '业务库';
COMMENT ON COLUMN "public"."sys_auto_code_histories"."description" IS 'Struct中文名称';
COMMENT ON COLUMN "public"."sys_auto_code_histories"."templates" IS '模板信息';
COMMENT ON COLUMN "public"."sys_auto_code_histories"."Injections" IS '注入路径';
COMMENT ON COLUMN "public"."sys_auto_code_histories"."flag" IS '[0:创建,1:回滚]';
COMMENT ON COLUMN "public"."sys_auto_code_histories"."api_ids" IS 'api表注册内容';
COMMENT ON COLUMN "public"."sys_auto_code_histories"."menu_id" IS '菜单ID';
COMMENT ON COLUMN "public"."sys_auto_code_histories"."export_template_id" IS '导出模板ID';
COMMENT ON COLUMN "public"."sys_auto_code_histories"."package_id" IS '包ID';

-- ----------------------------
-- Records of sys_auto_code_histories
-- ----------------------------
INSERT INTO "public"."sys_auto_code_histories" VALUES (1, '2025-09-25 09:08:28.192759+00', '2025-09-25 09:08:28.192759+00', NULL, 'resume_basic_info', 'resume', '{"package":"resume","tableName":"resume_basic_info","businessDB":"gva","structName":"ResumeBasicInfo","packageName":"resumeBasicInfo","description":"个人基本信息管理","abbreviation":"基本信息","humpPackageName":"resumeBasicInfo","gvaModel":true,"autoMigrate":true,"autoCreateResource":true,"autoCreateApiToSql":true,"autoCreateMenuToSql":true,"autoCreateBtnAuth":true,"onlyTemplate":false,"isTree":false,"treeJson":"","isAdd":false,"fields":[{"fieldName":"Name","fieldDesc":"姓名","fieldType":"string","fieldJson":"name","dataTypeLong":"50","comment":"姓名","columnName":"name","fieldSearchType":"LIKE","fieldSearchHide":false,"dictType":"","form":true,"table":true,"desc":true,"excel":true,"require":true,"defaultValue":"","errorText":"请输入姓名","clearable":true,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"Avatar","fieldDesc":"头像","fieldType":"picture","fieldJson":"avatar","dataTypeLong":"255","comment":"头像","columnName":"avatar","fieldSearchType":"","fieldSearchHide":true,"dictType":"","form":true,"table":true,"desc":true,"excel":false,"require":false,"defaultValue":"","errorText":"","clearable":true,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"Phone","fieldDesc":"联系电话","fieldType":"string","fieldJson":"phone","dataTypeLong":"20","comment":"联系电话","columnName":"phone","fieldSearchType":"=","fieldSearchHide":false,"dictType":"","form":true,"table":true,"desc":true,"excel":true,"require":true,"defaultValue":"","errorText":"请输入联系电话","clearable":true,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"Email","fieldDesc":"邮箱","fieldType":"string","fieldJson":"email","dataTypeLong":"100","comment":"邮箱","columnName":"email","fieldSearchType":"LIKE","fieldSearchHide":false,"dictType":"","form":true,"table":true,"desc":true,"excel":true,"require":true,"defaultValue":"","errorText":"请输入邮箱","clearable":true,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"Address","fieldDesc":"地址","fieldType":"string","fieldJson":"address","dataTypeLong":"200","comment":"地址","columnName":"address","fieldSearchType":"LIKE","fieldSearchHide":false,"dictType":"","form":true,"table":true,"desc":true,"excel":true,"require":false,"defaultValue":"","errorText":"","clearable":true,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"Summary","fieldDesc":"个人简介","fieldType":"richtext","fieldJson":"summary","dataTypeLong":"2000","comment":"个人简介","columnName":"summary","fieldSearchType":"","fieldSearchHide":true,"dictType":"","form":true,"table":false,"desc":true,"excel":false,"require":false,"defaultValue":"","errorText":"","clearable":true,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"Skills","fieldDesc":"技能标签","fieldType":"json","fieldJson":"skills","dataTypeLong":"1000","comment":"技能标签JSON","columnName":"skills","fieldSearchType":"","fieldSearchHide":true,"dictType":"","form":true,"table":false,"desc":true,"excel":false,"require":false,"defaultValue":"","errorText":"","clearable":true,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"IsPublic","fieldDesc":"是否公开","fieldType":"bool","fieldJson":"isPublic","dataTypeLong":"","comment":"是否公开简历","columnName":"is_public","fieldSearchType":"=","fieldSearchHide":false,"dictType":"resume_public_status","form":true,"table":true,"desc":true,"excel":true,"require":false,"defaultValue":"false","errorText":"","clearable":false,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""}],"generateWeb":true,"generateServer":true,"primaryField":{"fieldName":"ID","fieldDesc":"ID","fieldType":"uint","fieldJson":"ID","dataTypeLong":"20","comment":"主键ID","columnName":"id","fieldSearchType":"","fieldSearchHide":false,"dictType":"","form":false,"table":false,"desc":false,"excel":false,"require":false,"defaultValue":"","errorText":"","clearable":false,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""}}', 'ResumeBasicInfo', 'ResumeBasicInfo', 'gva', '个人基本信息管理', '{"resource/package/server/api/api.go.tpl":"api/v1/resume/resumeBasicInfo.go","resource/package/server/model/model.go.tpl":"model/resume/resumeBasicInfo.go","resource/package/server/model/request/request.go.tpl":"model/resume/request/resumeBasicInfo.go","resource/package/server/router/router.go.tpl":"router/resume/resumeBasicInfo.go","resource/package/server/service/service.go.tpl":"service/resume/resumeBasicInfo.go","resource/package/web/api/api.js.tpl":"api/resume/resumeBasicInfo.js","resource/package/web/view/form.vue.tpl":"view/resume/resumeBasicInfo/resumeBasicInfoForm.vue","resource/package/web/view/table.vue.tpl":"view/resume/resumeBasicInfo/resumeBasicInfo.vue"}', '{"PackageApiEnter":"{\"Type\":\"PackageApiEnter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\api\\\\v1\\\\enter.go\",\"ImportPath\":\"\\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1/resume\\\"\",\"StructName\":\"ResumeApiGroup\",\"PackageName\":\"resume\",\"RelativePath\":\"api/v1/enter.go\",\"PackageStructName\":\"ApiGroup\"}","PackageApiModuleEnter":"{\"Type\":\"PackageApiModuleEnter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\api\\\\v1\\\\resume\\\\enter.go\",\"ImportPath\":\"\\\"github.com/flipped-aurora/gin-vue-admin/server/service\\\"\",\"RelativePath\":\"api/v1/resume/enter.go\",\"StructName\":\"ResumeBasicInfoApi\",\"AppName\":\"ServiceGroupApp\",\"GroupName\":\"ResumeServiceGroup\",\"ModuleName\":\"基本信息Service\",\"PackageName\":\"service\",\"ServiceName\":\"ResumeBasicInfoService\"}","PackageInitializeGorm":"{\"Type\":\"PackageInitializeGorm\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\initialize\\\\gorm_biz.go\",\"ImportPath\":\"\\\"github.com/flipped-aurora/gin-vue-admin/server/model/resume\\\"\",\"Business\":\"gva\",\"StructName\":\"ResumeBasicInfo\",\"PackageName\":\"resume\",\"RelativePath\":\"initialize/gorm_biz.go\",\"IsNew\":true}","PackageInitializeRouter":"{\"Type\":\"PackageInitializeRouter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\initialize\\\\router_biz.go\",\"ImportPath\":\"\\\"github.com/flipped-aurora/gin-vue-admin/server/router\\\"\",\"RelativePath\":\"initialize/router_biz.go\",\"AppName\":\"RouterGroupApp\",\"GroupName\":\"Resume\",\"ModuleName\":\"resumeRouter\",\"PackageName\":\"router\",\"FunctionName\":\"InitResumeBasicInfoRouter\",\"RouterGroupName\":\"\",\"LeftRouterGroupName\":\"privateGroup\",\"RightRouterGroupName\":\"publicGroup\"}","PackageRouterEnter":"{\"Type\":\"PackageRouterEnter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\router\\\\enter.go\",\"ImportPath\":\"\\\"github.com/flipped-aurora/gin-vue-admin/server/router/resume\\\"\",\"StructName\":\"Resume\",\"PackageName\":\"resume\",\"RelativePath\":\"router/enter.go\",\"PackageStructName\":\"RouterGroup\"}","PackageRouterModuleEnter":"{\"Type\":\"PackageRouterModuleEnter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\router\\\\resume\\\\enter.go\",\"ImportPath\":\"api \\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1\\\"\",\"RelativePath\":\"router/resume/enter.go\",\"StructName\":\"ResumeBasicInfoRouter\",\"AppName\":\"ApiGroupApp\",\"GroupName\":\"ResumeApiGroup\",\"ModuleName\":\"基本信息Api\",\"PackageName\":\"api\",\"ServiceName\":\"ResumeBasicInfoApi\"}","PackageServiceEnter":"{\"Type\":\"PackageServiceEnter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\service\\\\enter.go\",\"ImportPath\":\"\\\"github.com/flipped-aurora/gin-vue-admin/server/service/resume\\\"\",\"StructName\":\"ResumeServiceGroup\",\"PackageName\":\"resume\",\"RelativePath\":\"service/enter.go\",\"PackageStructName\":\"ServiceGroup\"}","PackageServiceModuleEnter":"{\"Type\":\"PackageServiceModuleEnter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\service\\\\resume\\\\enter.go\",\"ImportPath\":\"\",\"RelativePath\":\"service/resume/enter.go\",\"StructName\":\"ResumeBasicInfoService\",\"AppName\":\"\",\"GroupName\":\"\",\"ModuleName\":\"\",\"PackageName\":\"\",\"ServiceName\":\"\"}"}', 0, '[132,133,134,135,136,137]', 36, 2, 0);
INSERT INTO "public"."sys_auto_code_histories" VALUES (2, '2025-09-25 09:08:28.227991+00', '2025-09-25 09:08:28.227991+00', NULL, 'resume_work_experience', 'resume', '{"package":"resume","tableName":"resume_work_experience","businessDB":"gva","structName":"ResumeWorkExperience","packageName":"resumeWorkExperience","description":"工作经历管理","abbreviation":"工作经历","humpPackageName":"resumeWorkExperience","gvaModel":true,"autoMigrate":true,"autoCreateResource":true,"autoCreateApiToSql":true,"autoCreateMenuToSql":true,"autoCreateBtnAuth":true,"onlyTemplate":false,"isTree":false,"treeJson":"","isAdd":false,"fields":[{"fieldName":"ResumeId","fieldDesc":"简历ID","fieldType":"int","fieldJson":"resumeId","dataTypeLong":"","comment":"关联简历基本信息ID","columnName":"resume_id","fieldSearchType":"=","fieldSearchHide":false,"dictType":"","form":true,"table":true,"desc":true,"excel":true,"require":true,"defaultValue":"","errorText":"请选择简历","clearable":true,"sort":false,"primaryKey":false,"dataSource":{"dbName":"gva","table":"resume_basic_info","label":"name","value":"id","association":2,"hasDeletedAt":true},"checkDataSource":true,"fieldIndexType":""},{"fieldName":"CompanyName","fieldDesc":"公司名称","fieldType":"string","fieldJson":"companyName","dataTypeLong":"100","comment":"公司名称","columnName":"company_name","fieldSearchType":"LIKE","fieldSearchHide":false,"dictType":"","form":true,"table":true,"desc":true,"excel":true,"require":true,"defaultValue":"","errorText":"请输入公司名称","clearable":true,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"Position","fieldDesc":"职位","fieldType":"string","fieldJson":"position","dataTypeLong":"50","comment":"职位","columnName":"position","fieldSearchType":"LIKE","fieldSearchHide":false,"dictType":"","form":true,"table":true,"desc":true,"excel":true,"require":true,"defaultValue":"","errorText":"请输入职位","clearable":true,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"StartDate","fieldDesc":"开始时间","fieldType":"time.Time","fieldJson":"startDate","dataTypeLong":"","comment":"工作开始时间","columnName":"start_date","fieldSearchType":"BETWEEN","fieldSearchHide":false,"dictType":"","form":true,"table":true,"desc":true,"excel":true,"require":true,"defaultValue":"","errorText":"请选择开始时间","clearable":true,"sort":true,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"EndDate","fieldDesc":"结束时间","fieldType":"time.Time","fieldJson":"endDate","dataTypeLong":"","comment":"工作结束时间","columnName":"end_date","fieldSearchType":"BETWEEN","fieldSearchHide":false,"dictType":"","form":true,"table":true,"desc":true,"excel":true,"require":false,"defaultValue":"","errorText":"","clearable":true,"sort":true,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"IsCurrent","fieldDesc":"是否当前工作","fieldType":"bool","fieldJson":"isCurrent","dataTypeLong":"","comment":"是否为当前工作","columnName":"is_current","fieldSearchType":"=","fieldSearchHide":false,"dictType":"resume_current_status","form":true,"table":true,"desc":true,"excel":true,"require":false,"defaultValue":"false","errorText":"","clearable":false,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"Description","fieldDesc":"工作描述","fieldType":"richtext","fieldJson":"description","dataTypeLong":"2000","comment":"工作描述","columnName":"description","fieldSearchType":"","fieldSearchHide":true,"dictType":"","form":true,"table":false,"desc":true,"excel":false,"require":false,"defaultValue":"","errorText":"","clearable":true,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"Achievements","fieldDesc":"主要成就","fieldType":"richtext","fieldJson":"achievements","dataTypeLong":"2000","comment":"主要成就","columnName":"achievements","fieldSearchType":"","fieldSearchHide":true,"dictType":"","form":true,"table":false,"desc":true,"excel":false,"require":false,"defaultValue":"","errorText":"","clearable":true,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"SortOrder","fieldDesc":"排序","fieldType":"int","fieldJson":"sortOrder","dataTypeLong":"","comment":"排序序号","columnName":"sort_order","fieldSearchType":"","fieldSearchHide":true,"dictType":"","form":true,"table":true,"desc":true,"excel":true,"require":false,"defaultValue":"0","errorText":"","clearable":true,"sort":true,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""}],"generateWeb":true,"generateServer":true,"primaryField":{"fieldName":"ID","fieldDesc":"ID","fieldType":"uint","fieldJson":"ID","dataTypeLong":"20","comment":"主键ID","columnName":"id","fieldSearchType":"","fieldSearchHide":false,"dictType":"","form":false,"table":false,"desc":false,"excel":false,"require":false,"defaultValue":"","errorText":"","clearable":false,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""}}', 'ResumeWorkExperience', 'ResumeWorkExperience', 'gva', '工作经历管理', '{"resource/package/server/api/api.go.tpl":"api/v1/resume/resumeWorkExperience.go","resource/package/server/model/model.go.tpl":"model/resume/resumeWorkExperience.go","resource/package/server/model/request/request.go.tpl":"model/resume/request/resumeWorkExperience.go","resource/package/server/router/router.go.tpl":"router/resume/resumeWorkExperience.go","resource/package/server/service/service.go.tpl":"service/resume/resumeWorkExperience.go","resource/package/web/api/api.js.tpl":"api/resume/resumeWorkExperience.js","resource/package/web/view/form.vue.tpl":"view/resume/resumeWorkExperience/resumeWorkExperienceForm.vue","resource/package/web/view/table.vue.tpl":"view/resume/resumeWorkExperience/resumeWorkExperience.vue"}', '{"PackageApiEnter":"{\"Type\":\"PackageApiEnter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\api\\\\v1\\\\enter.go\",\"ImportPath\":\"\\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1/resume\\\"\",\"StructName\":\"ResumeApiGroup\",\"PackageName\":\"resume\",\"RelativePath\":\"api/v1/enter.go\",\"PackageStructName\":\"ApiGroup\"}","PackageApiModuleEnter":"{\"Type\":\"PackageApiModuleEnter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\api\\\\v1\\\\resume\\\\enter.go\",\"ImportPath\":\"\\\"github.com/flipped-aurora/gin-vue-admin/server/service\\\"\",\"RelativePath\":\"api/v1/resume/enter.go\",\"StructName\":\"ResumeWorkExperienceApi\",\"AppName\":\"ServiceGroupApp\",\"GroupName\":\"ResumeServiceGroup\",\"ModuleName\":\"工作经历Service\",\"PackageName\":\"service\",\"ServiceName\":\"ResumeWorkExperienceService\"}","PackageInitializeGorm":"{\"Type\":\"PackageInitializeGorm\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\initialize\\\\gorm_biz.go\",\"ImportPath\":\"\\\"github.com/flipped-aurora/gin-vue-admin/server/model/resume\\\"\",\"Business\":\"gva\",\"StructName\":\"ResumeWorkExperience\",\"PackageName\":\"resume\",\"RelativePath\":\"initialize/gorm_biz.go\",\"IsNew\":true}","PackageInitializeRouter":"{\"Type\":\"PackageInitializeRouter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\initialize\\\\router_biz.go\",\"ImportPath\":\"\\\"github.com/flipped-aurora/gin-vue-admin/server/router\\\"\",\"RelativePath\":\"initialize/router_biz.go\",\"AppName\":\"RouterGroupApp\",\"GroupName\":\"Resume\",\"ModuleName\":\"resumeRouter\",\"PackageName\":\"router\",\"FunctionName\":\"InitResumeWorkExperienceRouter\",\"RouterGroupName\":\"\",\"LeftRouterGroupName\":\"privateGroup\",\"RightRouterGroupName\":\"publicGroup\"}","PackageRouterEnter":"{\"Type\":\"PackageRouterEnter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\router\\\\enter.go\",\"ImportPath\":\"\\\"github.com/flipped-aurora/gin-vue-admin/server/router/resume\\\"\",\"StructName\":\"Resume\",\"PackageName\":\"resume\",\"RelativePath\":\"router/enter.go\",\"PackageStructName\":\"RouterGroup\"}","PackageRouterModuleEnter":"{\"Type\":\"PackageRouterModuleEnter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\router\\\\resume\\\\enter.go\",\"ImportPath\":\"api \\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1\\\"\",\"RelativePath\":\"router/resume/enter.go\",\"StructName\":\"ResumeWorkExperienceRouter\",\"AppName\":\"ApiGroupApp\",\"GroupName\":\"ResumeApiGroup\",\"ModuleName\":\"工作经历Api\",\"PackageName\":\"api\",\"ServiceName\":\"ResumeWorkExperienceApi\"}","PackageServiceEnter":"{\"Type\":\"PackageServiceEnter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\service\\\\enter.go\",\"ImportPath\":\"\\\"github.com/flipped-aurora/gin-vue-admin/server/service/resume\\\"\",\"StructName\":\"ResumeServiceGroup\",\"PackageName\":\"resume\",\"RelativePath\":\"service/enter.go\",\"PackageStructName\":\"ServiceGroup\"}","PackageServiceModuleEnter":"{\"Type\":\"PackageServiceModuleEnter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\service\\\\resume\\\\enter.go\",\"ImportPath\":\"\",\"RelativePath\":\"service/resume/enter.go\",\"StructName\":\"ResumeWorkExperienceService\",\"AppName\":\"\",\"GroupName\":\"\",\"ModuleName\":\"\",\"PackageName\":\"\",\"ServiceName\":\"\"}"}', 0, '[138,139,140,141,142,143]', 37, 3, 0);
INSERT INTO "public"."sys_auto_code_histories" VALUES (3, '2025-09-25 09:08:28.264822+00', '2025-09-25 09:08:28.264822+00', NULL, 'resume_education', 'resume', '{"package":"resume","tableName":"resume_education","businessDB":"gva","structName":"ResumeEducation","packageName":"resumeEducation","description":"教育背景管理","abbreviation":"教育背景","humpPackageName":"resumeEducation","gvaModel":true,"autoMigrate":true,"autoCreateResource":true,"autoCreateApiToSql":true,"autoCreateMenuToSql":true,"autoCreateBtnAuth":true,"onlyTemplate":false,"isTree":false,"treeJson":"","isAdd":false,"fields":[{"fieldName":"ResumeId","fieldDesc":"简历ID","fieldType":"int","fieldJson":"resumeId","dataTypeLong":"","comment":"关联简历基本信息ID","columnName":"resume_id","fieldSearchType":"=","fieldSearchHide":false,"dictType":"","form":true,"table":true,"desc":true,"excel":true,"require":true,"defaultValue":"","errorText":"请选择简历","clearable":true,"sort":false,"primaryKey":false,"dataSource":{"dbName":"gva","table":"resume_basic_info","label":"name","value":"id","association":2,"hasDeletedAt":true},"checkDataSource":true,"fieldIndexType":""},{"fieldName":"School","fieldDesc":"学校","fieldType":"string","fieldJson":"school","dataTypeLong":"100","comment":"学校名称","columnName":"school","fieldSearchType":"LIKE","fieldSearchHide":false,"dictType":"","form":true,"table":true,"desc":true,"excel":true,"require":true,"defaultValue":"","errorText":"请输入学校名称","clearable":true,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"Major","fieldDesc":"专业","fieldType":"string","fieldJson":"major","dataTypeLong":"100","comment":"专业","columnName":"major","fieldSearchType":"LIKE","fieldSearchHide":false,"dictType":"","form":true,"table":true,"desc":true,"excel":true,"require":true,"defaultValue":"","errorText":"请输入专业","clearable":true,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"Degree","fieldDesc":"学历","fieldType":"string","fieldJson":"degree","dataTypeLong":"50","comment":"学历","columnName":"degree","fieldSearchType":"=","fieldSearchHide":false,"dictType":"resume_degree_type","form":true,"table":true,"desc":true,"excel":true,"require":true,"defaultValue":"","errorText":"请选择学历","clearable":true,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"StartDate","fieldDesc":"入学时间","fieldType":"time.Time","fieldJson":"startDate","dataTypeLong":"","comment":"入学时间","columnName":"start_date","fieldSearchType":"BETWEEN","fieldSearchHide":false,"dictType":"","form":true,"table":true,"desc":true,"excel":true,"require":true,"defaultValue":"","errorText":"请选择入学时间","clearable":true,"sort":true,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"EndDate","fieldDesc":"毕业时间","fieldType":"time.Time","fieldJson":"endDate","dataTypeLong":"","comment":"毕业时间","columnName":"end_date","fieldSearchType":"BETWEEN","fieldSearchHide":false,"dictType":"","form":true,"table":true,"desc":true,"excel":true,"require":true,"defaultValue":"","errorText":"请选择毕业时间","clearable":true,"sort":true,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"GPA","fieldDesc":"GPA成绩","fieldType":"string","fieldJson":"gpa","dataTypeLong":"20","comment":"GPA成绩","columnName":"gpa","fieldSearchType":"","fieldSearchHide":true,"dictType":"","form":true,"table":true,"desc":true,"excel":true,"require":false,"defaultValue":"","errorText":"","clearable":true,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"Description","fieldDesc":"在校表现","fieldType":"richtext","fieldJson":"description","dataTypeLong":"1000","comment":"在校表现描述","columnName":"description","fieldSearchType":"","fieldSearchHide":true,"dictType":"","form":true,"table":false,"desc":true,"excel":false,"require":false,"defaultValue":"","errorText":"","clearable":true,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""}],"generateWeb":true,"generateServer":true,"primaryField":{"fieldName":"ID","fieldDesc":"ID","fieldType":"uint","fieldJson":"ID","dataTypeLong":"20","comment":"主键ID","columnName":"id","fieldSearchType":"","fieldSearchHide":false,"dictType":"","form":false,"table":false,"desc":false,"excel":false,"require":false,"defaultValue":"","errorText":"","clearable":false,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""}}', 'ResumeEducation', 'ResumeEducation', 'gva', '教育背景管理', '{"resource/package/server/api/api.go.tpl":"api/v1/resume/resumeEducation.go","resource/package/server/model/model.go.tpl":"model/resume/resumeEducation.go","resource/package/server/model/request/request.go.tpl":"model/resume/request/resumeEducation.go","resource/package/server/router/router.go.tpl":"router/resume/resumeEducation.go","resource/package/server/service/service.go.tpl":"service/resume/resumeEducation.go","resource/package/web/api/api.js.tpl":"api/resume/resumeEducation.js","resource/package/web/view/form.vue.tpl":"view/resume/resumeEducation/resumeEducationForm.vue","resource/package/web/view/table.vue.tpl":"view/resume/resumeEducation/resumeEducation.vue"}', '{"PackageApiEnter":"{\"Type\":\"PackageApiEnter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\api\\\\v1\\\\enter.go\",\"ImportPath\":\"\\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1/resume\\\"\",\"StructName\":\"ResumeApiGroup\",\"PackageName\":\"resume\",\"RelativePath\":\"api/v1/enter.go\",\"PackageStructName\":\"ApiGroup\"}","PackageApiModuleEnter":"{\"Type\":\"PackageApiModuleEnter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\api\\\\v1\\\\resume\\\\enter.go\",\"ImportPath\":\"\\\"github.com/flipped-aurora/gin-vue-admin/server/service\\\"\",\"RelativePath\":\"api/v1/resume/enter.go\",\"StructName\":\"ResumeEducationApi\",\"AppName\":\"ServiceGroupApp\",\"GroupName\":\"ResumeServiceGroup\",\"ModuleName\":\"教育背景Service\",\"PackageName\":\"service\",\"ServiceName\":\"ResumeEducationService\"}","PackageInitializeGorm":"{\"Type\":\"PackageInitializeGorm\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\initialize\\\\gorm_biz.go\",\"ImportPath\":\"\\\"github.com/flipped-aurora/gin-vue-admin/server/model/resume\\\"\",\"Business\":\"gva\",\"StructName\":\"ResumeEducation\",\"PackageName\":\"resume\",\"RelativePath\":\"initialize/gorm_biz.go\",\"IsNew\":true}","PackageInitializeRouter":"{\"Type\":\"PackageInitializeRouter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\initialize\\\\router_biz.go\",\"ImportPath\":\"\\\"github.com/flipped-aurora/gin-vue-admin/server/router\\\"\",\"RelativePath\":\"initialize/router_biz.go\",\"AppName\":\"RouterGroupApp\",\"GroupName\":\"Resume\",\"ModuleName\":\"resumeRouter\",\"PackageName\":\"router\",\"FunctionName\":\"InitResumeEducationRouter\",\"RouterGroupName\":\"\",\"LeftRouterGroupName\":\"privateGroup\",\"RightRouterGroupName\":\"publicGroup\"}","PackageRouterEnter":"{\"Type\":\"PackageRouterEnter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\router\\\\enter.go\",\"ImportPath\":\"\\\"github.com/flipped-aurora/gin-vue-admin/server/router/resume\\\"\",\"StructName\":\"Resume\",\"PackageName\":\"resume\",\"RelativePath\":\"router/enter.go\",\"PackageStructName\":\"RouterGroup\"}","PackageRouterModuleEnter":"{\"Type\":\"PackageRouterModuleEnter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\router\\\\resume\\\\enter.go\",\"ImportPath\":\"api \\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1\\\"\",\"RelativePath\":\"router/resume/enter.go\",\"StructName\":\"ResumeEducationRouter\",\"AppName\":\"ApiGroupApp\",\"GroupName\":\"ResumeApiGroup\",\"ModuleName\":\"教育背景Api\",\"PackageName\":\"api\",\"ServiceName\":\"ResumeEducationApi\"}","PackageServiceEnter":"{\"Type\":\"PackageServiceEnter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\service\\\\enter.go\",\"ImportPath\":\"\\\"github.com/flipped-aurora/gin-vue-admin/server/service/resume\\\"\",\"StructName\":\"ResumeServiceGroup\",\"PackageName\":\"resume\",\"RelativePath\":\"service/enter.go\",\"PackageStructName\":\"ServiceGroup\"}","PackageServiceModuleEnter":"{\"Type\":\"PackageServiceModuleEnter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\service\\\\resume\\\\enter.go\",\"ImportPath\":\"\",\"RelativePath\":\"service/resume/enter.go\",\"StructName\":\"ResumeEducationService\",\"AppName\":\"\",\"GroupName\":\"\",\"ModuleName\":\"\",\"PackageName\":\"\",\"ServiceName\":\"\"}"}', 0, '[144,145,146,147,148,149]', 38, 4, 0);
INSERT INTO "public"."sys_auto_code_histories" VALUES (4, '2025-09-25 09:08:28.304362+00', '2025-09-25 09:08:28.304362+00', NULL, 'resume_project', 'resume', '{"package":"resume","tableName":"resume_project","businessDB":"gva","structName":"ResumeProject","packageName":"resumeProject","description":"项目经验管理","abbreviation":"项目经验","humpPackageName":"resumeProject","gvaModel":true,"autoMigrate":true,"autoCreateResource":true,"autoCreateApiToSql":true,"autoCreateMenuToSql":true,"autoCreateBtnAuth":true,"onlyTemplate":false,"isTree":false,"treeJson":"","isAdd":false,"fields":[{"fieldName":"ResumeId","fieldDesc":"简历ID","fieldType":"int","fieldJson":"resumeId","dataTypeLong":"","comment":"关联简历基本信息ID","columnName":"resume_id","fieldSearchType":"=","fieldSearchHide":false,"dictType":"","form":true,"table":true,"desc":true,"excel":true,"require":true,"defaultValue":"","errorText":"请选择简历","clearable":true,"sort":false,"primaryKey":false,"dataSource":{"dbName":"gva","table":"resume_basic_info","label":"name","value":"id","association":2,"hasDeletedAt":true},"checkDataSource":true,"fieldIndexType":""},{"fieldName":"ProjectName","fieldDesc":"项目名称","fieldType":"string","fieldJson":"projectName","dataTypeLong":"100","comment":"项目名称","columnName":"project_name","fieldSearchType":"LIKE","fieldSearchHide":false,"dictType":"","form":true,"table":true,"desc":true,"excel":true,"require":true,"defaultValue":"","errorText":"请输入项目名称","clearable":true,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"Role","fieldDesc":"担任角色","fieldType":"string","fieldJson":"role","dataTypeLong":"50","comment":"在项目中担任的角色","columnName":"role","fieldSearchType":"LIKE","fieldSearchHide":false,"dictType":"","form":true,"table":true,"desc":true,"excel":true,"require":true,"defaultValue":"","errorText":"请输入担任角色","clearable":true,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"StartDate","fieldDesc":"开始时间","fieldType":"time.Time","fieldJson":"startDate","dataTypeLong":"","comment":"项目开始时间","columnName":"start_date","fieldSearchType":"BETWEEN","fieldSearchHide":false,"dictType":"","form":true,"table":true,"desc":true,"excel":true,"require":true,"defaultValue":"","errorText":"请选择开始时间","clearable":true,"sort":true,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"EndDate","fieldDesc":"结束时间","fieldType":"time.Time","fieldJson":"endDate","dataTypeLong":"","comment":"项目结束时间","columnName":"end_date","fieldSearchType":"BETWEEN","fieldSearchHide":false,"dictType":"","form":true,"table":true,"desc":true,"excel":true,"require":false,"defaultValue":"","errorText":"","clearable":true,"sort":true,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"Technologies","fieldDesc":"技术栈","fieldType":"json","fieldJson":"technologies","dataTypeLong":"500","comment":"使用的技术栈","columnName":"technologies","fieldSearchType":"","fieldSearchHide":true,"dictType":"","form":true,"table":false,"desc":true,"excel":false,"require":false,"defaultValue":"","errorText":"","clearable":true,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"Description","fieldDesc":"项目描述","fieldType":"richtext","fieldJson":"description","dataTypeLong":"2000","comment":"项目详细描述","columnName":"description","fieldSearchType":"","fieldSearchHide":true,"dictType":"","form":true,"table":false,"desc":true,"excel":false,"require":false,"defaultValue":"","errorText":"","clearable":true,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"Achievements","fieldDesc":"项目成果","fieldType":"richtext","fieldJson":"achievements","dataTypeLong":"2000","comment":"项目成果和个人贡献","columnName":"achievements","fieldSearchType":"","fieldSearchHide":true,"dictType":"","form":true,"table":false,"desc":true,"excel":false,"require":false,"defaultValue":"","errorText":"","clearable":true,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"ProjectUrl","fieldDesc":"项目链接","fieldType":"string","fieldJson":"projectUrl","dataTypeLong":"255","comment":"项目访问链接","columnName":"project_url","fieldSearchType":"","fieldSearchHide":true,"dictType":"","form":true,"table":true,"desc":true,"excel":true,"require":false,"defaultValue":"","errorText":"","clearable":true,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""},{"fieldName":"Screenshots","fieldDesc":"项目截图","fieldType":"pictures","fieldJson":"screenshots","dataTypeLong":"1000","comment":"项目截图","columnName":"screenshots","fieldSearchType":"","fieldSearchHide":true,"dictType":"","form":true,"table":false,"desc":true,"excel":false,"require":false,"defaultValue":"","errorText":"","clearable":true,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""}],"generateWeb":true,"generateServer":true,"primaryField":{"fieldName":"ID","fieldDesc":"ID","fieldType":"uint","fieldJson":"ID","dataTypeLong":"20","comment":"主键ID","columnName":"id","fieldSearchType":"","fieldSearchHide":false,"dictType":"","form":false,"table":false,"desc":false,"excel":false,"require":false,"defaultValue":"","errorText":"","clearable":false,"sort":false,"primaryKey":false,"dataSource":null,"checkDataSource":false,"fieldIndexType":""}}', 'ResumeProject', 'ResumeProject', 'gva', '项目经验管理', '{"resource/package/server/api/api.go.tpl":"api/v1/resume/resumeProject.go","resource/package/server/model/model.go.tpl":"model/resume/resumeProject.go","resource/package/server/model/request/request.go.tpl":"model/resume/request/resumeProject.go","resource/package/server/router/router.go.tpl":"router/resume/resumeProject.go","resource/package/server/service/service.go.tpl":"service/resume/resumeProject.go","resource/package/web/api/api.js.tpl":"api/resume/resumeProject.js","resource/package/web/view/form.vue.tpl":"view/resume/resumeProject/resumeProjectForm.vue","resource/package/web/view/table.vue.tpl":"view/resume/resumeProject/resumeProject.vue"}', '{"PackageApiEnter":"{\"Type\":\"PackageApiEnter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\api\\\\v1\\\\enter.go\",\"ImportPath\":\"\\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1/resume\\\"\",\"StructName\":\"ResumeApiGroup\",\"PackageName\":\"resume\",\"RelativePath\":\"api/v1/enter.go\",\"PackageStructName\":\"ApiGroup\"}","PackageApiModuleEnter":"{\"Type\":\"PackageApiModuleEnter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\api\\\\v1\\\\resume\\\\enter.go\",\"ImportPath\":\"\\\"github.com/flipped-aurora/gin-vue-admin/server/service\\\"\",\"RelativePath\":\"api/v1/resume/enter.go\",\"StructName\":\"ResumeProjectApi\",\"AppName\":\"ServiceGroupApp\",\"GroupName\":\"ResumeServiceGroup\",\"ModuleName\":\"项目经验Service\",\"PackageName\":\"service\",\"ServiceName\":\"ResumeProjectService\"}","PackageInitializeGorm":"{\"Type\":\"PackageInitializeGorm\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\initialize\\\\gorm_biz.go\",\"ImportPath\":\"\\\"github.com/flipped-aurora/gin-vue-admin/server/model/resume\\\"\",\"Business\":\"gva\",\"StructName\":\"ResumeProject\",\"PackageName\":\"resume\",\"RelativePath\":\"initialize/gorm_biz.go\",\"IsNew\":true}","PackageInitializeRouter":"{\"Type\":\"PackageInitializeRouter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\initialize\\\\router_biz.go\",\"ImportPath\":\"\\\"github.com/flipped-aurora/gin-vue-admin/server/router\\\"\",\"RelativePath\":\"initialize/router_biz.go\",\"AppName\":\"RouterGroupApp\",\"GroupName\":\"Resume\",\"ModuleName\":\"resumeRouter\",\"PackageName\":\"router\",\"FunctionName\":\"InitResumeProjectRouter\",\"RouterGroupName\":\"\",\"LeftRouterGroupName\":\"privateGroup\",\"RightRouterGroupName\":\"publicGroup\"}","PackageRouterEnter":"{\"Type\":\"PackageRouterEnter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\router\\\\enter.go\",\"ImportPath\":\"\\\"github.com/flipped-aurora/gin-vue-admin/server/router/resume\\\"\",\"StructName\":\"Resume\",\"PackageName\":\"resume\",\"RelativePath\":\"router/enter.go\",\"PackageStructName\":\"RouterGroup\"}","PackageRouterModuleEnter":"{\"Type\":\"PackageRouterModuleEnter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\router\\\\resume\\\\enter.go\",\"ImportPath\":\"api \\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1\\\"\",\"RelativePath\":\"router/resume/enter.go\",\"StructName\":\"ResumeProjectRouter\",\"AppName\":\"ApiGroupApp\",\"GroupName\":\"ResumeApiGroup\",\"ModuleName\":\"项目经验Api\",\"PackageName\":\"api\",\"ServiceName\":\"ResumeProjectApi\"}","PackageServiceEnter":"{\"Type\":\"PackageServiceEnter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\service\\\\enter.go\",\"ImportPath\":\"\\\"github.com/flipped-aurora/gin-vue-admin/server/service/resume\\\"\",\"StructName\":\"ResumeServiceGroup\",\"PackageName\":\"resume\",\"RelativePath\":\"service/enter.go\",\"PackageStructName\":\"ServiceGroup\"}","PackageServiceModuleEnter":"{\"Type\":\"PackageServiceModuleEnter\",\"Path\":\"E:\\\\company\\\\zzzz\\\\MyResume\\\\server\\\\service\\\\resume\\\\enter.go\",\"ImportPath\":\"\",\"RelativePath\":\"service/resume/enter.go\",\"StructName\":\"ResumeProjectService\",\"AppName\":\"\",\"GroupName\":\"\",\"ModuleName\":\"\",\"PackageName\":\"\",\"ServiceName\":\"\"}"}', 0, '[150,151,152,153,154,155]', 39, 5, 0);

-- ----------------------------
-- Table structure for sys_auto_code_packages
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_auto_code_packages";
CREATE TABLE "public"."sys_auto_code_packages" (
  "id" int8 NOT NULL DEFAULT nextval('sys_auto_code_packages_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "desc" text COLLATE "pg_catalog"."default",
  "label" text COLLATE "pg_catalog"."default",
  "template" text COLLATE "pg_catalog"."default",
  "package_name" text COLLATE "pg_catalog"."default",
  "module" text COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_auto_code_packages"."desc" IS '描述';
COMMENT ON COLUMN "public"."sys_auto_code_packages"."label" IS '展示名';
COMMENT ON COLUMN "public"."sys_auto_code_packages"."template" IS '模版';
COMMENT ON COLUMN "public"."sys_auto_code_packages"."package_name" IS '包名';

-- ----------------------------
-- Records of sys_auto_code_packages
-- ----------------------------
INSERT INTO "public"."sys_auto_code_packages" VALUES (1, '2025-09-25 06:59:33.757348+00', '2025-09-25 06:59:33.757348+00', NULL, '系统自动读取example包', 'example包', 'package', 'example', 'github.com/flipped-aurora/gin-vue-admin/server');
INSERT INTO "public"."sys_auto_code_packages" VALUES (2, '2025-09-25 06:59:33.757348+00', '2025-09-25 06:59:33.757348+00', NULL, '系统自动读取system包', 'system包', 'package', 'system', 'github.com/flipped-aurora/gin-vue-admin/server');
INSERT INTO "public"."sys_auto_code_packages" VALUES (3, '2025-09-25 06:59:33.757348+00', '2025-09-25 06:59:33.757348+00', NULL, '系统自动读取announcement插件，使用前请确认是否为v2版本插件', 'announcement插件', 'plugin', 'announcement', 'github.com/flipped-aurora/gin-vue-admin/server');
INSERT INTO "public"."sys_auto_code_packages" VALUES (4, '2025-09-25 06:59:33.758397+00', '2025-09-25 06:59:33.758397+00', NULL, '系统自动读取example包', 'example包', 'package', 'example', 'github.com/flipped-aurora/gin-vue-admin/server');
INSERT INTO "public"."sys_auto_code_packages" VALUES (6, '2025-09-25 06:59:33.758397+00', '2025-09-25 06:59:33.758397+00', NULL, '系统自动读取system包', 'system包', 'package', 'system', 'github.com/flipped-aurora/gin-vue-admin/server');
INSERT INTO "public"."sys_auto_code_packages" VALUES (7, '2025-09-25 06:59:33.758397+00', '2025-09-25 06:59:33.758397+00', NULL, '系统自动读取announcement插件，使用前请确认是否为v2版本插件', 'announcement插件', 'plugin', 'announcement', 'github.com/flipped-aurora/gin-vue-admin/server');
INSERT INTO "public"."sys_auto_code_packages" VALUES (5, '2025-09-25 06:59:33.758397+00', '2025-09-25 06:59:33.758397+00', NULL, '系统自动读取example包', 'example包', 'package', 'example', 'github.com/flipped-aurora/gin-vue-admin/server');
INSERT INTO "public"."sys_auto_code_packages" VALUES (9, '2025-09-25 06:59:33.758397+00', '2025-09-25 06:59:33.758397+00', NULL, '系统自动读取system包', 'system包', 'package', 'system', 'github.com/flipped-aurora/gin-vue-admin/server');
INSERT INTO "public"."sys_auto_code_packages" VALUES (10, '2025-09-25 06:59:33.758397+00', '2025-09-25 06:59:33.758397+00', NULL, '系统自动读取announcement插件，使用前请确认是否为v2版本插件', 'announcement插件', 'plugin', 'announcement', 'github.com/flipped-aurora/gin-vue-admin/server');
INSERT INTO "public"."sys_auto_code_packages" VALUES (8, '2025-09-25 06:59:33.758397+00', '2025-09-25 06:59:33.758397+00', NULL, '系统自动读取example包', 'example包', 'package', 'example', 'github.com/flipped-aurora/gin-vue-admin/server');
INSERT INTO "public"."sys_auto_code_packages" VALUES (11, '2025-09-25 06:59:33.758397+00', '2025-09-25 06:59:33.758397+00', NULL, '系统自动读取system包', 'system包', 'package', 'system', 'github.com/flipped-aurora/gin-vue-admin/server');
INSERT INTO "public"."sys_auto_code_packages" VALUES (13, '2025-09-25 06:59:33.758397+00', '2025-09-25 06:59:33.758397+00', NULL, '系统自动读取announcement插件，使用前请确认是否为v2版本插件', 'announcement插件', 'plugin', 'announcement', 'github.com/flipped-aurora/gin-vue-admin/server');
INSERT INTO "public"."sys_auto_code_packages" VALUES (12, '2025-09-25 06:59:33.758397+00', '2025-09-25 06:59:33.758397+00', NULL, '系统自动读取example包', 'example包', 'package', 'example', 'github.com/flipped-aurora/gin-vue-admin/server');
INSERT INTO "public"."sys_auto_code_packages" VALUES (14, '2025-09-25 06:59:33.758397+00', '2025-09-25 06:59:33.758397+00', NULL, '系统自动读取system包', 'system包', 'package', 'system', 'github.com/flipped-aurora/gin-vue-admin/server');
INSERT INTO "public"."sys_auto_code_packages" VALUES (15, '2025-09-25 06:59:33.758397+00', '2025-09-25 06:59:33.758397+00', NULL, '系统自动读取announcement插件，使用前请确认是否为v2版本插件', 'announcement插件', 'plugin', 'announcement', 'github.com/flipped-aurora/gin-vue-admin/server');
INSERT INTO "public"."sys_auto_code_packages" VALUES (16, '2025-09-25 09:08:28.12889+00', '2025-09-25 09:08:28.12889+00', NULL, '简历管理系统包', '简历管理', 'package', 'resume', 'github.com/flipped-aurora/gin-vue-admin/server');

-- ----------------------------
-- Table structure for sys_base_menu_btns
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_base_menu_btns";
CREATE TABLE "public"."sys_base_menu_btns" (
  "id" int8 NOT NULL DEFAULT nextval('sys_base_menu_btns_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "name" text COLLATE "pg_catalog"."default",
  "desc" text COLLATE "pg_catalog"."default",
  "sys_base_menu_id" int8
)
;
COMMENT ON COLUMN "public"."sys_base_menu_btns"."name" IS '按钮关键key';
COMMENT ON COLUMN "public"."sys_base_menu_btns"."sys_base_menu_id" IS '菜单ID';

-- ----------------------------
-- Records of sys_base_menu_btns
-- ----------------------------
INSERT INTO "public"."sys_base_menu_btns" VALUES (9, '2025-09-25 09:08:28.223688+00', '2025-09-25 09:08:28.223688+00', NULL, 'add', '新增', 37);
INSERT INTO "public"."sys_base_menu_btns" VALUES (10, '2025-09-25 09:08:28.223688+00', '2025-09-25 09:08:28.223688+00', NULL, 'batchDelete', '批量删除', 37);
INSERT INTO "public"."sys_base_menu_btns" VALUES (11, '2025-09-25 09:08:28.223688+00', '2025-09-25 09:08:28.223688+00', NULL, 'delete', '删除', 37);
INSERT INTO "public"."sys_base_menu_btns" VALUES (12, '2025-09-25 09:08:28.223688+00', '2025-09-25 09:08:28.223688+00', NULL, 'edit', '编辑', 37);
INSERT INTO "public"."sys_base_menu_btns" VALUES (13, '2025-09-25 09:08:28.223688+00', '2025-09-25 09:08:28.223688+00', NULL, 'info', '详情', 37);
INSERT INTO "public"."sys_base_menu_btns" VALUES (14, '2025-09-25 09:08:28.223688+00', '2025-09-25 09:08:28.223688+00', NULL, 'exportTemplate', '导出模板', 37);
INSERT INTO "public"."sys_base_menu_btns" VALUES (15, '2025-09-25 09:08:28.223688+00', '2025-09-25 09:08:28.223688+00', NULL, 'exportExcel', '导出Excel', 37);
INSERT INTO "public"."sys_base_menu_btns" VALUES (16, '2025-09-25 09:08:28.223688+00', '2025-09-25 09:08:28.223688+00', NULL, 'importExcel', '导入Excel', 37);
INSERT INTO "public"."sys_base_menu_btns" VALUES (25, '2025-09-25 09:08:28.300124+00', '2025-09-25 09:08:28.300124+00', NULL, 'add', '新增', 39);
INSERT INTO "public"."sys_base_menu_btns" VALUES (26, '2025-09-25 09:08:28.300124+00', '2025-09-25 09:08:28.300124+00', NULL, 'batchDelete', '批量删除', 39);
INSERT INTO "public"."sys_base_menu_btns" VALUES (27, '2025-09-25 09:08:28.300124+00', '2025-09-25 09:08:28.300124+00', NULL, 'delete', '删除', 39);
INSERT INTO "public"."sys_base_menu_btns" VALUES (28, '2025-09-25 09:08:28.300124+00', '2025-09-25 09:08:28.300124+00', NULL, 'edit', '编辑', 39);
INSERT INTO "public"."sys_base_menu_btns" VALUES (29, '2025-09-25 09:08:28.300124+00', '2025-09-25 09:08:28.300124+00', NULL, 'info', '详情', 39);
INSERT INTO "public"."sys_base_menu_btns" VALUES (30, '2025-09-25 09:08:28.300124+00', '2025-09-25 09:08:28.300124+00', NULL, 'exportTemplate', '导出模板', 39);
INSERT INTO "public"."sys_base_menu_btns" VALUES (31, '2025-09-25 09:08:28.300124+00', '2025-09-25 09:08:28.300124+00', NULL, 'exportExcel', '导出Excel', 39);
INSERT INTO "public"."sys_base_menu_btns" VALUES (32, '2025-09-25 09:08:28.300124+00', '2025-09-25 09:08:28.300124+00', NULL, 'importExcel', '导入Excel', 39);
INSERT INTO "public"."sys_base_menu_btns" VALUES (1, '2025-09-25 09:08:28.186963+00', '2025-09-25 09:08:28.186963+00', NULL, 'add', '新增', 36);
INSERT INTO "public"."sys_base_menu_btns" VALUES (2, '2025-09-25 09:08:28.186963+00', '2025-09-25 09:08:28.186963+00', NULL, 'batchDelete', '批量删除', 36);
INSERT INTO "public"."sys_base_menu_btns" VALUES (3, '2025-09-25 09:08:28.186963+00', '2025-09-25 09:08:28.186963+00', NULL, 'delete', '删除', 36);
INSERT INTO "public"."sys_base_menu_btns" VALUES (4, '2025-09-25 09:08:28.186963+00', '2025-09-25 09:08:28.186963+00', NULL, 'edit', '编辑', 36);
INSERT INTO "public"."sys_base_menu_btns" VALUES (5, '2025-09-25 09:08:28.186963+00', '2025-09-25 09:08:28.186963+00', NULL, 'info', '详情', 36);
INSERT INTO "public"."sys_base_menu_btns" VALUES (6, '2025-09-25 09:08:28.186963+00', '2025-09-25 09:08:28.186963+00', NULL, 'exportTemplate', '导出模板', 36);
INSERT INTO "public"."sys_base_menu_btns" VALUES (7, '2025-09-25 09:08:28.186963+00', '2025-09-25 09:08:28.186963+00', NULL, 'exportExcel', '导出Excel', 36);
INSERT INTO "public"."sys_base_menu_btns" VALUES (8, '2025-09-25 09:08:28.186963+00', '2025-09-25 09:08:28.186963+00', NULL, 'importExcel', '导入Excel', 36);
INSERT INTO "public"."sys_base_menu_btns" VALUES (17, '2025-09-25 09:08:28.260123+00', '2025-09-25 09:08:28.260123+00', NULL, 'add', '新增', 38);
INSERT INTO "public"."sys_base_menu_btns" VALUES (18, '2025-09-25 09:08:28.260123+00', '2025-09-25 09:08:28.260123+00', NULL, 'batchDelete', '批量删除', 38);
INSERT INTO "public"."sys_base_menu_btns" VALUES (19, '2025-09-25 09:08:28.260123+00', '2025-09-25 09:08:28.260123+00', NULL, 'delete', '删除', 38);
INSERT INTO "public"."sys_base_menu_btns" VALUES (20, '2025-09-25 09:08:28.260123+00', '2025-09-25 09:08:28.260123+00', NULL, 'edit', '编辑', 38);
INSERT INTO "public"."sys_base_menu_btns" VALUES (21, '2025-09-25 09:08:28.260123+00', '2025-09-25 09:08:28.260123+00', NULL, 'info', '详情', 38);
INSERT INTO "public"."sys_base_menu_btns" VALUES (22, '2025-09-25 09:08:28.260123+00', '2025-09-25 09:08:28.260123+00', NULL, 'exportTemplate', '导出模板', 38);
INSERT INTO "public"."sys_base_menu_btns" VALUES (23, '2025-09-25 09:08:28.260123+00', '2025-09-25 09:08:28.260123+00', NULL, 'exportExcel', '导出Excel', 38);
INSERT INTO "public"."sys_base_menu_btns" VALUES (24, '2025-09-25 09:08:28.260123+00', '2025-09-25 09:08:28.260123+00', NULL, 'importExcel', '导入Excel', 38);

-- ----------------------------
-- Table structure for sys_base_menu_parameters
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_base_menu_parameters";
CREATE TABLE "public"."sys_base_menu_parameters" (
  "id" int8 NOT NULL DEFAULT nextval('sys_base_menu_parameters_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "sys_base_menu_id" int8,
  "type" text COLLATE "pg_catalog"."default",
  "key" text COLLATE "pg_catalog"."default",
  "value" text COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_base_menu_parameters"."type" IS '地址栏携带参数为params还是query';
COMMENT ON COLUMN "public"."sys_base_menu_parameters"."key" IS '地址栏携带参数的key';
COMMENT ON COLUMN "public"."sys_base_menu_parameters"."value" IS '地址栏携带参数的值';

-- ----------------------------
-- Records of sys_base_menu_parameters
-- ----------------------------

-- ----------------------------
-- Table structure for sys_base_menus
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_base_menus";
CREATE TABLE "public"."sys_base_menus" (
  "id" int8 NOT NULL DEFAULT nextval('sys_base_menus_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "menu_level" int8,
  "parent_id" int8,
  "path" text COLLATE "pg_catalog"."default",
  "name" text COLLATE "pg_catalog"."default",
  "hidden" bool,
  "component" text COLLATE "pg_catalog"."default",
  "sort" int8,
  "active_name" text COLLATE "pg_catalog"."default",
  "keep_alive" bool,
  "default_menu" bool,
  "title" text COLLATE "pg_catalog"."default",
  "icon" text COLLATE "pg_catalog"."default",
  "close_tab" bool,
  "transition_type" text COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_base_menus"."parent_id" IS '父菜单ID';
COMMENT ON COLUMN "public"."sys_base_menus"."path" IS '路由path';
COMMENT ON COLUMN "public"."sys_base_menus"."name" IS '路由name';
COMMENT ON COLUMN "public"."sys_base_menus"."hidden" IS '是否在列表隐藏';
COMMENT ON COLUMN "public"."sys_base_menus"."component" IS '对应前端文件路径';
COMMENT ON COLUMN "public"."sys_base_menus"."sort" IS '排序标记';
COMMENT ON COLUMN "public"."sys_base_menus"."active_name" IS '高亮菜单';
COMMENT ON COLUMN "public"."sys_base_menus"."keep_alive" IS '是否缓存';
COMMENT ON COLUMN "public"."sys_base_menus"."default_menu" IS '是否是基础路由（开发中）';
COMMENT ON COLUMN "public"."sys_base_menus"."title" IS '菜单名';
COMMENT ON COLUMN "public"."sys_base_menus"."icon" IS '菜单图标';
COMMENT ON COLUMN "public"."sys_base_menus"."close_tab" IS '自动关闭tab';
COMMENT ON COLUMN "public"."sys_base_menus"."transition_type" IS '路由切换动画';

-- ----------------------------
-- Records of sys_base_menus
-- ----------------------------
INSERT INTO "public"."sys_base_menus" VALUES (1, '2025-09-25 03:30:34.832478+00', '2025-09-25 03:30:34.832478+00', NULL, 0, 0, 'dashboard', 'dashboard', 'f', 'view/dashboard/index.vue', 1, '', 'f', 'f', '仪表盘', 'odometer', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (2, '2025-09-25 03:30:34.832478+00', '2025-09-25 03:30:34.832478+00', NULL, 0, 0, 'about', 'about', 'f', 'view/about/index.vue', 9, '', 'f', 'f', '关于我们', 'info-filled', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (3, '2025-09-25 03:30:34.832478+00', '2025-09-25 03:30:34.832478+00', NULL, 0, 0, 'admin', 'superAdmin', 'f', 'view/superAdmin/index.vue', 3, '', 'f', 'f', '超级管理员', 'user', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (4, '2025-09-25 03:30:34.832478+00', '2025-09-25 03:30:34.832478+00', NULL, 0, 0, 'person', 'person', 't', 'view/person/person.vue', 4, '', 'f', 'f', '个人信息', 'message', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (5, '2025-09-25 03:30:34.832478+00', '2025-09-25 03:30:34.832478+00', NULL, 0, 0, 'example', 'example', 'f', 'view/example/index.vue', 7, '', 'f', 'f', '示例文件', 'management', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (6, '2025-09-25 03:30:34.832478+00', '2025-09-25 03:30:34.832478+00', NULL, 0, 0, 'systemTools', 'systemTools', 'f', 'view/systemTools/index.vue', 5, '', 'f', 'f', '系统工具', 'tools', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (7, '2025-09-25 03:30:34.832478+00', '2025-09-25 03:30:34.832478+00', NULL, 0, 0, 'https://www.gin-vue-admin.com', 'https://www.gin-vue-admin.com', 'f', '/', 0, '', 'f', 'f', '官方网站', 'customer-gva', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (8, '2025-09-25 03:30:34.832478+00', '2025-09-25 03:30:34.832478+00', NULL, 0, 0, 'state', 'state', 'f', 'view/system/state.vue', 8, '', 'f', 'f', '服务器状态', 'cloudy', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (9, '2025-09-25 03:30:34.832478+00', '2025-09-25 03:30:34.832478+00', NULL, 0, 0, 'plugin', 'plugin', 'f', 'view/routerHolder.vue', 6, '', 'f', 'f', '插件系统', 'cherry', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (10, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 3, 'authority', 'authority', 'f', 'view/superAdmin/authority/authority.vue', 1, '', 'f', 'f', '角色管理', 'avatar', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (11, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 3, 'menu', 'menu', 'f', 'view/superAdmin/menu/menu.vue', 2, '', 't', 'f', '菜单管理', 'tickets', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (12, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 3, 'api', 'api', 'f', 'view/superAdmin/api/api.vue', 3, '', 't', 'f', 'api管理', 'platform', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (13, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 3, 'user', 'user', 'f', 'view/superAdmin/user/user.vue', 4, '', 'f', 'f', '用户管理', 'coordinate', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (14, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 3, 'dictionary', 'dictionary', 'f', 'view/superAdmin/dictionary/sysDictionary.vue', 5, '', 'f', 'f', '字典管理', 'notebook', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (15, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 3, 'operation', 'operation', 'f', 'view/superAdmin/operation/sysOperationRecord.vue', 6, '', 'f', 'f', '操作历史', 'pie-chart', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (16, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 3, 'sysParams', 'sysParams', 'f', 'view/superAdmin/params/sysParams.vue', 7, '', 'f', 'f', '参数管理', 'compass', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (17, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 5, 'upload', 'upload', 'f', 'view/example/upload/upload.vue', 5, '', 'f', 'f', '媒体库（上传下载）', 'upload', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (18, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 5, 'breakpoint', 'breakpoint', 'f', 'view/example/breakpoint/breakpoint.vue', 6, '', 'f', 'f', '断点续传', 'upload-filled', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (19, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 5, 'customer', 'customer', 'f', 'view/example/customer/customer.vue', 7, '', 'f', 'f', '客户列表（资源示例）', 'avatar', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (20, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 6, 'autoCode', 'autoCode', 'f', 'view/systemTools/autoCode/index.vue', 1, '', 't', 'f', '代码生成器', 'cpu', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (21, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 6, 'formCreate', 'formCreate', 'f', 'view/systemTools/formCreate/index.vue', 3, '', 't', 'f', '表单生成器', 'magic-stick', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (22, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 6, 'system', 'system', 'f', 'view/systemTools/system/system.vue', 4, '', 'f', 'f', '系统配置', 'operation', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (23, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 6, 'autoCodeAdmin', 'autoCodeAdmin', 'f', 'view/systemTools/autoCodeAdmin/index.vue', 2, '', 'f', 'f', '自动化代码管理', 'magic-stick', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (24, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 6, 'autoCodeEdit/:id', 'autoCodeEdit', 't', 'view/systemTools/autoCode/index.vue', 0, '', 'f', 'f', '自动化代码-${id}', 'magic-stick', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (25, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 6, 'autoPkg', 'autoPkg', 'f', 'view/systemTools/autoPkg/autoPkg.vue', 0, '', 'f', 'f', '模板配置', 'folder', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (26, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 6, 'exportTemplate', 'exportTemplate', 'f', 'view/systemTools/exportTemplate/exportTemplate.vue', 5, '', 'f', 'f', '导出模板', 'reading', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (27, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 6, 'picture', 'picture', 'f', 'view/systemTools/autoCode/picture.vue', 6, '', 'f', 'f', 'AI页面绘制', 'picture-filled', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (28, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 6, 'mcpTool', 'mcpTool', 'f', 'view/systemTools/autoCode/mcp.vue', 7, '', 'f', 'f', 'Mcp Tools模板', 'magnet', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (29, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 6, 'mcpTest', 'mcpTest', 'f', 'view/systemTools/autoCode/mcpTest.vue', 7, '', 'f', 'f', 'Mcp Tools测试', 'partly-cloudy', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (30, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 6, 'sysVersion', 'sysVersion', 'f', 'view/systemTools/version/version.vue', 8, '', 'f', 'f', '版本管理', 'server', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (31, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 9, 'https://plugin.gin-vue-admin.com/', 'https://plugin.gin-vue-admin.com/', 'f', 'https://plugin.gin-vue-admin.com/', 0, '', 'f', 'f', '插件市场', 'shop', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (32, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 9, 'installPlugin', 'installPlugin', 'f', 'view/systemTools/installPlugin/index.vue', 1, '', 'f', 'f', '插件安装', 'box', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (33, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 9, 'pubPlug', 'pubPlug', 'f', 'view/systemTools/pubPlug/pubPlug.vue', 3, '', 'f', 'f', '打包插件', 'files', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (34, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 9, 'plugin-email', 'plugin-email', 'f', 'plugin/email/view/index.vue', 4, '', 'f', 'f', '邮件插件', 'message', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (35, '2025-09-25 03:30:34.835051+00', '2025-09-25 03:30:34.835051+00', NULL, 1, 9, 'anInfo', 'anInfo', 'f', 'plugin/announcement/view/info.vue', 5, '', 'f', 'f', '公告管理[示例]', 'scaleToOriginal', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (40, '2025-09-25 09:14:16.927229+00', '2025-09-26 05:19:57.407245+00', NULL, 0, 0, 'resumeOverview', 'resumeOverview', 'f', 'view/resume/resumeOverview.vue', 10, '', 't', 'f', '简历管理', 'user', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (37, '2025-09-25 09:08:28.223173+00', '2025-09-26 06:32:51.521843+00', NULL, 0, 40, '工作经历', '工作经历', 'f', 'view/resume/resumeWorkExperience/resumeWorkExperience.vue', 20, '', 'f', 'f', '工作经历管理', '', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (39, '2025-09-25 09:08:28.299506+00', '2025-09-26 06:32:58.52787+00', NULL, 0, 40, '项目经验', '项目经验', 'f', 'view/resume/resumeProject/resumeProject.vue', 30, '', 'f', 'f', '项目经验管理', '', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (41, '2025-09-25 09:14:22.988722+00', '2025-09-26 06:33:16.628465+00', NULL, 0, 40, 'resumeDisplay', 'resumeDisplay', 'f', 'view/resume/resumeDisplay.vue', 1, '', 't', 'f', '我的简历', 'document', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (36, '2025-09-25 09:08:28.185927+00', '2025-09-26 06:33:24.373158+00', NULL, 0, 40, '基本信息', '基本信息', 'f', 'view/resume/resumeBasicInfo/resumeBasicInfo.vue', 2, '', 'f', 'f', '个人基本信息管理', '', 'f', '');
INSERT INTO "public"."sys_base_menus" VALUES (38, '2025-09-25 09:08:28.25961+00', '2025-09-26 06:33:31.776135+00', NULL, 0, 40, '教育背景', '教育背景', 'f', 'view/resume/resumeEducation/resumeEducation.vue', 3, '', 'f', 'f', '教育背景管理', '', 'f', '');

-- ----------------------------
-- Table structure for sys_data_authority_id
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_data_authority_id";
CREATE TABLE "public"."sys_data_authority_id" (
  "sys_authority_authority_id" int8 NOT NULL,
  "data_authority_id_authority_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_data_authority_id"."sys_authority_authority_id" IS '角色ID';
COMMENT ON COLUMN "public"."sys_data_authority_id"."data_authority_id_authority_id" IS '角色ID';

-- ----------------------------
-- Records of sys_data_authority_id
-- ----------------------------
INSERT INTO "public"."sys_data_authority_id" VALUES (888, 888);
INSERT INTO "public"."sys_data_authority_id" VALUES (888, 9528);
INSERT INTO "public"."sys_data_authority_id" VALUES (888, 8881);
INSERT INTO "public"."sys_data_authority_id" VALUES (9528, 9528);
INSERT INTO "public"."sys_data_authority_id" VALUES (9528, 8881);

-- ----------------------------
-- Table structure for sys_dictionaries
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dictionaries";
CREATE TABLE "public"."sys_dictionaries" (
  "id" int8 NOT NULL DEFAULT nextval('sys_dictionaries_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "name" text COLLATE "pg_catalog"."default",
  "type" text COLLATE "pg_catalog"."default",
  "status" bool,
  "desc" text COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_dictionaries"."name" IS '字典名（中）';
COMMENT ON COLUMN "public"."sys_dictionaries"."type" IS '字典名（英）';
COMMENT ON COLUMN "public"."sys_dictionaries"."status" IS '状态';
COMMENT ON COLUMN "public"."sys_dictionaries"."desc" IS '描述';

-- ----------------------------
-- Records of sys_dictionaries
-- ----------------------------
INSERT INTO "public"."sys_dictionaries" VALUES (1, '2025-09-25 03:30:34.802653+00', '2025-09-25 03:30:34.806315+00', NULL, '性别', 'gender', 't', '性别字典');
INSERT INTO "public"."sys_dictionaries" VALUES (2, '2025-09-25 03:30:34.802653+00', '2025-09-25 03:30:34.809923+00', NULL, '数据库int类型', 'int', 't', 'int类型对应的数据库类型');
INSERT INTO "public"."sys_dictionaries" VALUES (3, '2025-09-25 03:30:34.802653+00', '2025-09-25 03:30:34.81483+00', NULL, '数据库时间日期类型', 'time.Time', 't', '数据库时间日期类型');
INSERT INTO "public"."sys_dictionaries" VALUES (4, '2025-09-25 03:30:34.802653+00', '2025-09-25 03:30:34.818443+00', NULL, '数据库浮点型', 'float64', 't', '数据库浮点型');
INSERT INTO "public"."sys_dictionaries" VALUES (5, '2025-09-25 03:30:34.802653+00', '2025-09-25 03:30:34.82257+00', NULL, '数据库字符串', 'string', 't', '数据库字符串');
INSERT INTO "public"."sys_dictionaries" VALUES (6, '2025-09-25 03:30:34.802653+00', '2025-09-25 03:30:34.828336+00', NULL, '数据库bool类型', 'bool', 't', '数据库bool类型');
INSERT INTO "public"."sys_dictionaries" VALUES (7, '2025-09-25 09:08:28.143218+00', '2025-09-25 09:08:28.143218+00', NULL, '是否公开字典', 'resume_public_status', 't', '自动生成的字典，用于模块 ResumeBasicInfo 字段: IsPublic (是否公开)');
INSERT INTO "public"."sys_dictionaries" VALUES (8, '2025-09-25 09:08:28.14749+00', '2025-09-25 09:08:28.14749+00', NULL, '是否当前工作字典', 'resume_current_status', 't', '自动生成的字典，用于模块 ResumeWorkExperience 字段: IsCurrent (是否当前工作)');
INSERT INTO "public"."sys_dictionaries" VALUES (9, '2025-09-25 09:08:28.150729+00', '2025-09-25 09:08:28.150729+00', NULL, '学历字典', 'resume_degree_type', 't', '自动生成的字典，用于模块 ResumeEducation 字段: Degree (学历)');

-- ----------------------------
-- Table structure for sys_dictionary_details
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dictionary_details";
CREATE TABLE "public"."sys_dictionary_details" (
  "id" int8 NOT NULL DEFAULT nextval('sys_dictionary_details_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "label" text COLLATE "pg_catalog"."default",
  "value" text COLLATE "pg_catalog"."default",
  "extend" text COLLATE "pg_catalog"."default",
  "status" bool,
  "sort" int8,
  "sys_dictionary_id" int8
)
;
COMMENT ON COLUMN "public"."sys_dictionary_details"."label" IS '展示值';
COMMENT ON COLUMN "public"."sys_dictionary_details"."value" IS '字典值';
COMMENT ON COLUMN "public"."sys_dictionary_details"."extend" IS '扩展值';
COMMENT ON COLUMN "public"."sys_dictionary_details"."status" IS '启用状态';
COMMENT ON COLUMN "public"."sys_dictionary_details"."sort" IS '排序标记';
COMMENT ON COLUMN "public"."sys_dictionary_details"."sys_dictionary_id" IS '关联标记';

-- ----------------------------
-- Records of sys_dictionary_details
-- ----------------------------
INSERT INTO "public"."sys_dictionary_details" VALUES (1, '2025-09-25 03:30:34.80683+00', '2025-09-25 03:30:34.80683+00', NULL, '男', '1', '', 't', 1, 1);
INSERT INTO "public"."sys_dictionary_details" VALUES (2, '2025-09-25 03:30:34.80683+00', '2025-09-25 03:30:34.80683+00', NULL, '女', '2', '', 't', 2, 1);
INSERT INTO "public"."sys_dictionary_details" VALUES (3, '2025-09-25 03:30:34.810438+00', '2025-09-25 03:30:34.810438+00', NULL, 'smallint', '1', 'mysql', 't', 1, 2);
INSERT INTO "public"."sys_dictionary_details" VALUES (4, '2025-09-25 03:30:34.810438+00', '2025-09-25 03:30:34.810438+00', NULL, 'mediumint', '2', 'mysql', 't', 2, 2);
INSERT INTO "public"."sys_dictionary_details" VALUES (5, '2025-09-25 03:30:34.810438+00', '2025-09-25 03:30:34.810438+00', NULL, 'int', '3', 'mysql', 't', 3, 2);
INSERT INTO "public"."sys_dictionary_details" VALUES (6, '2025-09-25 03:30:34.810438+00', '2025-09-25 03:30:34.810438+00', NULL, 'bigint', '4', 'mysql', 't', 4, 2);
INSERT INTO "public"."sys_dictionary_details" VALUES (7, '2025-09-25 03:30:34.810438+00', '2025-09-25 03:30:34.810438+00', NULL, 'int2', '5', 'pgsql', 't', 5, 2);
INSERT INTO "public"."sys_dictionary_details" VALUES (8, '2025-09-25 03:30:34.810438+00', '2025-09-25 03:30:34.810438+00', NULL, 'int4', '6', 'pgsql', 't', 6, 2);
INSERT INTO "public"."sys_dictionary_details" VALUES (9, '2025-09-25 03:30:34.810438+00', '2025-09-25 03:30:34.810438+00', NULL, 'int6', '7', 'pgsql', 't', 7, 2);
INSERT INTO "public"."sys_dictionary_details" VALUES (10, '2025-09-25 03:30:34.810438+00', '2025-09-25 03:30:34.810438+00', NULL, 'int8', '8', 'pgsql', 't', 8, 2);
INSERT INTO "public"."sys_dictionary_details" VALUES (11, '2025-09-25 03:30:34.815349+00', '2025-09-25 03:30:34.815349+00', NULL, 'date', '0', 'mysql', 't', 0, 3);
INSERT INTO "public"."sys_dictionary_details" VALUES (12, '2025-09-25 03:30:34.815349+00', '2025-09-25 03:30:34.815349+00', NULL, 'time', '1', 'mysql', 't', 1, 3);
INSERT INTO "public"."sys_dictionary_details" VALUES (13, '2025-09-25 03:30:34.815349+00', '2025-09-25 03:30:34.815349+00', NULL, 'year', '2', 'mysql', 't', 2, 3);
INSERT INTO "public"."sys_dictionary_details" VALUES (14, '2025-09-25 03:30:34.815349+00', '2025-09-25 03:30:34.815349+00', NULL, 'datetime', '3', 'mysql', 't', 3, 3);
INSERT INTO "public"."sys_dictionary_details" VALUES (15, '2025-09-25 03:30:34.815349+00', '2025-09-25 03:30:34.815349+00', NULL, 'timestamp', '5', 'mysql', 't', 5, 3);
INSERT INTO "public"."sys_dictionary_details" VALUES (16, '2025-09-25 03:30:34.815349+00', '2025-09-25 03:30:34.815349+00', NULL, 'timestamptz', '6', 'pgsql', 't', 5, 3);
INSERT INTO "public"."sys_dictionary_details" VALUES (17, '2025-09-25 03:30:34.818958+00', '2025-09-25 03:30:34.818958+00', NULL, 'float', '0', 'mysql', 't', 0, 4);
INSERT INTO "public"."sys_dictionary_details" VALUES (18, '2025-09-25 03:30:34.818958+00', '2025-09-25 03:30:34.818958+00', NULL, 'double', '1', 'mysql', 't', 1, 4);
INSERT INTO "public"."sys_dictionary_details" VALUES (19, '2025-09-25 03:30:34.818958+00', '2025-09-25 03:30:34.818958+00', NULL, 'decimal', '2', 'mysql', 't', 2, 4);
INSERT INTO "public"."sys_dictionary_details" VALUES (20, '2025-09-25 03:30:34.818958+00', '2025-09-25 03:30:34.818958+00', NULL, 'numeric', '3', 'pgsql', 't', 3, 4);
INSERT INTO "public"."sys_dictionary_details" VALUES (21, '2025-09-25 03:30:34.818958+00', '2025-09-25 03:30:34.818958+00', NULL, 'smallserial', '4', 'pgsql', 't', 4, 4);
INSERT INTO "public"."sys_dictionary_details" VALUES (22, '2025-09-25 03:30:34.82257+00', '2025-09-25 03:30:34.82257+00', NULL, 'char', '0', 'mysql', 't', 0, 5);
INSERT INTO "public"."sys_dictionary_details" VALUES (23, '2025-09-25 03:30:34.82257+00', '2025-09-25 03:30:34.82257+00', NULL, 'varchar', '1', 'mysql', 't', 1, 5);
INSERT INTO "public"."sys_dictionary_details" VALUES (24, '2025-09-25 03:30:34.82257+00', '2025-09-25 03:30:34.82257+00', NULL, 'tinyblob', '2', 'mysql', 't', 2, 5);
INSERT INTO "public"."sys_dictionary_details" VALUES (25, '2025-09-25 03:30:34.82257+00', '2025-09-25 03:30:34.82257+00', NULL, 'tinytext', '3', 'mysql', 't', 3, 5);
INSERT INTO "public"."sys_dictionary_details" VALUES (26, '2025-09-25 03:30:34.82257+00', '2025-09-25 03:30:34.82257+00', NULL, 'text', '4', 'mysql', 't', 4, 5);
INSERT INTO "public"."sys_dictionary_details" VALUES (27, '2025-09-25 03:30:34.82257+00', '2025-09-25 03:30:34.82257+00', NULL, 'blob', '5', 'mysql', 't', 5, 5);
INSERT INTO "public"."sys_dictionary_details" VALUES (28, '2025-09-25 03:30:34.82257+00', '2025-09-25 03:30:34.82257+00', NULL, 'mediumblob', '6', 'mysql', 't', 6, 5);
INSERT INTO "public"."sys_dictionary_details" VALUES (29, '2025-09-25 03:30:34.82257+00', '2025-09-25 03:30:34.82257+00', NULL, 'mediumtext', '7', 'mysql', 't', 7, 5);
INSERT INTO "public"."sys_dictionary_details" VALUES (30, '2025-09-25 03:30:34.82257+00', '2025-09-25 03:30:34.82257+00', NULL, 'longblob', '8', 'mysql', 't', 8, 5);
INSERT INTO "public"."sys_dictionary_details" VALUES (31, '2025-09-25 03:30:34.82257+00', '2025-09-25 03:30:34.82257+00', NULL, 'longtext', '9', 'mysql', 't', 9, 5);
INSERT INTO "public"."sys_dictionary_details" VALUES (32, '2025-09-25 03:30:34.828849+00', '2025-09-25 03:30:34.828849+00', NULL, 'tinyint', '1', 'mysql', 't', 0, 6);
INSERT INTO "public"."sys_dictionary_details" VALUES (33, '2025-09-25 03:30:34.828849+00', '2025-09-25 03:30:34.828849+00', NULL, 'bool', '2', 'pgsql', 't', 0, 6);
INSERT INTO "public"."sys_dictionary_details" VALUES (35, '2025-09-26 06:01:34.157202+00', '2025-09-26 06:47:22.024805+00', NULL, '否', '0', '简历管理', 't', 0, 7);
INSERT INTO "public"."sys_dictionary_details" VALUES (36, '2025-09-26 06:01:42.19235+00', '2025-09-26 06:47:26.213164+00', NULL, '是', '1', '简历管理', 't', 1, 7);
INSERT INTO "public"."sys_dictionary_details" VALUES (37, '2025-09-26 06:01:55.906563+00', '2025-09-26 06:47:34.287727+00', NULL, '否', '0', '简历管理', 't', 0, 8);
INSERT INTO "public"."sys_dictionary_details" VALUES (38, '2025-09-26 06:02:03.296612+00', '2025-09-26 06:47:38.752882+00', NULL, '是', '1', '简历管理', 't', 1, 8);
INSERT INTO "public"."sys_dictionary_details" VALUES (39, '2025-09-26 06:02:45.416031+00', '2025-09-26 06:47:44.386419+00', NULL, '本科', 'benke', '简历管理', 't', 50, 9);

-- ----------------------------
-- Table structure for sys_export_template_condition
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_export_template_condition";
CREATE TABLE "public"."sys_export_template_condition" (
  "id" int8 NOT NULL DEFAULT nextval('sys_export_template_condition_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "template_id" text COLLATE "pg_catalog"."default",
  "from" text COLLATE "pg_catalog"."default",
  "column" text COLLATE "pg_catalog"."default",
  "operator" text COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_export_template_condition"."template_id" IS '模板标识';
COMMENT ON COLUMN "public"."sys_export_template_condition"."from" IS '条件取的key';
COMMENT ON COLUMN "public"."sys_export_template_condition"."column" IS '作为查询条件的字段';
COMMENT ON COLUMN "public"."sys_export_template_condition"."operator" IS '操作符';

-- ----------------------------
-- Records of sys_export_template_condition
-- ----------------------------

-- ----------------------------
-- Table structure for sys_export_template_join
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_export_template_join";
CREATE TABLE "public"."sys_export_template_join" (
  "id" int8 NOT NULL DEFAULT nextval('sys_export_template_join_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "template_id" text COLLATE "pg_catalog"."default",
  "joins" text COLLATE "pg_catalog"."default",
  "table" text COLLATE "pg_catalog"."default",
  "on" text COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_export_template_join"."template_id" IS '模板标识';
COMMENT ON COLUMN "public"."sys_export_template_join"."joins" IS '关联';
COMMENT ON COLUMN "public"."sys_export_template_join"."table" IS '关联表';
COMMENT ON COLUMN "public"."sys_export_template_join"."on" IS '关联条件';

-- ----------------------------
-- Records of sys_export_template_join
-- ----------------------------

-- ----------------------------
-- Table structure for sys_export_templates
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_export_templates";
CREATE TABLE "public"."sys_export_templates" (
  "id" int8 NOT NULL DEFAULT nextval('sys_export_templates_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "db_name" text COLLATE "pg_catalog"."default",
  "name" text COLLATE "pg_catalog"."default",
  "table_name" text COLLATE "pg_catalog"."default",
  "template_id" text COLLATE "pg_catalog"."default",
  "template_info" text COLLATE "pg_catalog"."default",
  "limit" int8,
  "order" text COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_export_templates"."db_name" IS '数据库名称';
COMMENT ON COLUMN "public"."sys_export_templates"."name" IS '模板名称';
COMMENT ON COLUMN "public"."sys_export_templates"."table_name" IS '表名称';
COMMENT ON COLUMN "public"."sys_export_templates"."template_id" IS '模板标识';
COMMENT ON COLUMN "public"."sys_export_templates"."limit" IS '导出限制';
COMMENT ON COLUMN "public"."sys_export_templates"."order" IS '排序';

-- ----------------------------
-- Records of sys_export_templates
-- ----------------------------
INSERT INTO "public"."sys_export_templates" VALUES (1, '2025-09-25 03:30:34.961221+00', '2025-09-25 03:30:34.961221+00', NULL, '', 'api', 'sys_apis', 'api', '{"path":"路径","method":"方法（大写）","description":"方法介绍","api_group":"方法分组"}', NULL, '');
INSERT INTO "public"."sys_export_templates" VALUES (2, '2025-09-25 09:08:28.190125+00', '2025-09-25 09:08:28.190125+00', NULL, 'gva', 'resume_ResumeBasicInfo', 'resume_basic_info', 'resume_ResumeBasicInfo', '{"address":"地址","email":"邮箱","is_public":"是否公开","name":"姓名","phone":"联系电话"}', NULL, '');
INSERT INTO "public"."sys_export_templates" VALUES (3, '2025-09-25 09:08:28.225852+00', '2025-09-25 09:08:28.225852+00', NULL, 'gva', 'resume_ResumeWorkExperience', 'resume_work_experience', 'resume_ResumeWorkExperience', '{"company_name":"公司名称","end_date":"结束时间","is_current":"是否当前工作","position":"职位","resume_id":"简历ID","sort_order":"排序","start_date":"开始时间"}', NULL, '');
INSERT INTO "public"."sys_export_templates" VALUES (4, '2025-09-25 09:08:28.262711+00', '2025-09-25 09:08:28.262711+00', NULL, 'gva', 'resume_ResumeEducation', 'resume_education', 'resume_ResumeEducation', '{"degree":"学历","end_date":"毕业时间","gpa":"GPA成绩","major":"专业","resume_id":"简历ID","school":"学校","start_date":"入学时间"}', NULL, '');
INSERT INTO "public"."sys_export_templates" VALUES (5, '2025-09-25 09:08:28.302238+00', '2025-09-25 09:08:28.302238+00', NULL, 'gva', 'resume_ResumeProject', 'resume_project', 'resume_ResumeProject', '{"end_date":"结束时间","project_name":"项目名称","project_url":"项目链接","resume_id":"简历ID","role":"担任角色","start_date":"开始时间"}', NULL, '');

-- ----------------------------
-- Table structure for sys_ignore_apis
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_ignore_apis";
CREATE TABLE "public"."sys_ignore_apis" (
  "id" int8 NOT NULL DEFAULT nextval('sys_ignore_apis_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "path" text COLLATE "pg_catalog"."default",
  "method" text COLLATE "pg_catalog"."default" DEFAULT 'POST'::text
)
;
COMMENT ON COLUMN "public"."sys_ignore_apis"."path" IS 'api路径';
COMMENT ON COLUMN "public"."sys_ignore_apis"."method" IS '方法';

-- ----------------------------
-- Records of sys_ignore_apis
-- ----------------------------
INSERT INTO "public"."sys_ignore_apis" VALUES (1, '2025-09-25 03:30:34.779417+00', '2025-09-25 03:30:34.779417+00', NULL, '/swagger/*any', 'GET');
INSERT INTO "public"."sys_ignore_apis" VALUES (2, '2025-09-25 03:30:34.779417+00', '2025-09-25 03:30:34.779417+00', NULL, '/api/freshCasbin', 'GET');
INSERT INTO "public"."sys_ignore_apis" VALUES (3, '2025-09-25 03:30:34.779417+00', '2025-09-25 03:30:34.779417+00', NULL, '/uploads/file/*filepath', 'GET');
INSERT INTO "public"."sys_ignore_apis" VALUES (4, '2025-09-25 03:30:34.779417+00', '2025-09-25 03:30:34.779417+00', NULL, '/health', 'GET');
INSERT INTO "public"."sys_ignore_apis" VALUES (5, '2025-09-25 03:30:34.779417+00', '2025-09-25 03:30:34.779417+00', NULL, '/uploads/file/*filepath', 'HEAD');
INSERT INTO "public"."sys_ignore_apis" VALUES (6, '2025-09-25 03:30:34.779417+00', '2025-09-25 03:30:34.779417+00', NULL, '/autoCode/llmAuto', 'POST');
INSERT INTO "public"."sys_ignore_apis" VALUES (7, '2025-09-25 03:30:34.779417+00', '2025-09-25 03:30:34.779417+00', NULL, '/system/reloadSystem', 'POST');
INSERT INTO "public"."sys_ignore_apis" VALUES (8, '2025-09-25 03:30:34.779417+00', '2025-09-25 03:30:34.779417+00', NULL, '/base/login', 'POST');
INSERT INTO "public"."sys_ignore_apis" VALUES (9, '2025-09-25 03:30:34.779417+00', '2025-09-25 03:30:34.779417+00', NULL, '/base/captcha', 'POST');
INSERT INTO "public"."sys_ignore_apis" VALUES (10, '2025-09-25 03:30:34.779417+00', '2025-09-25 03:30:34.779417+00', NULL, '/init/initdb', 'POST');
INSERT INTO "public"."sys_ignore_apis" VALUES (11, '2025-09-25 03:30:34.779417+00', '2025-09-25 03:30:34.779417+00', NULL, '/init/checkdb', 'POST');
INSERT INTO "public"."sys_ignore_apis" VALUES (12, '2025-09-25 03:30:34.779417+00', '2025-09-25 03:30:34.779417+00', NULL, '/info/getInfoDataSource', 'GET');
INSERT INTO "public"."sys_ignore_apis" VALUES (13, '2025-09-25 03:30:34.779417+00', '2025-09-25 03:30:34.779417+00', NULL, '/info/getInfoPublic', 'GET');

-- ----------------------------
-- Table structure for sys_operation_records
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_operation_records";
CREATE TABLE "public"."sys_operation_records" (
  "id" int8 NOT NULL DEFAULT nextval('sys_operation_records_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "ip" text COLLATE "pg_catalog"."default",
  "method" text COLLATE "pg_catalog"."default",
  "path" text COLLATE "pg_catalog"."default",
  "status" int8,
  "latency" int8,
  "agent" text COLLATE "pg_catalog"."default",
  "error_message" text COLLATE "pg_catalog"."default",
  "body" text COLLATE "pg_catalog"."default",
  "resp" text COLLATE "pg_catalog"."default",
  "user_id" int8
)
;
COMMENT ON COLUMN "public"."sys_operation_records"."ip" IS '请求ip';
COMMENT ON COLUMN "public"."sys_operation_records"."method" IS '请求方法';
COMMENT ON COLUMN "public"."sys_operation_records"."path" IS '请求路径';
COMMENT ON COLUMN "public"."sys_operation_records"."status" IS '请求状态';
COMMENT ON COLUMN "public"."sys_operation_records"."latency" IS '延迟';
COMMENT ON COLUMN "public"."sys_operation_records"."agent" IS '代理';
COMMENT ON COLUMN "public"."sys_operation_records"."error_message" IS '错误信息';
COMMENT ON COLUMN "public"."sys_operation_records"."body" IS '请求Body';
COMMENT ON COLUMN "public"."sys_operation_records"."resp" IS '响应Body';
COMMENT ON COLUMN "public"."sys_operation_records"."user_id" IS '用户id';

-- ----------------------------
-- Records of sys_operation_records
-- ----------------------------
INSERT INTO "public"."sys_operation_records" VALUES (1, '2025-09-25 04:12:23.384202+00', '2025-09-25 04:12:23.384202+00', NULL, '127.0.0.1', 'GET', '/api/getApiGroups', 200, 2718000, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{}', '{"code":0,"data":{"apiGroupMap":{"api":"api","attachmentCategory":"媒体库分类","authority":"角色","authorityBtn":"按钮权限","autoCode":"代码生成器历史","casbin":"casbin","customer":"客户","email":"email","fileUploadAndDownload":"文件上传与下载","info":"公告","jwt":"jwt","menu":"菜单","simpleUploader":"断点续传(插件版)","sysDictionary":"系统字典","sysDictionaryDetail":"系统字典详情","sysExportTemplate":"导出模板","sysOperationRecord":"操作记录","sysParams":"参数管理","sysVersion":"版本控制","system":"系统服务","user":"系统用户"},"groups":["jwt","系统用户","api","角色","casbin","菜单","分片上传","文件上传与下载","系统服务","客户","代码生成器","模板配置","代码生成器历史","系统字典详情","系统字典","操作记录","断点续传(插件版)","email","按钮权限","导出模板","公告","参数管理","媒体库分类","版本控制"]},"msg":"成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (2, '2025-09-25 06:56:37.182467+00', '2025-09-25 06:56:37.182467+00', NULL, '127.0.0.1', 'GET', '/api/getApiGroups', 200, 2668600, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{}', '{"code":0,"data":{"apiGroupMap":{"api":"api","attachmentCategory":"媒体库分类","authority":"角色","authorityBtn":"按钮权限","autoCode":"代码生成器历史","casbin":"casbin","customer":"客户","email":"email","fileUploadAndDownload":"文件上传与下载","info":"公告","jwt":"jwt","menu":"菜单","simpleUploader":"断点续传(插件版)","sysDictionary":"系统字典","sysDictionaryDetail":"系统字典详情","sysExportTemplate":"导出模板","sysOperationRecord":"操作记录","sysParams":"参数管理","sysVersion":"版本控制","system":"系统服务","user":"系统用户"},"groups":["jwt","系统用户","api","角色","casbin","菜单","分片上传","文件上传与下载","系统服务","客户","代码生成器","模板配置","代码生成器历史","系统字典详情","系统字典","操作记录","断点续传(插件版)","email","按钮权限","导出模板","公告","参数管理","媒体库分类","版本控制"]},"msg":"成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (3, '2025-09-25 06:59:04.133808+00', '2025-09-25 06:59:04.133808+00', NULL, '127.0.0.1', 'PUT', '/user/setSelfSetting', 200, 4459900, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"weakness":false,"grey":false,"primaryColor":"#3b82f6","showTabs":true,"darkMode":"light","layout_side_width":256,"layout_side_collapsed_width":80,"layout_side_item_height":48,"show_watermark":true,"side_mode":"normal","transition_type":"slide"}', '{"code":0,"data":{},"msg":"设置成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (4, '2025-09-25 06:59:05.095569+00', '2025-09-25 06:59:05.095569+00', NULL, '127.0.0.1', 'PUT', '/user/setSelfSetting', 200, 2604600, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"weakness":false,"grey":false,"primaryColor":"#3b82f6","showTabs":true,"darkMode":"dark","layout_side_width":256,"layout_side_collapsed_width":80,"layout_side_item_height":48,"show_watermark":true,"side_mode":"normal","transition_type":"slide"}', '{"code":0,"data":{},"msg":"设置成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (5, '2025-09-25 06:59:05.762217+00', '2025-09-25 06:59:05.762217+00', NULL, '127.0.0.1', 'PUT', '/user/setSelfSetting', 200, 2633000, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"weakness":false,"grey":false,"primaryColor":"#3b82f6","showTabs":true,"darkMode":"auto","layout_side_width":256,"layout_side_collapsed_width":80,"layout_side_item_height":48,"show_watermark":true,"side_mode":"normal","transition_type":"slide"}', '{"code":0,"data":{},"msg":"设置成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (6, '2025-09-25 06:59:07.078527+00', '2025-09-25 06:59:07.078527+00', NULL, '127.0.0.1', 'PUT', '/user/setSelfSetting', 200, 3065200, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"weakness":false,"grey":false,"primaryColor":"#3b82f6","showTabs":true,"darkMode":"light","layout_side_width":256,"layout_side_collapsed_width":80,"layout_side_item_height":48,"show_watermark":true,"side_mode":"normal","transition_type":"slide"}', '{"code":0,"data":{},"msg":"设置成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (7, '2025-09-25 06:59:07.740447+00', '2025-09-25 06:59:07.740447+00', NULL, '127.0.0.1', 'PUT', '/user/setSelfSetting', 200, 2787100, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"weakness":false,"grey":false,"primaryColor":"#3b82f6","showTabs":true,"darkMode":"dark","layout_side_width":256,"layout_side_collapsed_width":80,"layout_side_item_height":48,"show_watermark":true,"side_mode":"normal","transition_type":"slide"}', '{"code":0,"data":{},"msg":"设置成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (8, '2025-09-25 06:59:08.155584+00', '2025-09-25 06:59:08.155584+00', NULL, '127.0.0.1', 'PUT', '/user/setSelfSetting', 200, 2734800, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"weakness":false,"grey":false,"primaryColor":"#3b82f6","showTabs":true,"darkMode":"auto","layout_side_width":256,"layout_side_collapsed_width":80,"layout_side_item_height":48,"show_watermark":true,"side_mode":"normal","transition_type":"slide"}', '{"code":0,"data":{},"msg":"设置成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (9, '2025-09-25 06:59:11.684428+00', '2025-09-25 06:59:11.684428+00', NULL, '127.0.0.1', 'PUT', '/user/setSelfSetting', 200, 3182600, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"weakness":false,"grey":false,"primaryColor":"#3b82f6","showTabs":true,"darkMode":"auto","layout_side_width":256,"layout_side_collapsed_width":80,"layout_side_item_height":48,"show_watermark":true,"side_mode":"head","transition_type":"slide"}', '{"code":0,"data":{},"msg":"设置成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (10, '2025-09-25 06:59:13.664216+00', '2025-09-25 06:59:13.664216+00', NULL, '127.0.0.1', 'PUT', '/user/setSelfSetting', 200, 4674900, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"weakness":false,"grey":false,"primaryColor":"#3b82f6","showTabs":true,"darkMode":"auto","layout_side_width":256,"layout_side_collapsed_width":80,"layout_side_item_height":48,"show_watermark":true,"side_mode":"normal","transition_type":"slide"}', '{"code":0,"data":{},"msg":"设置成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (11, '2025-09-25 06:59:14.470922+00', '2025-09-25 06:59:14.470922+00', NULL, '127.0.0.1', 'PUT', '/user/setSelfSetting', 200, 4814600, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"weakness":false,"grey":false,"primaryColor":"#3b82f6","showTabs":true,"darkMode":"auto","layout_side_width":256,"layout_side_collapsed_width":80,"layout_side_item_height":48,"show_watermark":true,"side_mode":"head","transition_type":"slide"}', '{"code":0,"data":{},"msg":"设置成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (12, '2025-09-25 06:59:15.732309+00', '2025-09-25 06:59:15.732309+00', NULL, '127.0.0.1', 'PUT', '/user/setSelfSetting', 200, 3092100, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"weakness":false,"grey":false,"primaryColor":"#3b82f6","showTabs":true,"darkMode":"auto","layout_side_width":256,"layout_side_collapsed_width":80,"layout_side_item_height":48,"show_watermark":true,"side_mode":"combination","transition_type":"slide"}', '{"code":0,"data":{},"msg":"设置成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (13, '2025-09-25 06:59:20.379763+00', '2025-09-25 06:59:20.379763+00', NULL, '127.0.0.1', 'PUT', '/user/setSelfSetting', 200, 2997600, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"weakness":false,"grey":false,"primaryColor":"#3b82f6","showTabs":true,"darkMode":"auto","layout_side_width":256,"layout_side_collapsed_width":80,"layout_side_item_height":48,"show_watermark":true,"side_mode":"sidebar","transition_type":"slide"}', '{"code":0,"data":{},"msg":"设置成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (14, '2025-09-25 07:00:14.921871+00', '2025-09-25 07:00:14.921871+00', NULL, '127.0.0.1', 'PUT', '/user/setSelfSetting', 200, 4769400, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"weakness":false,"grey":false,"primaryColor":"#3b82f6","showTabs":true,"darkMode":"auto","layout_side_width":256,"layout_side_collapsed_width":80,"layout_side_item_height":48,"show_watermark":true,"side_mode":"combination","transition_type":"slide"}', '{"code":0,"data":{},"msg":"设置成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (15, '2025-09-25 07:00:16.959123+00', '2025-09-25 07:00:16.959123+00', NULL, '127.0.0.1', 'PUT', '/user/setSelfSetting', 200, 3111200, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"weakness":false,"grey":false,"primaryColor":"#3b82f6","showTabs":true,"darkMode":"auto","layout_side_width":256,"layout_side_collapsed_width":80,"layout_side_item_height":48,"show_watermark":true,"side_mode":"head","transition_type":"slide"}', '{"code":0,"data":{},"msg":"设置成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (16, '2025-09-25 07:00:18.729361+00', '2025-09-25 07:00:18.729361+00', NULL, '127.0.0.1', 'PUT', '/user/setSelfSetting', 200, 3191400, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"weakness":false,"grey":false,"primaryColor":"#3b82f6","showTabs":true,"darkMode":"auto","layout_side_width":256,"layout_side_collapsed_width":80,"layout_side_item_height":48,"show_watermark":true,"side_mode":"combination","transition_type":"slide"}', '{"code":0,"data":{},"msg":"设置成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (17, '2025-09-25 07:00:22.256249+00', '2025-09-25 07:00:22.256249+00', NULL, '127.0.0.1', 'PUT', '/user/setSelfSetting', 200, 3324100, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"weakness":false,"grey":false,"primaryColor":"#3b82f6","showTabs":true,"darkMode":"auto","layout_side_width":256,"layout_side_collapsed_width":80,"layout_side_item_height":48,"show_watermark":true,"side_mode":"normal","transition_type":"slide"}', '{"code":0,"data":{},"msg":"设置成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (18, '2025-09-25 07:00:27.418548+00', '2025-09-25 07:00:27.418548+00', NULL, '127.0.0.1', 'PUT', '/user/setSelfSetting', 200, 3300600, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"weakness":false,"grey":false,"primaryColor":"#3b82f6","showTabs":true,"darkMode":"auto","layout_side_width":256,"layout_side_collapsed_width":80,"layout_side_item_height":48,"show_watermark":true,"side_mode":"combination","transition_type":"slide"}', '{"code":0,"data":{},"msg":"设置成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (19, '2025-09-25 07:00:31.268327+00', '2025-09-25 07:00:31.268327+00', NULL, '127.0.0.1', 'PUT', '/user/setSelfSetting', 200, 4727600, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"weakness":false,"grey":false,"primaryColor":"#3b82f6","showTabs":true,"darkMode":"auto","layout_side_width":256,"layout_side_collapsed_width":80,"layout_side_item_height":48,"show_watermark":true,"side_mode":"head","transition_type":"slide"}', '{"code":0,"data":{},"msg":"设置成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (20, '2025-09-25 07:00:41.638566+00', '2025-09-25 07:00:41.638566+00', NULL, '127.0.0.1', 'PUT', '/user/setSelfSetting', 200, 3169200, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"weakness":false,"grey":false,"primaryColor":"#3b82f6","showTabs":true,"darkMode":"auto","layout_side_width":256,"layout_side_collapsed_width":80,"layout_side_item_height":48,"show_watermark":true,"side_mode":"normal","transition_type":"slide"}', '{"code":0,"data":{},"msg":"设置成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (21, '2025-09-25 09:39:37.782317+00', '2025-09-25 09:39:37.782317+00', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 16131200, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '[超出记录长度]', '{"code":0,"data":{},"msg":"添加成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (22, '2025-09-25 09:39:51.245042+00', '2025-09-25 09:39:51.245042+00', NULL, '127.0.0.1', 'POST', '/casbin/updateCasbin', 200, 9866600, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '[超出记录长度]', '{"code":0,"data":{},"msg":"更新成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (23, '2025-09-25 09:40:04.872669+00', '2025-09-25 09:40:04.872669+00', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 9436000, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '[超出记录长度]', '{"code":0,"data":{},"msg":"添加成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (24, '2025-09-25 09:40:06.682171+00', '2025-09-25 09:40:06.682171+00', NULL, '127.0.0.1', 'POST', '/casbin/updateCasbin', 200, 7475500, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '[超出记录长度]', '{"code":0,"data":{},"msg":"更新成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (25, '2025-09-25 09:40:09.1123+00', '2025-09-25 09:40:09.1123+00', NULL, '127.0.0.1', 'POST', '/authority/setDataAuthority', 200, 7317100, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '[超出记录长度]', '{"code":0,"data":{},"msg":"设置成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (26, '2025-09-25 09:45:51.335372+00', '2025-09-25 09:45:51.335372+00', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 15355400, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '[超出记录长度]', '{"code":0,"data":{},"msg":"更新成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (27, '2025-09-25 09:46:03.071327+00', '2025-09-25 09:46:03.071327+00', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 5279300, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '[超出记录长度]', '{"code":0,"data":{},"msg":"更新成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (28, '2025-09-25 09:46:16.343351+00', '2025-09-25 09:46:16.343351+00', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 4928000, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '[超出记录长度]', '{"code":0,"data":{},"msg":"更新成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (29, '2025-09-25 09:46:28.819857+00', '2025-09-25 09:46:28.819857+00', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 5360700, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '[超出记录长度]', '{"code":0,"data":{},"msg":"更新成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (42, '2025-09-26 06:01:34.160301+00', '2025-09-26 06:01:34.160301+00', NULL, '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 4064400, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"label":"否","value":"0","status":true,"sort":0,"sysDictionaryID":7}', '{"code":0,"data":{},"msg":"创建成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (43, '2025-09-26 06:01:42.194523+00', '2025-09-26 06:01:42.194523+00', NULL, '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 3350000, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"label":"是","value":"1","status":true,"sort":1,"sysDictionaryID":7}', '{"code":0,"data":{},"msg":"创建成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (30, '2025-09-25 09:49:57.998092+00', '2025-09-25 09:49:57.998092+00', NULL, '127.0.0.1', 'GET', '/api/getApiGroups', 200, 2419300, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{}', '{"code":0,"data":{"apiGroupMap":{"api":"api","attachmentCategory":"媒体库分类","authority":"角色","authorityBtn":"按钮权限","autoCode":"代码生成器历史","casbin":"casbin","customer":"客户","email":"email","fileUploadAndDownload":"文件上传与下载","info":"公告","jwt":"jwt","menu":"菜单","simpleUploader":"断点续传(插件版)","sysDictionary":"系统字典","sysDictionaryDetail":"系统字典详情","sysExportTemplate":"导出模板","sysOperationRecord":"操作记录","sysParams":"参数管理","sysVersion":"版本控制","system":"系统服务","user":"系统用户","基本信息":"个人基本信息管理","工作经历":"工作经历管理","教育背景":"教育背景管理","项目经验":"项目经验管理"},"groups":["jwt","系统用户","api","角色","casbin","菜单","分片上传","文件上传与下载","系统服务","客户","代码生成器","模板配置","代码生成器历史","系统字典详情","系统字典","操作记录","断点续传(插件版)","email","按钮权限","导出模板","公告","参数管理","媒体库分类","版本控制","个人基本信息管理","工作经历管理","教育背景管理","项目经验管理"]},"msg":"成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (31, '2025-09-25 09:56:18.460435+00', '2025-09-25 09:56:18.460435+00', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 10631900, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '[超出记录长度]', '{"code":0,"data":{},"msg":"添加成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (32, '2025-09-25 09:57:55.893039+00', '2025-09-25 09:57:55.893039+00', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 6538900, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"ID":41,"CreatedAt":"2025-09-25T17:14:22.988722+08:00","UpdatedAt":"2025-09-25T17:14:22.988722+08:00","parentId":40,"path":"resumeDisplay","name":"resumeDisplay","hidden":false,"component":"view/resume/resumeDisplay.vue","sort":11,"meta":{"activeName":"","keepAlive":true,"defaultMenu":false,"title":"我的简历","icon":"document","closeTab":false,"transitionType":""},"authoritys":null,"children":null,"parameters":[],"menuBtn":[]}', '{"code":0,"data":{},"msg":"更新成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (33, '2025-09-25 09:58:57.730887+00', '2025-09-25 09:58:57.730887+00', NULL, '127.0.0.1', 'POST', '/基本信息/createResumeBasicInfo', 200, 3631100, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"name":"赵吉辉","avatar":"https://qmplusimg.henrongyi.top/1576554439myAvatar.png","phone":"13285519185","email":"zhaojihuionline@outlook.com","address":"hefei","summary":"<p>我的个人简介</p>","skills":{},"isPublic":false}', '{"code":0,"data":{},"msg":"创建成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (34, '2025-09-26 00:37:22.092246+00', '2025-09-26 00:37:22.092246+00', NULL, '127.0.0.1', 'PUT', '/基本信息/updateResumeBasicInfo', 200, 4347300, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"ID":1,"CreatedAt":"2025-09-25T17:58:57.728291+08:00","UpdatedAt":"2025-09-25T17:58:57.728291+08:00","name":"赵吉辉","avatar":"https://qmplusimg.henrongyi.top/1576554439myAvatar.png","phone":"13285519185","email":"zhaojihuionline@outlook.com","address":"hefei","summary":"<p>我的个人简介</p>","skills":{},"isPublic":true,"CreatedBy":1,"UpdatedBy":0,"DeletedBy":0}', '{"code":0,"data":{},"msg":"更新成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (36, '2025-09-26 05:07:05.136458+00', '2025-09-26 05:07:05.136458+00', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 7627800, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"ID":40,"CreatedAt":"2025-09-25T17:14:16.927229+08:00","UpdatedAt":"2025-09-25T17:14:16.927229+08:00","parentId":0,"path":"resumeOverview","name":"resumeOverview","hidden":false,"component":"view/resume/resumeOverview.vue","sort":10,"meta":{"activeName":"","keepAlive":true,"defaultMenu":true,"title":"简历管理","icon":"user","closeTab":false,"transitionType":""},"authoritys":null,"children":null,"parameters":[],"menuBtn":[]}', '{"code":0,"data":{},"msg":"更新成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (37, '2025-09-26 05:08:00.606227+00', '2025-09-26 05:08:00.606227+00', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 6967600, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"ID":40,"CreatedAt":"2025-09-25T17:14:16.927229+08:00","UpdatedAt":"2025-09-26T13:07:05.133776+08:00","parentId":0,"path":"resumeOverview","name":"resumeOverview","hidden":false,"component":"view/resume/resumeOverview.vue","sort":10,"meta":{"activeName":"","keepAlive":true,"defaultMenu":false,"title":"简历管理","icon":"user","closeTab":false,"transitionType":""},"authoritys":null,"children":null,"parameters":[],"menuBtn":[]}', '{"code":0,"data":{},"msg":"更新成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (38, '2025-09-26 05:09:50.269197+00', '2025-09-26 05:09:50.269197+00', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 12647800, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"ID":40,"CreatedAt":"2025-09-25T17:14:16.927229+08:00","UpdatedAt":"2025-09-26T13:08:00.603907+08:00","parentId":0,"path":"resumeOverview","name":"resumeOverview","hidden":false,"component":"view/routerHolder.vue","sort":10,"meta":{"activeName":"","keepAlive":true,"defaultMenu":false,"title":"简历管理","icon":"user","closeTab":false,"transitionType":""},"authoritys":null,"children":null,"parameters":[],"menuBtn":[]}', '{"code":0,"data":{},"msg":"更新成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (39, '2025-09-26 05:10:36.486141+00', '2025-09-26 05:10:36.486141+00', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 6683900, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"ID":40,"CreatedAt":"2025-09-25T17:14:16.927229+08:00","UpdatedAt":"2025-09-26T13:09:50.258415+08:00","parentId":0,"path":"resumeOverview","name":"resumeOverview","hidden":false,"component":"view/resume/resumeOverview.vue","sort":10,"meta":{"activeName":"","keepAlive":true,"defaultMenu":false,"title":"简历管理","icon":"user","closeTab":false,"transitionType":""},"authoritys":null,"children":null,"parameters":[],"menuBtn":[]}', '{"code":0,"data":{},"msg":"更新成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (40, '2025-09-26 05:14:14.392453+00', '2025-09-26 05:14:14.392453+00', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 13715600, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"ID":40,"CreatedAt":"2025-09-25T17:14:16.927229+08:00","UpdatedAt":"2025-09-26T13:10:36.483014+08:00","parentId":0,"path":"resumeOverview","name":"resumeOverview","hidden":false,"component":"view/resume/resumeOverview.vue","sort":10,"meta":{"activeName":"","keepAlive":true,"defaultMenu":false,"title":"简历管理","icon":"user","closeTab":false,"transitionType":""},"authoritys":null,"children":null,"parameters":[],"menuBtn":[]}', '{"code":0,"data":{},"msg":"更新成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (41, '2025-09-26 05:19:57.40931+00', '2025-09-26 05:19:57.40931+00', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 4767500, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"ID":40,"CreatedAt":"2025-09-25T17:14:16.927229+08:00","UpdatedAt":"2025-09-26T13:14:14.381687+08:00","parentId":0,"path":"resumeOverview","name":"resumeOverview","hidden":false,"component":"view/resume/resumeOverview.vue","sort":10,"meta":{"activeName":"","keepAlive":true,"defaultMenu":false,"title":"简历管理","icon":"user","closeTab":false,"transitionType":""},"authoritys":null,"children":null,"parameters":[],"menuBtn":[]}', '{"code":0,"data":{},"msg":"更新成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (44, '2025-09-26 06:01:55.908676+00', '2025-09-26 06:01:55.908676+00', NULL, '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 2562800, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"label":"否","value":"0","status":true,"sort":0,"sysDictionaryID":8}', '{"code":0,"data":{},"msg":"创建成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (45, '2025-09-26 06:02:03.314549+00', '2025-09-26 06:02:03.314549+00', NULL, '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 22242400, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"label":"是","value":"1","status":true,"sort":1,"sysDictionaryID":8}', '{"code":0,"data":{},"msg":"创建成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (46, '2025-09-26 06:02:45.418118+00', '2025-09-26 06:02:45.418118+00', NULL, '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 3351400, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"label":"本科","value":"benke","status":true,"sort":50,"sysDictionaryID":9}', '{"code":0,"data":{},"msg":"创建成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (47, '2025-09-26 06:04:30.081309+00', '2025-09-26 06:04:30.081309+00', NULL, '127.0.0.1', 'POST', '/教育背景/createResumeEducation', 200, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"resumeId":[1],"school":"安徽工业大学","major":"电子信息工程","degree":"benke","startDate":"2004-08-31T16:00:00.000Z","endDate":"2008-06-29T16:00:00.000Z","gpa":"","description":"<p>电子041班班长</p>"}', '{"code":7,"data":{},"msg":"json: cannot unmarshal array into Go struct field ResumeEducation.resumeId of type int64"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (48, '2025-09-26 06:04:34.379095+00', '2025-09-26 06:04:34.379095+00', NULL, '127.0.0.1', 'POST', '/教育背景/createResumeEducation', 200, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"resumeId":[1],"school":"安徽工业大学","major":"电子信息工程","degree":"benke","startDate":"2004-08-31T16:00:00.000Z","endDate":"2008-06-29T16:00:00.000Z","gpa":"","description":"<p>电子041班班长</p>"}', '{"code":7,"data":{},"msg":"json: cannot unmarshal array into Go struct field ResumeEducation.resumeId of type int64"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (49, '2025-09-26 06:04:49.912618+00', '2025-09-26 06:04:49.912618+00', NULL, '127.0.0.1', 'POST', '/教育背景/createResumeEducation', 200, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"resumeId":[1],"school":"安徽工业大学","major":"电子信息工程","degree":"benke","startDate":"2004-08-31T16:00:00.000Z","endDate":"2008-06-29T16:00:00.000Z","gpa":"","description":"<p>电子041班班长</p>"}', '{"code":7,"data":{},"msg":"json: cannot unmarshal array into Go struct field ResumeEducation.resumeId of type int64"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (50, '2025-09-26 06:05:55.807049+00', '2025-09-26 06:05:55.807049+00', NULL, '127.0.0.1', 'POST', '/教育背景/createResumeEducation', 200, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"resumeId":[1],"school":"安徽工业大学","major":"电子信息工程","degree":"benke","startDate":"2004-08-31T16:00:00.000Z","endDate":"2008-06-29T16:00:00.000Z","gpa":"","description":"<p>电子041班班长</p>"}', '{"code":7,"data":{},"msg":"json: cannot unmarshal array into Go struct field ResumeEducation.resumeId of type int64"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (51, '2025-09-26 06:06:17.328042+00', '2025-09-26 06:06:17.328042+00', NULL, '127.0.0.1', 'POST', '/教育背景/createResumeEducation', 200, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"resumeId":[1],"school":"安徽工业大学","major":"电子信息工程","degree":"benke","startDate":"2004-08-31T16:00:00.000Z","endDate":"2008-06-29T16:00:00.000Z","gpa":"","description":"<p>电子041班班长</p>"}', '{"code":7,"data":{},"msg":"json: cannot unmarshal array into Go struct field ResumeEducation.resumeId of type int64"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (52, '2025-09-26 06:12:39.492646+00', '2025-09-26 06:12:39.492646+00', NULL, '127.0.0.1', 'POST', '/教育背景/createResumeEducation', 200, 6938900, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"resumeId":1,"school":"安徽工业大学","major":"电子信息工程","degree":"benke","startDate":"2004-08-31T16:00:00.000Z","endDate":"2008-06-29T16:00:00.000Z","gpa":"","description":"<p>电子041班班长</p>"}', '{"code":0,"data":{},"msg":"创建成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (53, '2025-09-26 06:32:24.534224+00', '2025-09-26 06:32:24.534224+00', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 7843200, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '[超出记录长度]', '{"code":0,"data":{},"msg":"更新成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (54, '2025-09-26 06:32:51.523907+00', '2025-09-26 06:32:51.523907+00', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 5662400, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '[超出记录长度]', '{"code":0,"data":{},"msg":"更新成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (55, '2025-09-26 06:32:58.530451+00', '2025-09-26 06:32:58.530451+00', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 5701400, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '[超出记录长度]', '{"code":0,"data":{},"msg":"更新成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (56, '2025-09-26 06:33:16.630371+00', '2025-09-26 06:33:16.630371+00', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 4368300, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"ID":41,"CreatedAt":"2025-09-25T17:14:22.988722+08:00","UpdatedAt":"2025-09-25T17:57:55.89045+08:00","parentId":40,"path":"resumeDisplay","name":"resumeDisplay","hidden":false,"component":"view/resume/resumeDisplay.vue","sort":1,"meta":{"activeName":"","keepAlive":true,"defaultMenu":false,"title":"我的简历","icon":"document","closeTab":false,"transitionType":""},"authoritys":null,"children":null,"parameters":[],"menuBtn":[]}', '{"code":0,"data":{},"msg":"更新成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (57, '2025-09-26 06:33:24.375284+00', '2025-09-26 06:33:24.375284+00', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 6251600, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '[超出记录长度]', '{"code":0,"data":{},"msg":"更新成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (58, '2025-09-26 06:33:31.786481+00', '2025-09-26 06:33:31.786481+00', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 12816500, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '[超出记录长度]', '{"code":0,"data":{},"msg":"更新成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (59, '2025-09-26 06:47:22.027984+00', '2025-09-26 06:47:22.027984+00', NULL, '127.0.0.1', 'PUT', '/sysDictionaryDetail/updateSysDictionaryDetail', 200, 3687500, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"ID":35,"CreatedAt":"2025-09-26T14:01:34.157202+08:00","UpdatedAt":"2025-09-26T14:01:34.157202+08:00","label":"否","value":"0","extend":"简历管理","status":true,"sort":0,"sysDictionaryID":7}', '{"code":0,"data":{},"msg":"更新成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (60, '2025-09-26 06:47:26.215372+00', '2025-09-26 06:47:26.215372+00', NULL, '127.0.0.1', 'PUT', '/sysDictionaryDetail/updateSysDictionaryDetail', 200, 3330400, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"ID":36,"CreatedAt":"2025-09-26T14:01:42.19235+08:00","UpdatedAt":"2025-09-26T14:01:42.19235+08:00","label":"是","value":"1","extend":"简历管理","status":true,"sort":1,"sysDictionaryID":7}', '{"code":0,"data":{},"msg":"更新成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (61, '2025-09-26 06:47:34.289816+00', '2025-09-26 06:47:34.289816+00', NULL, '127.0.0.1', 'PUT', '/sysDictionaryDetail/updateSysDictionaryDetail', 200, 3262100, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"ID":37,"CreatedAt":"2025-09-26T14:01:55.906563+08:00","UpdatedAt":"2025-09-26T14:01:55.906563+08:00","label":"否","value":"0","extend":"简历管理","status":true,"sort":0,"sysDictionaryID":8}', '{"code":0,"data":{},"msg":"更新成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (62, '2025-09-26 06:47:38.754961+00', '2025-09-26 06:47:38.754961+00', NULL, '127.0.0.1', 'PUT', '/sysDictionaryDetail/updateSysDictionaryDetail', 200, 3190500, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"ID":38,"CreatedAt":"2025-09-26T14:02:03.296612+08:00","UpdatedAt":"2025-09-26T14:02:03.296612+08:00","label":"是","value":"1","extend":"简历管理","status":true,"sort":1,"sysDictionaryID":8}', '{"code":0,"data":{},"msg":"更新成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (63, '2025-09-26 06:47:44.38901+00', '2025-09-26 06:47:44.38901+00', NULL, '127.0.0.1', 'PUT', '/sysDictionaryDetail/updateSysDictionaryDetail', 200, 3082100, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"ID":39,"CreatedAt":"2025-09-26T14:02:45.416031+08:00","UpdatedAt":"2025-09-26T14:02:45.416031+08:00","label":"本科","value":"benke","extend":"简历管理","status":true,"sort":50,"sysDictionaryID":9}', '{"code":0,"data":{},"msg":"更新成功"}', 1);
INSERT INTO "public"."sys_operation_records" VALUES (64, '2025-09-26 06:53:10.9274+00', '2025-09-26 06:53:10.9274+00', NULL, '127.0.0.1', 'PUT', '/基本信息/updateResumeBasicInfo', 200, 3792400, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '', '{"ID":1,"CreatedAt":"2025-09-25T17:58:57.728291+08:00","UpdatedAt":"2025-09-26T08:37:22.088907+08:00","name":"赵吉辉","avatar":"https://qmplusimg.henrongyi.top/1576554439myAvatar.png","phone":"13285519185","email":"zhaojihuionline@outlook.com","address":"合肥","summary":"<p>我的个人简介</p>","skills":{},"isPublic":true,"CreatedBy":1,"UpdatedBy":1,"DeletedBy":0}', '{"code":0,"data":{},"msg":"更新成功"}', 1);

-- ----------------------------
-- Table structure for sys_params
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_params";
CREATE TABLE "public"."sys_params" (
  "id" int8 NOT NULL DEFAULT nextval('sys_params_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "name" text COLLATE "pg_catalog"."default",
  "key" text COLLATE "pg_catalog"."default",
  "value" text COLLATE "pg_catalog"."default",
  "desc" text COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_params"."name" IS '参数名称';
COMMENT ON COLUMN "public"."sys_params"."key" IS '参数键';
COMMENT ON COLUMN "public"."sys_params"."value" IS '参数值';
COMMENT ON COLUMN "public"."sys_params"."desc" IS '参数说明';

-- ----------------------------
-- Records of sys_params
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_authority
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user_authority";
CREATE TABLE "public"."sys_user_authority" (
  "sys_user_id" int8 NOT NULL,
  "sys_authority_authority_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_user_authority"."sys_authority_authority_id" IS '角色ID';

-- ----------------------------
-- Records of sys_user_authority
-- ----------------------------
INSERT INTO "public"."sys_user_authority" VALUES (1, 888);
INSERT INTO "public"."sys_user_authority" VALUES (1, 9528);
INSERT INTO "public"."sys_user_authority" VALUES (1, 8881);
INSERT INTO "public"."sys_user_authority" VALUES (2, 888);

-- ----------------------------
-- Table structure for sys_users
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_users";
CREATE TABLE "public"."sys_users" (
  "id" int8 NOT NULL DEFAULT nextval('sys_users_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "uuid" text COLLATE "pg_catalog"."default",
  "username" text COLLATE "pg_catalog"."default",
  "password" text COLLATE "pg_catalog"."default",
  "nick_name" text COLLATE "pg_catalog"."default" DEFAULT '系统用户'::text,
  "header_img" text COLLATE "pg_catalog"."default" DEFAULT 'https://qmplusimg.henrongyi.top/gva_header.jpg'::text,
  "authority_id" int8 DEFAULT 888,
  "phone" text COLLATE "pg_catalog"."default",
  "email" text COLLATE "pg_catalog"."default",
  "enable" int8 DEFAULT 1,
  "origin_setting" text COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_users"."uuid" IS '用户UUID';
COMMENT ON COLUMN "public"."sys_users"."username" IS '用户登录名';
COMMENT ON COLUMN "public"."sys_users"."password" IS '用户登录密码';
COMMENT ON COLUMN "public"."sys_users"."nick_name" IS '用户昵称';
COMMENT ON COLUMN "public"."sys_users"."header_img" IS '用户头像';
COMMENT ON COLUMN "public"."sys_users"."authority_id" IS '用户角色ID';
COMMENT ON COLUMN "public"."sys_users"."phone" IS '用户手机号';
COMMENT ON COLUMN "public"."sys_users"."email" IS '用户邮箱';
COMMENT ON COLUMN "public"."sys_users"."enable" IS '用户是否被冻结 1正常 2冻结';
COMMENT ON COLUMN "public"."sys_users"."origin_setting" IS '配置';

-- ----------------------------
-- Records of sys_users
-- ----------------------------
INSERT INTO "public"."sys_users" VALUES (2, '2025-09-25 03:30:34.946168+00', '2025-09-25 03:30:34.957079+00', NULL, 'b04f5b93-f832-419b-8a40-f19c30038a88', 'a303176530', '$2a$10$Vrhbmv9C4lyVPWffX4paO.su4b7dyHeSIuei0SgM3xY89lIVlyzfO', '用户1', 'https://qmplusimg.henrongyi.top/1572075907logo.png', 9528, '17611111111', '333333333@qq.com', 1, NULL);
INSERT INTO "public"."sys_users" VALUES (1, '2025-09-25 03:30:34.946168+00', '2025-09-25 07:00:41.636483+00', NULL, '59233be2-2983-4e40-85a5-021d36529c47', 'admin', '$2a$10$TA0jZMWFL4x/tuiexc5steOOwN2Eb7YWv9oQlY1jAbFVVwq08CLb2', 'Mr.奇淼', 'https://qmplusimg.henrongyi.top/gva_header.jpg', 888, '17611111111', '333333333@qq.com', 1, '{"darkMode":"auto","grey":false,"layout_side_collapsed_width":80,"layout_side_item_height":48,"layout_side_width":256,"primaryColor":"#3b82f6","showTabs":true,"show_watermark":true,"side_mode":"normal","transition_type":"slide","weakness":false}');

-- ----------------------------
-- Table structure for sys_versions
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_versions";
CREATE TABLE "public"."sys_versions" (
  "id" int8 NOT NULL DEFAULT nextval('sys_versions_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "version_name" varchar(255) COLLATE "pg_catalog"."default",
  "version_code" varchar(100) COLLATE "pg_catalog"."default",
  "description" varchar(500) COLLATE "pg_catalog"."default",
  "version_data" text COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_versions"."version_name" IS '版本名称';
COMMENT ON COLUMN "public"."sys_versions"."version_code" IS '版本号';
COMMENT ON COLUMN "public"."sys_versions"."description" IS '版本描述';
COMMENT ON COLUMN "public"."sys_versions"."version_data" IS '版本数据JSON';

-- ----------------------------
-- Records of sys_versions
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."casbin_rule_id_seq"
OWNED BY "public"."casbin_rule"."id";
SELECT setval('"public"."casbin_rule_id_seq"', 524, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."exa_attachment_category_id_seq"
OWNED BY "public"."exa_attachment_category"."id";
SELECT setval('"public"."exa_attachment_category_id_seq"', 3, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."exa_customers_id_seq"
OWNED BY "public"."exa_customers"."id";
SELECT setval('"public"."exa_customers_id_seq"', 3, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."exa_file_chunks_id_seq"
OWNED BY "public"."exa_file_chunks"."id";
SELECT setval('"public"."exa_file_chunks_id_seq"', 3, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."exa_file_upload_and_downloads_id_seq"
OWNED BY "public"."exa_file_upload_and_downloads"."id";
SELECT setval('"public"."exa_file_upload_and_downloads_id_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."exa_files_id_seq"
OWNED BY "public"."exa_files"."id";
SELECT setval('"public"."exa_files_id_seq"', 3, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."gva_announcements_info_id_seq"
OWNED BY "public"."gva_announcements_info"."id";
SELECT setval('"public"."gva_announcements_info_id_seq"', 3, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."jwt_blacklists_id_seq"
OWNED BY "public"."jwt_blacklists"."id";
SELECT setval('"public"."jwt_blacklists_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."resume_basic_info_id_seq"
OWNED BY "public"."resume_basic_info"."id";
SELECT setval('"public"."resume_basic_info_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."resume_education_id_seq"
OWNED BY "public"."resume_education"."id";
SELECT setval('"public"."resume_education_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."resume_project_id_seq"
OWNED BY "public"."resume_project"."id";
SELECT setval('"public"."resume_project_id_seq"', 3, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."resume_work_experience_id_seq"
OWNED BY "public"."resume_work_experience"."id";
SELECT setval('"public"."resume_work_experience_id_seq"', 3, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_apis_id_seq"
OWNED BY "public"."sys_apis"."id";
SELECT setval('"public"."sys_apis_id_seq"', 157, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_authorities_authority_id_seq"
OWNED BY "public"."sys_authorities"."authority_id";
SELECT setval('"public"."sys_authorities_authority_id_seq"', 3, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_auto_code_histories_id_seq"
OWNED BY "public"."sys_auto_code_histories"."id";
SELECT setval('"public"."sys_auto_code_histories_id_seq"', 6, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_auto_code_packages_id_seq"
OWNED BY "public"."sys_auto_code_packages"."id";
SELECT setval('"public"."sys_auto_code_packages_id_seq"', 18, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_base_menu_btns_id_seq"
OWNED BY "public"."sys_base_menu_btns"."id";
SELECT setval('"public"."sys_base_menu_btns_id_seq"', 34, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_base_menu_parameters_id_seq"
OWNED BY "public"."sys_base_menu_parameters"."id";
SELECT setval('"public"."sys_base_menu_parameters_id_seq"', 3, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_base_menus_id_seq"
OWNED BY "public"."sys_base_menus"."id";
SELECT setval('"public"."sys_base_menus_id_seq"', 43, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_dictionaries_id_seq"
OWNED BY "public"."sys_dictionaries"."id";
SELECT setval('"public"."sys_dictionaries_id_seq"', 11, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_dictionary_details_id_seq"
OWNED BY "public"."sys_dictionary_details"."id";
SELECT setval('"public"."sys_dictionary_details_id_seq"', 40, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_export_template_condition_id_seq"
OWNED BY "public"."sys_export_template_condition"."id";
SELECT setval('"public"."sys_export_template_condition_id_seq"', 3, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_export_template_join_id_seq"
OWNED BY "public"."sys_export_template_join"."id";
SELECT setval('"public"."sys_export_template_join_id_seq"', 3, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_export_templates_id_seq"
OWNED BY "public"."sys_export_templates"."id";
SELECT setval('"public"."sys_export_templates_id_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_ignore_apis_id_seq"
OWNED BY "public"."sys_ignore_apis"."id";
SELECT setval('"public"."sys_ignore_apis_id_seq"', 15, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_operation_records_id_seq"
OWNED BY "public"."sys_operation_records"."id";
SELECT setval('"public"."sys_operation_records_id_seq"', 65, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_params_id_seq"
OWNED BY "public"."sys_params"."id";
SELECT setval('"public"."sys_params_id_seq"', 3, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_users_id_seq"
OWNED BY "public"."sys_users"."id";
SELECT setval('"public"."sys_users_id_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_versions_id_seq"
OWNED BY "public"."sys_versions"."id";
SELECT setval('"public"."sys_versions_id_seq"', 3, false);

-- ----------------------------
-- Indexes structure for table casbin_rule
-- ----------------------------
CREATE UNIQUE INDEX "idx_casbin_rule" ON "public"."casbin_rule" USING btree (
  "ptype" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "v0" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "v1" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "v2" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "v3" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "v4" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "v5" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table casbin_rule
-- ----------------------------
ALTER TABLE "public"."casbin_rule" ADD CONSTRAINT "casbin_rule_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table exa_attachment_category
-- ----------------------------
CREATE INDEX "idx_exa_attachment_category_deleted_at" ON "public"."exa_attachment_category" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table exa_attachment_category
-- ----------------------------
ALTER TABLE "public"."exa_attachment_category" ADD CONSTRAINT "exa_attachment_category_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table exa_customers
-- ----------------------------
CREATE INDEX "idx_exa_customers_deleted_at" ON "public"."exa_customers" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table exa_customers
-- ----------------------------
ALTER TABLE "public"."exa_customers" ADD CONSTRAINT "exa_customers_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table exa_file_chunks
-- ----------------------------
CREATE INDEX "idx_exa_file_chunks_deleted_at" ON "public"."exa_file_chunks" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table exa_file_chunks
-- ----------------------------
ALTER TABLE "public"."exa_file_chunks" ADD CONSTRAINT "exa_file_chunks_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table exa_file_upload_and_downloads
-- ----------------------------
CREATE INDEX "idx_exa_file_upload_and_downloads_deleted_at" ON "public"."exa_file_upload_and_downloads" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table exa_file_upload_and_downloads
-- ----------------------------
ALTER TABLE "public"."exa_file_upload_and_downloads" ADD CONSTRAINT "exa_file_upload_and_downloads_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table exa_files
-- ----------------------------
CREATE INDEX "idx_exa_files_deleted_at" ON "public"."exa_files" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table exa_files
-- ----------------------------
ALTER TABLE "public"."exa_files" ADD CONSTRAINT "exa_files_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table gva_announcements_info
-- ----------------------------
CREATE INDEX "idx_gva_announcements_info_deleted_at" ON "public"."gva_announcements_info" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table gva_announcements_info
-- ----------------------------
ALTER TABLE "public"."gva_announcements_info" ADD CONSTRAINT "gva_announcements_info_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table jwt_blacklists
-- ----------------------------
CREATE INDEX "idx_jwt_blacklists_deleted_at" ON "public"."jwt_blacklists" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table jwt_blacklists
-- ----------------------------
ALTER TABLE "public"."jwt_blacklists" ADD CONSTRAINT "jwt_blacklists_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table resume_basic_info
-- ----------------------------
CREATE INDEX "idx_resume_basic_info_deleted_at" ON "public"."resume_basic_info" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table resume_basic_info
-- ----------------------------
ALTER TABLE "public"."resume_basic_info" ADD CONSTRAINT "resume_basic_info_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table resume_education
-- ----------------------------
CREATE INDEX "idx_resume_education_deleted_at" ON "public"."resume_education" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table resume_education
-- ----------------------------
ALTER TABLE "public"."resume_education" ADD CONSTRAINT "resume_education_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table resume_project
-- ----------------------------
CREATE INDEX "idx_resume_project_deleted_at" ON "public"."resume_project" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table resume_project
-- ----------------------------
ALTER TABLE "public"."resume_project" ADD CONSTRAINT "resume_project_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table resume_work_experience
-- ----------------------------
CREATE INDEX "idx_resume_work_experience_deleted_at" ON "public"."resume_work_experience" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table resume_work_experience
-- ----------------------------
ALTER TABLE "public"."resume_work_experience" ADD CONSTRAINT "resume_work_experience_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table sys_apis
-- ----------------------------
CREATE INDEX "idx_sys_apis_deleted_at" ON "public"."sys_apis" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sys_apis
-- ----------------------------
ALTER TABLE "public"."sys_apis" ADD CONSTRAINT "sys_apis_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_authorities
-- ----------------------------
ALTER TABLE "public"."sys_authorities" ADD CONSTRAINT "uni_sys_authorities_authority_id" PRIMARY KEY ("authority_id");

-- ----------------------------
-- Primary Key structure for table sys_authority_menus
-- ----------------------------
ALTER TABLE "public"."sys_authority_menus" ADD CONSTRAINT "sys_authority_menus_pkey" PRIMARY KEY ("sys_base_menu_id", "sys_authority_authority_id");

-- ----------------------------
-- Indexes structure for table sys_auto_code_histories
-- ----------------------------
CREATE INDEX "idx_sys_auto_code_histories_deleted_at" ON "public"."sys_auto_code_histories" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sys_auto_code_histories
-- ----------------------------
ALTER TABLE "public"."sys_auto_code_histories" ADD CONSTRAINT "sys_auto_code_histories_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table sys_auto_code_packages
-- ----------------------------
CREATE INDEX "idx_sys_auto_code_packages_deleted_at" ON "public"."sys_auto_code_packages" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sys_auto_code_packages
-- ----------------------------
ALTER TABLE "public"."sys_auto_code_packages" ADD CONSTRAINT "sys_auto_code_packages_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table sys_base_menu_btns
-- ----------------------------
CREATE INDEX "idx_sys_base_menu_btns_deleted_at" ON "public"."sys_base_menu_btns" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sys_base_menu_btns
-- ----------------------------
ALTER TABLE "public"."sys_base_menu_btns" ADD CONSTRAINT "sys_base_menu_btns_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table sys_base_menu_parameters
-- ----------------------------
CREATE INDEX "idx_sys_base_menu_parameters_deleted_at" ON "public"."sys_base_menu_parameters" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sys_base_menu_parameters
-- ----------------------------
ALTER TABLE "public"."sys_base_menu_parameters" ADD CONSTRAINT "sys_base_menu_parameters_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table sys_base_menus
-- ----------------------------
CREATE INDEX "idx_sys_base_menus_deleted_at" ON "public"."sys_base_menus" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sys_base_menus
-- ----------------------------
ALTER TABLE "public"."sys_base_menus" ADD CONSTRAINT "sys_base_menus_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_data_authority_id
-- ----------------------------
ALTER TABLE "public"."sys_data_authority_id" ADD CONSTRAINT "sys_data_authority_id_pkey" PRIMARY KEY ("sys_authority_authority_id", "data_authority_id_authority_id");

-- ----------------------------
-- Indexes structure for table sys_dictionaries
-- ----------------------------
CREATE INDEX "idx_sys_dictionaries_deleted_at" ON "public"."sys_dictionaries" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sys_dictionaries
-- ----------------------------
ALTER TABLE "public"."sys_dictionaries" ADD CONSTRAINT "sys_dictionaries_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table sys_dictionary_details
-- ----------------------------
CREATE INDEX "idx_sys_dictionary_details_deleted_at" ON "public"."sys_dictionary_details" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sys_dictionary_details
-- ----------------------------
ALTER TABLE "public"."sys_dictionary_details" ADD CONSTRAINT "sys_dictionary_details_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table sys_export_template_condition
-- ----------------------------
CREATE INDEX "idx_sys_export_template_condition_deleted_at" ON "public"."sys_export_template_condition" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sys_export_template_condition
-- ----------------------------
ALTER TABLE "public"."sys_export_template_condition" ADD CONSTRAINT "sys_export_template_condition_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table sys_export_template_join
-- ----------------------------
CREATE INDEX "idx_sys_export_template_join_deleted_at" ON "public"."sys_export_template_join" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sys_export_template_join
-- ----------------------------
ALTER TABLE "public"."sys_export_template_join" ADD CONSTRAINT "sys_export_template_join_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table sys_export_templates
-- ----------------------------
CREATE INDEX "idx_sys_export_templates_deleted_at" ON "public"."sys_export_templates" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sys_export_templates
-- ----------------------------
ALTER TABLE "public"."sys_export_templates" ADD CONSTRAINT "sys_export_templates_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table sys_ignore_apis
-- ----------------------------
CREATE INDEX "idx_sys_ignore_apis_deleted_at" ON "public"."sys_ignore_apis" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sys_ignore_apis
-- ----------------------------
ALTER TABLE "public"."sys_ignore_apis" ADD CONSTRAINT "sys_ignore_apis_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table sys_operation_records
-- ----------------------------
CREATE INDEX "idx_sys_operation_records_deleted_at" ON "public"."sys_operation_records" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sys_operation_records
-- ----------------------------
ALTER TABLE "public"."sys_operation_records" ADD CONSTRAINT "sys_operation_records_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table sys_params
-- ----------------------------
CREATE INDEX "idx_sys_params_deleted_at" ON "public"."sys_params" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sys_params
-- ----------------------------
ALTER TABLE "public"."sys_params" ADD CONSTRAINT "sys_params_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_user_authority
-- ----------------------------
ALTER TABLE "public"."sys_user_authority" ADD CONSTRAINT "sys_user_authority_pkey" PRIMARY KEY ("sys_user_id", "sys_authority_authority_id");

-- ----------------------------
-- Indexes structure for table sys_users
-- ----------------------------
CREATE INDEX "idx_sys_users_deleted_at" ON "public"."sys_users" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);
CREATE INDEX "idx_sys_users_username" ON "public"."sys_users" USING btree (
  "username" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_sys_users_uuid" ON "public"."sys_users" USING btree (
  "uuid" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sys_users
-- ----------------------------
ALTER TABLE "public"."sys_users" ADD CONSTRAINT "sys_users_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table sys_versions
-- ----------------------------
CREATE INDEX "idx_sys_versions_deleted_at" ON "public"."sys_versions" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sys_versions
-- ----------------------------
ALTER TABLE "public"."sys_versions" ADD CONSTRAINT "sys_versions_pkey" PRIMARY KEY ("id");
