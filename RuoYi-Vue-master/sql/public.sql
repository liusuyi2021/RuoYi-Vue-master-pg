/*
 Navicat Premium Data Transfer

 Source Server         : postgres
 Source Server Type    : PostgreSQL
 Source Server Version : 90305
 Source Host           : 127.0.0.1:5432
 Source Catalog        : ry-vue
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90305
 File Encoding         : 65001

 Date: 28/01/2023 23:00:45
*/


-- ----------------------------
-- Sequence structure for gen_table_column_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gen_table_column_id_seq";
CREATE SEQUENCE "public"."gen_table_column_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 99999999
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gen_table_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gen_table_id_seq";
CREATE SEQUENCE "public"."gen_table_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 99999999
START 200
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_config_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_config_id_seq";
CREATE SEQUENCE "public"."sys_config_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 99999999
START 6
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_dept_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_dept_id_seq";
CREATE SEQUENCE "public"."sys_dept_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 99999999
START 110
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_dict_type_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_dict_type_id_seq";
CREATE SEQUENCE "public"."sys_dict_type_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 99999999
START 11
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_job_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_job_log_id_seq";
CREATE SEQUENCE "public"."sys_job_log_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 99999999
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_logininfor_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_logininfor_id_seq";
CREATE SEQUENCE "public"."sys_logininfor_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 99999999
START 200
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_menu_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_menu_id_seq";
CREATE SEQUENCE "public"."sys_menu_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 99999999
START 1061
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_notice_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_notice_id_seq";
CREATE SEQUENCE "public"."sys_notice_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 99999999
START 3
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_oper_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_oper_log_id_seq";
CREATE SEQUENCE "public"."sys_oper_log_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 99999999
START 200
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_post_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_post_id_seq";
CREATE SEQUENCE "public"."sys_post_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 99999999
START 5
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_role_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_role_id_seq";
CREATE SEQUENCE "public"."sys_role_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 99999999
START 3
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_user_id_seq";
CREATE SEQUENCE "public"."sys_user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 99999999
START 3
CACHE 1;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS "public"."gen_table";
CREATE TABLE "public"."gen_table" (
  "table_id" int8 NOT NULL DEFAULT nextval('gen_table_id_seq'::regclass),
  "table_name" varchar(200) COLLATE "pg_catalog"."default",
  "table_comment" varchar(500) COLLATE "pg_catalog"."default",
  "sub_table_name" varchar(64) COLLATE "pg_catalog"."default",
  "sub_table_fk_name" varchar(64) COLLATE "pg_catalog"."default",
  "class_name" varchar(100) COLLATE "pg_catalog"."default",
  "tpl_category" varchar(200) COLLATE "pg_catalog"."default",
  "package_name" varchar(100) COLLATE "pg_catalog"."default",
  "module_name" varchar(30) COLLATE "pg_catalog"."default",
  "business_name" varchar(30) COLLATE "pg_catalog"."default",
  "function_name" varchar(50) COLLATE "pg_catalog"."default",
  "function_author" varchar(50) COLLATE "pg_catalog"."default",
  "gen_type" char(1) COLLATE "pg_catalog"."default",
  "gen_path" varchar(200) COLLATE "pg_catalog"."default",
  "options" varchar(1000) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."gen_table"."table_id" IS '编号';
COMMENT ON COLUMN "public"."gen_table"."table_name" IS '表名称';
COMMENT ON COLUMN "public"."gen_table"."table_comment" IS '表描述';
COMMENT ON COLUMN "public"."gen_table"."sub_table_name" IS '关联子表的表名';
COMMENT ON COLUMN "public"."gen_table"."sub_table_fk_name" IS '子表关联的外键名';
COMMENT ON COLUMN "public"."gen_table"."class_name" IS '实体类名称';
COMMENT ON COLUMN "public"."gen_table"."tpl_category" IS '使用的模板（crud单表操作 tree树表操作）';
COMMENT ON COLUMN "public"."gen_table"."package_name" IS '生成包路径';
COMMENT ON COLUMN "public"."gen_table"."module_name" IS '生成模块名';
COMMENT ON COLUMN "public"."gen_table"."business_name" IS '生成业务名';
COMMENT ON COLUMN "public"."gen_table"."function_name" IS '生成功能名';
COMMENT ON COLUMN "public"."gen_table"."function_author" IS '生成功能作者';
COMMENT ON COLUMN "public"."gen_table"."gen_type" IS '生成代码方式（0zip压缩包 1自定义路径）';
COMMENT ON COLUMN "public"."gen_table"."gen_path" IS '生成路径（不填默认项目路径）';
COMMENT ON COLUMN "public"."gen_table"."options" IS '其它生成选项';
COMMENT ON COLUMN "public"."gen_table"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."gen_table"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."gen_table"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."gen_table"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."gen_table"."remark" IS '备注';
COMMENT ON TABLE "public"."gen_table" IS '代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO "public"."gen_table" VALUES (205, 'student', '学生表', NULL, NULL, 'Student', NULL, 'com.ruoyi.system', 'system', 'student', '学生', 'ruoyi', NULL, NULL, NULL, 'admin', '2023-01-11 15:52:27.245483', NULL, NULL, NULL);
INSERT INTO "public"."gen_table" VALUES (206, 'teacher', '教师表', '', '', 'Teacher', 'crud', 'com.ruoyi.system', 'school', 'teacher', '教师', 'liusuyi', NULL, NULL, '{"parentMenuId":"4"}', 'admin', '2023-01-11 15:58:44.348299', NULL, '2023-01-11 16:02:45.123134', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS "public"."gen_table_column";
CREATE TABLE "public"."gen_table_column" (
  "column_id" int8 NOT NULL DEFAULT nextval('gen_table_column_id_seq'::regclass),
  "table_id" int8,
  "column_name" varchar(200) COLLATE "pg_catalog"."default",
  "column_comment" varchar(500) COLLATE "pg_catalog"."default",
  "column_type" varchar(100) COLLATE "pg_catalog"."default",
  "java_type" varchar(500) COLLATE "pg_catalog"."default",
  "java_field" varchar(200) COLLATE "pg_catalog"."default",
  "is_pk" char(1) COLLATE "pg_catalog"."default",
  "is_increment" char(1) COLLATE "pg_catalog"."default",
  "is_required" char(1) COLLATE "pg_catalog"."default",
  "is_insert" char(1) COLLATE "pg_catalog"."default",
  "is_edit" char(1) COLLATE "pg_catalog"."default",
  "is_list" char(1) COLLATE "pg_catalog"."default",
  "is_query" char(1) COLLATE "pg_catalog"."default",
  "query_type" varchar(200) COLLATE "pg_catalog"."default",
  "html_type" varchar(200) COLLATE "pg_catalog"."default",
  "dict_type" varchar(200) COLLATE "pg_catalog"."default",
  "sort" int4,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."gen_table_column"."column_id" IS '编号';
COMMENT ON COLUMN "public"."gen_table_column"."table_id" IS '归属表编号';
COMMENT ON COLUMN "public"."gen_table_column"."column_name" IS '列名称';
COMMENT ON COLUMN "public"."gen_table_column"."column_comment" IS '列描述';
COMMENT ON COLUMN "public"."gen_table_column"."column_type" IS '列类型';
COMMENT ON COLUMN "public"."gen_table_column"."java_type" IS 'JAVA类型';
COMMENT ON COLUMN "public"."gen_table_column"."java_field" IS 'JAVA字段名';
COMMENT ON COLUMN "public"."gen_table_column"."is_pk" IS '是否主键（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_increment" IS '是否自增（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_required" IS '是否必填（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_insert" IS '是否为插入字段（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_edit" IS '是否编辑字段（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_list" IS '是否列表字段（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_query" IS '是否查询字段（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."query_type" IS '查询方式（等于、不等于、大于、小于、范围）';
COMMENT ON COLUMN "public"."gen_table_column"."html_type" IS '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）';
COMMENT ON COLUMN "public"."gen_table_column"."dict_type" IS '字典类型';
COMMENT ON COLUMN "public"."gen_table_column"."sort" IS '排序';
COMMENT ON COLUMN "public"."gen_table_column"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."gen_table_column"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."gen_table_column"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."gen_table_column"."update_time" IS '更新时间';
COMMENT ON TABLE "public"."gen_table_column" IS '代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO "public"."gen_table_column" VALUES (1, 205, 'id', 'id', 'int4', 'String', 'id', 't', NULL, 't', '1', NULL, NULL, NULL, 'EQ', NULL, NULL, NULL, 'admin', '2023-01-11 15:52:27.245483', NULL, NULL);
INSERT INTO "public"."gen_table_column" VALUES (2, 205, 'name', '姓名', 'varchar', 'String', 'name', 'f', NULL, 'f', '1', '1', '1', '1', 'LIKE', 'input', NULL, NULL, 'admin', '2023-01-11 15:52:27.245483', NULL, NULL);
INSERT INTO "public"."gen_table_column" VALUES (3, 206, 'id', 'id', 'int4', 'Integer', 'id', 't', NULL, 't', '1', NULL, NULL, NULL, 'EQ', NULL, NULL, NULL, 'admin', '2023-01-11 15:58:44.348299', NULL, '2023-01-11 16:02:45.123134');
INSERT INTO "public"."gen_table_column" VALUES (4, 206, 'name', '教师姓名', 'varchar', 'String', 'name', 'f', NULL, 'f', '1', '1', '1', '1', 'LIKE', 'input', NULL, NULL, 'admin', '2023-01-11 15:58:44.348299', NULL, '2023-01-11 16:02:45.123134');
INSERT INTO "public"."gen_table_column" VALUES (5, 206, 'phone', '教师电话', 'varchar', 'String', 'phone', 'f', NULL, 'f', '1', '1', '1', '1', 'EQ', 'input', NULL, NULL, 'admin', '2023-01-11 15:58:44.348299', NULL, '2023-01-11 16:02:45.123134');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_blob_triggers";
CREATE TABLE "public"."qrtz_blob_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "blob_data" bytea
)
;
COMMENT ON COLUMN "public"."qrtz_blob_triggers"."sched_name" IS '调度名称';
COMMENT ON COLUMN "public"."qrtz_blob_triggers"."trigger_name" IS 'qrtz_triggers表trigger_name的外键';
COMMENT ON COLUMN "public"."qrtz_blob_triggers"."trigger_group" IS 'qrtz_triggers表trigger_group的外键';
COMMENT ON COLUMN "public"."qrtz_blob_triggers"."blob_data" IS '存放持久化Trigger对象';
COMMENT ON TABLE "public"."qrtz_blob_triggers" IS 'Blob类型的触发器表';

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_calendars";
CREATE TABLE "public"."qrtz_calendars" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "calendar_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "calendar" bytea NOT NULL
)
;
COMMENT ON COLUMN "public"."qrtz_calendars"."sched_name" IS '调度名称';
COMMENT ON COLUMN "public"."qrtz_calendars"."calendar_name" IS '日历名称';
COMMENT ON COLUMN "public"."qrtz_calendars"."calendar" IS '存放持久化calendar对象';
COMMENT ON TABLE "public"."qrtz_calendars" IS '日历信息表';

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_cron_triggers";
CREATE TABLE "public"."qrtz_cron_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "cron_expression" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "time_zone_id" varchar(80) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."qrtz_cron_triggers"."sched_name" IS '调度名称';
COMMENT ON COLUMN "public"."qrtz_cron_triggers"."trigger_name" IS 'qrtz_triggers表trigger_name的外键';
COMMENT ON COLUMN "public"."qrtz_cron_triggers"."trigger_group" IS 'qrtz_triggers表trigger_group的外键';
COMMENT ON COLUMN "public"."qrtz_cron_triggers"."cron_expression" IS 'cron表达式';
COMMENT ON COLUMN "public"."qrtz_cron_triggers"."time_zone_id" IS '时区';
COMMENT ON TABLE "public"."qrtz_cron_triggers" IS 'Cron类型的触发器表';

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_fired_triggers";
CREATE TABLE "public"."qrtz_fired_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "entry_id" varchar(95) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "instance_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "fired_time" int8 NOT NULL,
  "sched_time" int8 NOT NULL,
  "priority" int4 NOT NULL,
  "state" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "job_name" varchar(200) COLLATE "pg_catalog"."default",
  "job_group" varchar(200) COLLATE "pg_catalog"."default",
  "is_nonconcurrent" varchar(1) COLLATE "pg_catalog"."default",
  "requests_recovery" varchar(1) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."qrtz_fired_triggers"."sched_name" IS '调度名称';
COMMENT ON COLUMN "public"."qrtz_fired_triggers"."entry_id" IS '调度器实例id';
COMMENT ON COLUMN "public"."qrtz_fired_triggers"."trigger_name" IS 'qrtz_triggers表trigger_name的外键';
COMMENT ON COLUMN "public"."qrtz_fired_triggers"."trigger_group" IS 'qrtz_triggers表trigger_group的外键';
COMMENT ON COLUMN "public"."qrtz_fired_triggers"."instance_name" IS '调度器实例名';
COMMENT ON COLUMN "public"."qrtz_fired_triggers"."fired_time" IS '触发的时间';
COMMENT ON COLUMN "public"."qrtz_fired_triggers"."sched_time" IS '定时器制定的时间';
COMMENT ON COLUMN "public"."qrtz_fired_triggers"."priority" IS '优先级';
COMMENT ON COLUMN "public"."qrtz_fired_triggers"."state" IS '状态';
COMMENT ON COLUMN "public"."qrtz_fired_triggers"."job_name" IS '任务名称';
COMMENT ON COLUMN "public"."qrtz_fired_triggers"."job_group" IS '任务组名';
COMMENT ON COLUMN "public"."qrtz_fired_triggers"."is_nonconcurrent" IS '是否并发';
COMMENT ON COLUMN "public"."qrtz_fired_triggers"."requests_recovery" IS '是否接受恢复执行';
COMMENT ON TABLE "public"."qrtz_fired_triggers" IS '已触发的触发器表';

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_job_details";
CREATE TABLE "public"."qrtz_job_details" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "job_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(250) COLLATE "pg_catalog"."default",
  "job_class_name" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "is_durable" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "is_nonconcurrent" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "is_update_data" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "requests_recovery" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "job_data" bytea
)
;
COMMENT ON COLUMN "public"."qrtz_job_details"."sched_name" IS '调度名称';
COMMENT ON COLUMN "public"."qrtz_job_details"."job_name" IS '任务名称';
COMMENT ON COLUMN "public"."qrtz_job_details"."job_group" IS '任务组名';
COMMENT ON COLUMN "public"."qrtz_job_details"."description" IS '相关介绍';
COMMENT ON COLUMN "public"."qrtz_job_details"."job_class_name" IS '执行任务类名称';
COMMENT ON COLUMN "public"."qrtz_job_details"."is_durable" IS '是否持久化';
COMMENT ON COLUMN "public"."qrtz_job_details"."is_nonconcurrent" IS '是否并发';
COMMENT ON COLUMN "public"."qrtz_job_details"."is_update_data" IS '是否更新数据';
COMMENT ON COLUMN "public"."qrtz_job_details"."requests_recovery" IS '是否接受恢复执行';
COMMENT ON COLUMN "public"."qrtz_job_details"."job_data" IS '存放持久化job对象';
COMMENT ON TABLE "public"."qrtz_job_details" IS '任务详细信息表';

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_locks";
CREATE TABLE "public"."qrtz_locks" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "lock_name" varchar(40) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."qrtz_locks"."sched_name" IS '调度名称';
COMMENT ON COLUMN "public"."qrtz_locks"."lock_name" IS '悲观锁名称';
COMMENT ON TABLE "public"."qrtz_locks" IS '存储的悲观锁信息表';

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_paused_trigger_grps";
CREATE TABLE "public"."qrtz_paused_trigger_grps" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."qrtz_paused_trigger_grps"."sched_name" IS '调度名称';
COMMENT ON COLUMN "public"."qrtz_paused_trigger_grps"."trigger_group" IS 'qrtz_triggers表trigger_group的外键';
COMMENT ON TABLE "public"."qrtz_paused_trigger_grps" IS '暂停的触发器表';

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_scheduler_state";
CREATE TABLE "public"."qrtz_scheduler_state" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "instance_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "last_checkin_time" int8 NOT NULL,
  "checkin_interval" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."qrtz_scheduler_state"."sched_name" IS '调度名称';
COMMENT ON COLUMN "public"."qrtz_scheduler_state"."instance_name" IS '实例名称';
COMMENT ON COLUMN "public"."qrtz_scheduler_state"."last_checkin_time" IS '上次检查时间';
COMMENT ON COLUMN "public"."qrtz_scheduler_state"."checkin_interval" IS '检查间隔时间';
COMMENT ON TABLE "public"."qrtz_scheduler_state" IS '调度器状态表';

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_simple_triggers";
CREATE TABLE "public"."qrtz_simple_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "repeat_count" int8 NOT NULL,
  "repeat_interval" int8 NOT NULL,
  "times_triggered" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."qrtz_simple_triggers"."sched_name" IS '调度名称';
COMMENT ON COLUMN "public"."qrtz_simple_triggers"."trigger_name" IS 'qrtz_triggers表trigger_name的外键';
COMMENT ON COLUMN "public"."qrtz_simple_triggers"."trigger_group" IS 'qrtz_triggers表trigger_group的外键';
COMMENT ON COLUMN "public"."qrtz_simple_triggers"."repeat_count" IS '重复的次数统计';
COMMENT ON COLUMN "public"."qrtz_simple_triggers"."repeat_interval" IS '重复的间隔时间';
COMMENT ON COLUMN "public"."qrtz_simple_triggers"."times_triggered" IS '已经触发的次数';
COMMENT ON TABLE "public"."qrtz_simple_triggers" IS '简单触发器的信息表';

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_simprop_triggers";
CREATE TABLE "public"."qrtz_simprop_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "str_prop_1" varchar(512) COLLATE "pg_catalog"."default",
  "str_prop_2" varchar(512) COLLATE "pg_catalog"."default",
  "str_prop_3" varchar(512) COLLATE "pg_catalog"."default",
  "int_prop_1" int4,
  "int_prop_2" int4,
  "long_prop_1" int8,
  "long_prop_2" int8,
  "dec_prop_1" numeric(13,4),
  "dec_prop_2" numeric(13,4),
  "bool_prop_1" varchar(1) COLLATE "pg_catalog"."default",
  "bool_prop_2" varchar(1) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."qrtz_simprop_triggers"."sched_name" IS '调度名称';
COMMENT ON COLUMN "public"."qrtz_simprop_triggers"."trigger_name" IS 'qrtz_triggers表trigger_name的外键';
COMMENT ON COLUMN "public"."qrtz_simprop_triggers"."trigger_group" IS 'qrtz_triggers表trigger_group的外键';
COMMENT ON COLUMN "public"."qrtz_simprop_triggers"."str_prop_1" IS 'String类型的trigger的第一个参数';
COMMENT ON COLUMN "public"."qrtz_simprop_triggers"."str_prop_2" IS 'String类型的trigger的第二个参数';
COMMENT ON COLUMN "public"."qrtz_simprop_triggers"."str_prop_3" IS 'String类型的trigger的第三个参数';
COMMENT ON COLUMN "public"."qrtz_simprop_triggers"."int_prop_1" IS 'int类型的trigger的第一个参数';
COMMENT ON COLUMN "public"."qrtz_simprop_triggers"."int_prop_2" IS 'int类型的trigger的第二个参数';
COMMENT ON COLUMN "public"."qrtz_simprop_triggers"."long_prop_1" IS 'long类型的trigger的第一个参数';
COMMENT ON COLUMN "public"."qrtz_simprop_triggers"."long_prop_2" IS 'long类型的trigger的第二个参数';
COMMENT ON COLUMN "public"."qrtz_simprop_triggers"."dec_prop_1" IS 'decimal类型的trigger的第一个参数';
COMMENT ON COLUMN "public"."qrtz_simprop_triggers"."dec_prop_2" IS 'decimal类型的trigger的第二个参数';
COMMENT ON COLUMN "public"."qrtz_simprop_triggers"."bool_prop_1" IS 'Boolean类型的trigger的第一个参数';
COMMENT ON COLUMN "public"."qrtz_simprop_triggers"."bool_prop_2" IS 'Boolean类型的trigger的第二个参数';
COMMENT ON TABLE "public"."qrtz_simprop_triggers" IS '同步机制的行锁表';

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_triggers";
CREATE TABLE "public"."qrtz_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "job_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(250) COLLATE "pg_catalog"."default",
  "next_fire_time" int8,
  "prev_fire_time" int8,
  "priority" int4,
  "trigger_state" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_type" varchar(8) COLLATE "pg_catalog"."default" NOT NULL,
  "start_time" int8 NOT NULL,
  "end_time" int8,
  "calendar_name" varchar(200) COLLATE "pg_catalog"."default",
  "misfire_instr" int2,
  "job_data" bytea
)
;
COMMENT ON COLUMN "public"."qrtz_triggers"."sched_name" IS '调度名称';
COMMENT ON COLUMN "public"."qrtz_triggers"."trigger_name" IS '触发器的名字';
COMMENT ON COLUMN "public"."qrtz_triggers"."trigger_group" IS '触发器所属组的名字';
COMMENT ON COLUMN "public"."qrtz_triggers"."job_name" IS 'qrtz_job_details表job_name的外键';
COMMENT ON COLUMN "public"."qrtz_triggers"."job_group" IS 'qrtz_job_details表job_group的外键';
COMMENT ON COLUMN "public"."qrtz_triggers"."description" IS '相关介绍';
COMMENT ON COLUMN "public"."qrtz_triggers"."next_fire_time" IS '上一次触发时间（毫秒）';
COMMENT ON COLUMN "public"."qrtz_triggers"."prev_fire_time" IS '下一次触发时间（默认为-1表示不触发）';
COMMENT ON COLUMN "public"."qrtz_triggers"."priority" IS '优先级';
COMMENT ON COLUMN "public"."qrtz_triggers"."trigger_state" IS '触发器状态';
COMMENT ON COLUMN "public"."qrtz_triggers"."trigger_type" IS '触发器的类型';
COMMENT ON COLUMN "public"."qrtz_triggers"."start_time" IS '开始时间';
COMMENT ON COLUMN "public"."qrtz_triggers"."end_time" IS '结束时间';
COMMENT ON COLUMN "public"."qrtz_triggers"."calendar_name" IS '日程表名称';
COMMENT ON COLUMN "public"."qrtz_triggers"."misfire_instr" IS '补偿执行的策略';
COMMENT ON COLUMN "public"."qrtz_triggers"."job_data" IS '存放持久化job对象';
COMMENT ON TABLE "public"."qrtz_triggers" IS '触发器详细信息表';

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS "public"."student";
CREATE TABLE "public"."student" (
  "id" int4 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."student"."id" IS 'id';
COMMENT ON COLUMN "public"."student"."name" IS '姓名';
COMMENT ON TABLE "public"."student" IS '学生表';

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_config";
CREATE TABLE "public"."sys_config" (
  "config_id" int4 NOT NULL DEFAULT nextval('sys_config_id_seq'::regclass),
  "config_name" varchar(100) COLLATE "pg_catalog"."default",
  "config_key" varchar(100) COLLATE "pg_catalog"."default",
  "config_value" varchar(500) COLLATE "pg_catalog"."default",
  "config_type" char(1) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_config"."config_id" IS '参数主键';
COMMENT ON COLUMN "public"."sys_config"."config_name" IS '参数名称';
COMMENT ON COLUMN "public"."sys_config"."config_key" IS '参数键名';
COMMENT ON COLUMN "public"."sys_config"."config_value" IS '参数键值';
COMMENT ON COLUMN "public"."sys_config"."config_type" IS '系统内置（Y是 N否）';
COMMENT ON COLUMN "public"."sys_config"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_config"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_config"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_config"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_config"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_config" IS '参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO "public"."sys_config" VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-01-11 08:15:26', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO "public"."sys_config" VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-01-11 08:15:26', '', NULL, '初始化密码 123456');
INSERT INTO "public"."sys_config" VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-01-11 08:15:26', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO "public"."sys_config" VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-01-11 08:15:26', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO "public"."sys_config" VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'false', 'Y', 'admin', '2023-01-11 08:15:26', 'admin', '2023-01-28 22:47:56.489', '是否开启验证码功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dept";
CREATE TABLE "public"."sys_dept" (
  "dept_id" int8 NOT NULL DEFAULT nextval('sys_dept_id_seq'::regclass),
  "parent_id" int8,
  "ancestors" varchar(50) COLLATE "pg_catalog"."default",
  "dept_name" varchar(30) COLLATE "pg_catalog"."default",
  "order_num" int4,
  "leader" varchar(20) COLLATE "pg_catalog"."default",
  "phone" varchar(11) COLLATE "pg_catalog"."default",
  "email" varchar(50) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default",
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::character varying,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."sys_dept"."dept_id" IS '部门id';
COMMENT ON COLUMN "public"."sys_dept"."parent_id" IS '父部门id';
COMMENT ON COLUMN "public"."sys_dept"."ancestors" IS '祖级列表';
COMMENT ON COLUMN "public"."sys_dept"."dept_name" IS '部门名称';
COMMENT ON COLUMN "public"."sys_dept"."order_num" IS '显示顺序';
COMMENT ON COLUMN "public"."sys_dept"."leader" IS '负责人';
COMMENT ON COLUMN "public"."sys_dept"."phone" IS '联系电话';
COMMENT ON COLUMN "public"."sys_dept"."email" IS '邮箱';
COMMENT ON COLUMN "public"."sys_dept"."status" IS '部门状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_dept"."del_flag" IS '删除标志（0代表存在 2代表删除）';
COMMENT ON COLUMN "public"."sys_dept"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_dept"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_dept"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_dept"."update_time" IS '更新时间';
COMMENT ON TABLE "public"."sys_dept" IS '部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO "public"."sys_dept" VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-01-11 08:15:25', '', NULL);
INSERT INTO "public"."sys_dept" VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-01-11 08:15:25', '', NULL);
INSERT INTO "public"."sys_dept" VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-01-11 08:15:25', '', NULL);
INSERT INTO "public"."sys_dept" VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-01-11 08:15:25', '', NULL);
INSERT INTO "public"."sys_dept" VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-01-11 08:15:25', '', NULL);
INSERT INTO "public"."sys_dept" VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-01-11 08:15:25', '', NULL);
INSERT INTO "public"."sys_dept" VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-01-11 08:15:25', '', NULL);
INSERT INTO "public"."sys_dept" VALUES (103, 101, '0,100,101', '小队', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-01-11 08:15:25', 'admin', '2023-01-11 11:48:44.928724');
INSERT INTO "public"."sys_dept" VALUES (101, 100, '0,100', '作业区', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-01-11 08:15:25', 'admin', '2023-01-11 11:48:37.522501');
INSERT INTO "public"."sys_dept" VALUES (100, 0, '0', '厂级', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-01-11 08:15:25', 'admin', '2023-01-11 11:48:22.663175');
INSERT INTO "public"."sys_dept" VALUES (110, 100, '0,100', '作业区1', 3, NULL, NULL, NULL, '0', '0', 'admin', '2023-01-11 12:00:50.080603', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dict_data";
CREATE TABLE "public"."sys_dict_data" (
  "dict_code" int8 NOT NULL,
  "dict_sort" int4,
  "dict_label" varchar(100) COLLATE "pg_catalog"."default",
  "dict_value" varchar(100) COLLATE "pg_catalog"."default",
  "dict_type" varchar(100) COLLATE "pg_catalog"."default",
  "css_class" varchar(100) COLLATE "pg_catalog"."default",
  "list_class" varchar(100) COLLATE "pg_catalog"."default",
  "is_default" char(1) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_dict_data"."dict_code" IS '字典编码';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_sort" IS '字典排序';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_label" IS '字典标签';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_value" IS '字典键值';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_type" IS '字典类型';
COMMENT ON COLUMN "public"."sys_dict_data"."css_class" IS '样式属性（其他样式扩展）';
COMMENT ON COLUMN "public"."sys_dict_data"."list_class" IS '表格回显样式';
COMMENT ON COLUMN "public"."sys_dict_data"."is_default" IS '是否默认（Y是 N否）';
COMMENT ON COLUMN "public"."sys_dict_data"."status" IS '状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_dict_data"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_dict_data"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_dict_data"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_dict_data"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_dict_data"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_dict_data" IS '字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO "public"."sys_dict_data" VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '性别男');
INSERT INTO "public"."sys_dict_data" VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '性别女');
INSERT INTO "public"."sys_dict_data" VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '性别未知');
INSERT INTO "public"."sys_dict_data" VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '显示菜单');
INSERT INTO "public"."sys_dict_data" VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '隐藏菜单');
INSERT INTO "public"."sys_dict_data" VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '正常状态');
INSERT INTO "public"."sys_dict_data" VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '停用状态');
INSERT INTO "public"."sys_dict_data" VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '正常状态');
INSERT INTO "public"."sys_dict_data" VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '停用状态');
INSERT INTO "public"."sys_dict_data" VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '默认分组');
INSERT INTO "public"."sys_dict_data" VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '系统分组');
INSERT INTO "public"."sys_dict_data" VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '系统默认是');
INSERT INTO "public"."sys_dict_data" VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '系统默认否');
INSERT INTO "public"."sys_dict_data" VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '通知');
INSERT INTO "public"."sys_dict_data" VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '公告');
INSERT INTO "public"."sys_dict_data" VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '正常状态');
INSERT INTO "public"."sys_dict_data" VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '关闭状态');
INSERT INTO "public"."sys_dict_data" VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '其他操作');
INSERT INTO "public"."sys_dict_data" VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '新增操作');
INSERT INTO "public"."sys_dict_data" VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '修改操作');
INSERT INTO "public"."sys_dict_data" VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '删除操作');
INSERT INTO "public"."sys_dict_data" VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '授权操作');
INSERT INTO "public"."sys_dict_data" VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '导出操作');
INSERT INTO "public"."sys_dict_data" VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '导入操作');
INSERT INTO "public"."sys_dict_data" VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '强退操作');
INSERT INTO "public"."sys_dict_data" VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '生成操作');
INSERT INTO "public"."sys_dict_data" VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '清空操作');
INSERT INTO "public"."sys_dict_data" VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '正常状态');
INSERT INTO "public"."sys_dict_data" VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dict_type";
CREATE TABLE "public"."sys_dict_type" (
  "dict_id" int8 NOT NULL DEFAULT nextval('sys_dict_type_id_seq'::regclass),
  "dict_name" varchar(100) COLLATE "pg_catalog"."default",
  "dict_type" varchar(100) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_dict_type"."dict_id" IS '字典主键';
COMMENT ON COLUMN "public"."sys_dict_type"."dict_name" IS '字典名称';
COMMENT ON COLUMN "public"."sys_dict_type"."dict_type" IS '字典类型';
COMMENT ON COLUMN "public"."sys_dict_type"."status" IS '状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_dict_type"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_dict_type"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_dict_type"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_dict_type"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_dict_type"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_dict_type" IS '字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO "public"."sys_dict_type" VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '用户性别列表');
INSERT INTO "public"."sys_dict_type" VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '菜单状态列表');
INSERT INTO "public"."sys_dict_type" VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '系统开关列表');
INSERT INTO "public"."sys_dict_type" VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '任务状态列表');
INSERT INTO "public"."sys_dict_type" VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '任务分组列表');
INSERT INTO "public"."sys_dict_type" VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '系统是否列表');
INSERT INTO "public"."sys_dict_type" VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '通知类型列表');
INSERT INTO "public"."sys_dict_type" VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '通知状态列表');
INSERT INTO "public"."sys_dict_type" VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '操作类型列表');
INSERT INTO "public"."sys_dict_type" VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '登录状态列表');
INSERT INTO "public"."sys_dict_type" VALUES (11, '测试字典', 'test', '0', 'admin', '2023-01-11 12:49:50.245574', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_job";
CREATE TABLE "public"."sys_job" (
  "job_id" int8 NOT NULL,
  "job_name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "invoke_target" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "cron_expression" varchar(255) COLLATE "pg_catalog"."default",
  "misfire_policy" varchar(20) COLLATE "pg_catalog"."default",
  "concurrent" char(1) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_job"."job_id" IS '任务ID';
COMMENT ON COLUMN "public"."sys_job"."job_name" IS '任务名称';
COMMENT ON COLUMN "public"."sys_job"."job_group" IS '任务组名';
COMMENT ON COLUMN "public"."sys_job"."invoke_target" IS '调用目标字符串';
COMMENT ON COLUMN "public"."sys_job"."cron_expression" IS 'cron执行表达式';
COMMENT ON COLUMN "public"."sys_job"."misfire_policy" IS '计划执行错误策略（1立即执行 2执行一次 3放弃执行）';
COMMENT ON COLUMN "public"."sys_job"."concurrent" IS '是否并发执行（0允许 1禁止）';
COMMENT ON COLUMN "public"."sys_job"."status" IS '状态（0正常 1暂停）';
COMMENT ON COLUMN "public"."sys_job"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_job"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_job"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_job"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_job"."remark" IS '备注信息';
COMMENT ON TABLE "public"."sys_job" IS '定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO "public"."sys_job" VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(''ry'')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-01-11 08:15:26', '', NULL, '');
INSERT INTO "public"."sys_job" VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(''ry'', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-01-11 08:15:26', '', NULL, '');
INSERT INTO "public"."sys_job" VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2023-01-11 08:15:26', '', '2023-01-11 14:02:34.679047', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_job_log";
CREATE TABLE "public"."sys_job_log" (
  "job_log_id" int8 NOT NULL DEFAULT nextval('sys_job_log_id_seq'::regclass),
  "job_name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "invoke_target" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "job_message" varchar(500) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default",
  "exception_info" varchar(2000) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."sys_job_log"."job_log_id" IS '任务日志ID';
COMMENT ON COLUMN "public"."sys_job_log"."job_name" IS '任务名称';
COMMENT ON COLUMN "public"."sys_job_log"."job_group" IS '任务组名';
COMMENT ON COLUMN "public"."sys_job_log"."invoke_target" IS '调用目标字符串';
COMMENT ON COLUMN "public"."sys_job_log"."job_message" IS '日志信息';
COMMENT ON COLUMN "public"."sys_job_log"."status" IS '执行状态（0正常 1失败）';
COMMENT ON COLUMN "public"."sys_job_log"."exception_info" IS '异常信息';
COMMENT ON COLUMN "public"."sys_job_log"."create_time" IS '创建时间';
COMMENT ON TABLE "public"."sys_job_log" IS '定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO "public"."sys_job_log" VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', NULL, '2023-01-11 13:57:12.84004');
INSERT INTO "public"."sys_job_log" VALUES (2, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', NULL, '2023-01-11 13:57:22.840003');
INSERT INTO "public"."sys_job_log" VALUES (3, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', NULL, '2023-01-11 13:57:32.839971');
INSERT INTO "public"."sys_job_log" VALUES (4, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', NULL, '2023-01-11 13:57:42.843037');
INSERT INTO "public"."sys_job_log" VALUES (5, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', NULL, '2023-01-11 13:57:52.842981');
INSERT INTO "public"."sys_job_log" VALUES (6, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', NULL, '2023-01-11 13:58:02.84308');
INSERT INTO "public"."sys_job_log" VALUES (7, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', NULL, '2023-01-11 13:58:12.846901');
INSERT INTO "public"."sys_job_log" VALUES (8, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', NULL, '2023-01-11 13:58:22.835041');
INSERT INTO "public"."sys_job_log" VALUES (9, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', NULL, '2023-01-11 13:58:32.837224');
INSERT INTO "public"."sys_job_log" VALUES (10, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', NULL, '2023-01-11 13:58:42.841721');
INSERT INTO "public"."sys_job_log" VALUES (11, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', NULL, '2023-01-11 13:58:52.841688');
INSERT INTO "public"."sys_job_log" VALUES (12, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', NULL, '2023-01-11 13:59:02.84166');
INSERT INTO "public"."sys_job_log" VALUES (13, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', NULL, '2023-01-11 13:59:12.84544');
INSERT INTO "public"."sys_job_log" VALUES (14, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', NULL, '2023-01-11 13:59:22.845401');
INSERT INTO "public"."sys_job_log" VALUES (15, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', NULL, '2023-01-11 13:59:32.845365');
INSERT INTO "public"."sys_job_log" VALUES (16, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', NULL, '2023-01-11 13:59:42.845332');
INSERT INTO "public"."sys_job_log" VALUES (17, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', NULL, '2023-01-11 13:59:52.845301');
INSERT INTO "public"."sys_job_log" VALUES (18, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', NULL, '2023-01-11 14:00:02.845246');
INSERT INTO "public"."sys_job_log" VALUES (19, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', NULL, '2023-01-11 14:00:12.845232');
INSERT INTO "public"."sys_job_log" VALUES (20, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', NULL, '2023-01-11 14:00:22.829669');
INSERT INTO "public"."sys_job_log" VALUES (21, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', NULL, '2023-01-11 14:00:32.829633');
INSERT INTO "public"."sys_job_log" VALUES (22, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', NULL, '2023-01-11 14:00:42.829601');
INSERT INTO "public"."sys_job_log" VALUES (23, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', NULL, '2023-01-11 14:02:13.366622');
INSERT INTO "public"."sys_job_log" VALUES (24, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', NULL, '2023-01-11 14:02:22.819705');
INSERT INTO "public"."sys_job_log" VALUES (25, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', NULL, '2023-01-11 14:02:32.81967');
INSERT INTO "public"."sys_job_log" VALUES (26, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', NULL, '2023-01-11 14:02:41.571237');
INSERT INTO "public"."sys_job_log" VALUES (27, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', NULL, '2023-01-11 14:03:07.088056');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_logininfor";
CREATE TABLE "public"."sys_logininfor" (
  "info_id" int8 NOT NULL DEFAULT nextval('sys_logininfor_id_seq'::regclass),
  "user_name" varchar(50) COLLATE "pg_catalog"."default",
  "ipaddr" varchar(128) COLLATE "pg_catalog"."default",
  "login_location" varchar(255) COLLATE "pg_catalog"."default",
  "browser" varchar(50) COLLATE "pg_catalog"."default",
  "os" varchar(50) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default",
  "msg" varchar(255) COLLATE "pg_catalog"."default",
  "login_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."sys_logininfor"."info_id" IS '访问ID';
COMMENT ON COLUMN "public"."sys_logininfor"."user_name" IS '用户账号';
COMMENT ON COLUMN "public"."sys_logininfor"."ipaddr" IS '登录IP地址';
COMMENT ON COLUMN "public"."sys_logininfor"."login_location" IS '登录地点';
COMMENT ON COLUMN "public"."sys_logininfor"."browser" IS '浏览器类型';
COMMENT ON COLUMN "public"."sys_logininfor"."os" IS '操作系统';
COMMENT ON COLUMN "public"."sys_logininfor"."status" IS '登录状态（0成功 1失败）';
COMMENT ON COLUMN "public"."sys_logininfor"."msg" IS '提示消息';
COMMENT ON COLUMN "public"."sys_logininfor"."login_time" IS '访问时间';
COMMENT ON TABLE "public"."sys_logininfor" IS '系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO "public"."sys_logininfor" VALUES (225, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-28 22:47:14.706');
INSERT INTO "public"."sys_logininfor" VALUES (226, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-28 22:47:29.056');
INSERT INTO "public"."sys_logininfor" VALUES (227, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-28 22:48:01.551');
INSERT INTO "public"."sys_logininfor" VALUES (228, 'liuxingyu', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-28 22:48:06.789');
INSERT INTO "public"."sys_logininfor" VALUES (229, 'liuxingyu', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-28 22:48:56.726');
INSERT INTO "public"."sys_logininfor" VALUES (230, 'liuxingyu', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误1次', '2023-01-28 22:49:00.59');
INSERT INTO "public"."sys_logininfor" VALUES (231, 'liuxingyu', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-01-28 22:49:00.606');
INSERT INTO "public"."sys_logininfor" VALUES (232, 'liuxingyu', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-28 22:49:05.003');
INSERT INTO "public"."sys_logininfor" VALUES (233, 'liuxingyu', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-28 22:49:15.215');
INSERT INTO "public"."sys_logininfor" VALUES (234, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-28 22:49:17.036');
INSERT INTO "public"."sys_logininfor" VALUES (235, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-28 22:50:27.308');
INSERT INTO "public"."sys_logininfor" VALUES (236, 'dingli', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '对不起，您的账号：dingli 已停用', '2023-01-28 22:50:30.963');
INSERT INTO "public"."sys_logininfor" VALUES (237, 'dingli', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '对不起，您的账号：dingli 已停用', '2023-01-28 22:50:35.075');
INSERT INTO "public"."sys_logininfor" VALUES (238, 'liuxingyu', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-28 22:50:44.03');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_menu";
CREATE TABLE "public"."sys_menu" (
  "menu_id" int8 NOT NULL DEFAULT nextval('sys_menu_id_seq'::regclass),
  "menu_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "parent_id" int8 NOT NULL DEFAULT 0,
  "order_num" int4,
  "path" varchar(200) COLLATE "pg_catalog"."default",
  "component" varchar(255) COLLATE "pg_catalog"."default",
  "query" varchar(255) COLLATE "pg_catalog"."default",
  "is_frame" varchar(32) COLLATE "pg_catalog"."default",
  "is_cache" varchar(32) COLLATE "pg_catalog"."default",
  "menu_type" char(1) COLLATE "pg_catalog"."default",
  "visible" char(1) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default",
  "perms" varchar(100) COLLATE "pg_catalog"."default",
  "icon" varchar(100) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_menu"."menu_id" IS '菜单ID';
COMMENT ON COLUMN "public"."sys_menu"."menu_name" IS '菜单名称';
COMMENT ON COLUMN "public"."sys_menu"."parent_id" IS '父菜单ID';
COMMENT ON COLUMN "public"."sys_menu"."order_num" IS '显示顺序';
COMMENT ON COLUMN "public"."sys_menu"."path" IS '路由地址';
COMMENT ON COLUMN "public"."sys_menu"."component" IS '组件路径';
COMMENT ON COLUMN "public"."sys_menu"."query" IS '路由参数';
COMMENT ON COLUMN "public"."sys_menu"."is_frame" IS '是否为外链（0是 1否）';
COMMENT ON COLUMN "public"."sys_menu"."is_cache" IS '是否缓存（0缓存 1不缓存）';
COMMENT ON COLUMN "public"."sys_menu"."menu_type" IS '菜单类型（M目录 C菜单 F按钮）';
COMMENT ON COLUMN "public"."sys_menu"."visible" IS '菜单状态（0显示 1隐藏）';
COMMENT ON COLUMN "public"."sys_menu"."status" IS '菜单状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_menu"."perms" IS '权限标识';
COMMENT ON COLUMN "public"."sys_menu"."icon" IS '菜单图标';
COMMENT ON COLUMN "public"."sys_menu"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_menu"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_menu"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_menu"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_menu"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_menu" IS '菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO "public"."sys_menu" VALUES (1, '系统管理', 0, 1, 'system', NULL, '', '1', '0', 'M', '0', '0', '', 'system', 'admin', '2023-01-11 08:15:25', '', NULL, '系统管理目录');
INSERT INTO "public"."sys_menu" VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', '1', '0', 'M', '0', '0', '', 'monitor', 'admin', '2023-01-11 08:15:25', '', NULL, '系统监控目录');
INSERT INTO "public"."sys_menu" VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', '1', '0', 'M', '0', '0', '', 'tool', 'admin', '2023-01-11 08:15:25', '', NULL, '系统工具目录');
INSERT INTO "public"."sys_menu" VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, '', '0', '0', 'M', '0', '0', '', 'guide', 'admin', '2023-01-11 08:15:25', '', NULL, '若依官网地址');
INSERT INTO "public"."sys_menu" VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', '1', '0', 'C', '0', '0', 'system:user:list', 'user', 'admin', '2023-01-11 08:15:25', '', NULL, '用户管理菜单');
INSERT INTO "public"."sys_menu" VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', '1', '0', 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2023-01-11 08:15:25', '', NULL, '角色管理菜单');
INSERT INTO "public"."sys_menu" VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', '1', '0', 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2023-01-11 08:15:25', '', NULL, '菜单管理菜单');
INSERT INTO "public"."sys_menu" VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', '1', '0', 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2023-01-11 08:15:25', '', NULL, '部门管理菜单');
INSERT INTO "public"."sys_menu" VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', '1', '0', 'C', '0', '0', 'system:post:list', 'post', 'admin', '2023-01-11 08:15:25', '', NULL, '岗位管理菜单');
INSERT INTO "public"."sys_menu" VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', '1', '0', 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2023-01-11 08:15:25', '', NULL, '字典管理菜单');
INSERT INTO "public"."sys_menu" VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', '1', '0', 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2023-01-11 08:15:25', '', NULL, '参数设置菜单');
INSERT INTO "public"."sys_menu" VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', '1', '0', 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2023-01-11 08:15:25', '', NULL, '通知公告菜单');
INSERT INTO "public"."sys_menu" VALUES (108, '日志管理', 1, 9, 'log', '', '', '1', '0', 'M', '0', '0', '', 'log', 'admin', '2023-01-11 08:15:25', '', NULL, '日志管理菜单');
INSERT INTO "public"."sys_menu" VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', '1', '0', 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2023-01-11 08:15:25', '', NULL, '在线用户菜单');
INSERT INTO "public"."sys_menu" VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', '1', '0', 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2023-01-11 08:15:25', '', NULL, '定时任务菜单');
INSERT INTO "public"."sys_menu" VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', '1', '0', 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2023-01-11 08:15:25', '', NULL, '数据监控菜单');
INSERT INTO "public"."sys_menu" VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', '1', '0', 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2023-01-11 08:15:25', '', NULL, '服务监控菜单');
INSERT INTO "public"."sys_menu" VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2023-01-11 08:15:25', '', NULL, '缓存监控菜单');
INSERT INTO "public"."sys_menu" VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2023-01-11 08:15:25', '', NULL, '缓存列表菜单');
INSERT INTO "public"."sys_menu" VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', '1', '0', 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2023-01-11 08:15:25', '', NULL, '表单构建菜单');
INSERT INTO "public"."sys_menu" VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', '1', '0', 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2023-01-11 08:15:25', '', NULL, '代码生成菜单');
INSERT INTO "public"."sys_menu" VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', '1', '0', 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2023-01-11 08:15:25', '', NULL, '系统接口菜单');
INSERT INTO "public"."sys_menu" VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', '1', '0', 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2023-01-11 08:15:25', '', NULL, '操作日志菜单');
INSERT INTO "public"."sys_menu" VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', '1', '0', 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2023-01-11 08:15:25', '', NULL, '登录日志菜单');
INSERT INTO "public"."sys_menu" VALUES (1000, '用户查询', 100, 1, '', '', '', '1', '0', 'F', '0', '0', 'system:user:query', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1001, '用户新增', 100, 2, '', '', '', '1', '0', 'F', '0', '0', 'system:user:add', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1002, '用户修改', 100, 3, '', '', '', '1', '0', 'F', '0', '0', 'system:user:edit', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1003, '用户删除', 100, 4, '', '', '', '1', '0', 'F', '0', '0', 'system:user:remove', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1004, '用户导出', 100, 5, '', '', '', '1', '0', 'F', '0', '0', 'system:user:export', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1005, '用户导入', 100, 6, '', '', '', '1', '0', 'F', '0', '0', 'system:user:import', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1006, '重置密码', 100, 7, '', '', '', '1', '0', 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1007, '角色查询', 101, 1, '', '', '', '1', '0', 'F', '0', '0', 'system:role:query', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1008, '角色新增', 101, 2, '', '', '', '1', '0', 'F', '0', '0', 'system:role:add', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1009, '角色修改', 101, 3, '', '', '', '1', '0', 'F', '0', '0', 'system:role:edit', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1010, '角色删除', 101, 4, '', '', '', '1', '0', 'F', '0', '0', 'system:role:remove', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1011, '角色导出', 101, 5, '', '', '', '1', '0', 'F', '0', '0', 'system:role:export', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1012, '菜单查询', 102, 1, '', '', '', '1', '0', 'F', '0', '0', 'system:menu:query', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1013, '菜单新增', 102, 2, '', '', '', '1', '0', 'F', '0', '0', 'system:menu:add', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1014, '菜单修改', 102, 3, '', '', '', '1', '0', 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1015, '菜单删除', 102, 4, '', '', '', '1', '0', 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1016, '部门查询', 103, 1, '', '', '', '1', '0', 'F', '0', '0', 'system:dept:query', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1017, '部门新增', 103, 2, '', '', '', '1', '0', 'F', '0', '0', 'system:dept:add', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1018, '部门修改', 103, 3, '', '', '', '1', '0', 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1019, '部门删除', 103, 4, '', '', '', '1', '0', 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1020, '岗位查询', 104, 1, '', '', '', '1', '0', 'F', '0', '0', 'system:post:query', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1021, '岗位新增', 104, 2, '', '', '', '1', '0', 'F', '0', '0', 'system:post:add', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1022, '岗位修改', 104, 3, '', '', '', '1', '0', 'F', '0', '0', 'system:post:edit', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1023, '岗位删除', 104, 4, '', '', '', '1', '0', 'F', '0', '0', 'system:post:remove', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1024, '岗位导出', 104, 5, '', '', '', '1', '0', 'F', '0', '0', 'system:post:export', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1025, '字典查询', 105, 1, '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:query', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1026, '字典新增', 105, 2, '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:add', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1027, '字典修改', 105, 3, '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1028, '字典删除', 105, 4, '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1029, '字典导出', 105, 5, '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:export', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1030, '参数查询', 106, 1, '#', '', '', '1', '0', 'F', '0', '0', 'system:config:query', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1031, '参数新增', 106, 2, '#', '', '', '1', '0', 'F', '0', '0', 'system:config:add', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1032, '参数修改', 106, 3, '#', '', '', '1', '0', 'F', '0', '0', 'system:config:edit', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1033, '参数删除', 106, 4, '#', '', '', '1', '0', 'F', '0', '0', 'system:config:remove', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1034, '参数导出', 106, 5, '#', '', '', '1', '0', 'F', '0', '0', 'system:config:export', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1035, '公告查询', 107, 1, '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:query', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1036, '公告新增', 107, 2, '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:add', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1037, '公告修改', 107, 3, '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1038, '公告删除', 107, 4, '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1039, '操作查询', 500, 1, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1040, '操作删除', 500, 2, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1041, '日志导出', 500, 3, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1042, '登录查询', 501, 1, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1043, '登录删除', 501, 2, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1044, '日志导出', 501, 3, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1045, '账户解锁', 501, 4, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1046, '在线查询', 109, 1, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1047, '批量强退', 109, 2, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1048, '单条强退', 109, 3, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1049, '任务查询', 110, 1, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1050, '任务新增', 110, 2, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1051, '任务修改', 110, 3, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1052, '任务删除', 110, 4, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1053, '状态修改', 110, 5, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1054, '任务导出', 110, 6, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1055, '生成查询', 116, 1, '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1056, '生成修改', 116, 2, '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1057, '生成删除', 116, 3, '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1058, '导入代码', 116, 4, '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1059, '预览代码', 116, 5, '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1060, '生成代码', 116, 6, '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2023-01-11 08:15:25', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_notice";
CREATE TABLE "public"."sys_notice" (
  "notice_id" int4 NOT NULL DEFAULT nextval('sys_notice_id_seq'::regclass),
  "notice_title" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "notice_type" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "notice_content" bytea,
  "status" char(1) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_notice"."notice_id" IS '公告ID';
COMMENT ON COLUMN "public"."sys_notice"."notice_title" IS '公告标题';
COMMENT ON COLUMN "public"."sys_notice"."notice_type" IS '公告类型（1通知 2公告）';
COMMENT ON COLUMN "public"."sys_notice"."notice_content" IS '公告内容';
COMMENT ON COLUMN "public"."sys_notice"."status" IS '公告状态（0正常 1关闭）';
COMMENT ON COLUMN "public"."sys_notice"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_notice"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_notice"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_notice"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_notice"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_notice" IS '通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO "public"."sys_notice" VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', E'\\346\\226\\260\\347\\211\\210\\346\\234\\254\\345\\206\\205\\345\\256\\271', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '管理员');
INSERT INTO "public"."sys_notice" VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', E'\\347\\273\\264\\346\\212\\244\\345\\206\\205\\345\\256\\271', '0', 'admin', '2023-01-11 08:15:26', '', NULL, '管理员');
INSERT INTO "public"."sys_notice" VALUES (3, '12', '1', E'<p>\\222222</p>', '0', 'admin', '2023-01-11 13:31:25.325447', 'admin', '2023-01-11 13:32:42.78862', NULL);

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_oper_log";
CREATE TABLE "public"."sys_oper_log" (
  "oper_id" int8 NOT NULL DEFAULT nextval('sys_oper_log_id_seq'::regclass),
  "title" varchar(50) COLLATE "pg_catalog"."default",
  "business_type" int4,
  "method" varchar(100) COLLATE "pg_catalog"."default",
  "request_method" varchar(10) COLLATE "pg_catalog"."default",
  "operator_type" int4,
  "oper_name" varchar(50) COLLATE "pg_catalog"."default",
  "dept_name" varchar(50) COLLATE "pg_catalog"."default",
  "oper_url" varchar(255) COLLATE "pg_catalog"."default",
  "oper_ip" varchar(128) COLLATE "pg_catalog"."default",
  "oper_location" varchar(255) COLLATE "pg_catalog"."default",
  "oper_param" varchar(2000) COLLATE "pg_catalog"."default",
  "json_result" varchar(2000) COLLATE "pg_catalog"."default",
  "status" int4,
  "error_msg" varchar(2000) COLLATE "pg_catalog"."default",
  "oper_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."sys_oper_log"."oper_id" IS '日志主键';
COMMENT ON COLUMN "public"."sys_oper_log"."title" IS '模块标题';
COMMENT ON COLUMN "public"."sys_oper_log"."business_type" IS '业务类型（0其它 1新增 2修改 3删除）';
COMMENT ON COLUMN "public"."sys_oper_log"."method" IS '方法名称';
COMMENT ON COLUMN "public"."sys_oper_log"."request_method" IS '请求方式';
COMMENT ON COLUMN "public"."sys_oper_log"."operator_type" IS '操作类别（0其它 1后台用户 2手机端用户）';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_name" IS '操作人员';
COMMENT ON COLUMN "public"."sys_oper_log"."dept_name" IS '部门名称';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_url" IS '请求URL';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_ip" IS '主机地址';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_location" IS '操作地点';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_param" IS '请求参数';
COMMENT ON COLUMN "public"."sys_oper_log"."json_result" IS '返回参数';
COMMENT ON COLUMN "public"."sys_oper_log"."status" IS '操作状态（0正常 1异常）';
COMMENT ON COLUMN "public"."sys_oper_log"."error_msg" IS '错误消息';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_time" IS '操作时间';
COMMENT ON TABLE "public"."sys_oper_log" IS '操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO "public"."sys_oper_log" VALUES (268, '操作日志', 9, 'com.ruoyi.web.controller.monitor.SysOperlogController.clean()', 'DELETE', 1, 'admin', NULL, '/monitor/operlog/clean', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-01-28 22:02:02.891');
INSERT INTO "public"."sys_oper_log" VALUES (269, '登录日志', 9, 'com.ruoyi.web.controller.monitor.SysLogininforController.clean()', 'DELETE', 1, 'admin', NULL, '/monitor/logininfor/clean', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-01-28 22:02:08.148');
INSERT INTO "public"."sys_oper_log" VALUES (270, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-28 21:59:26","delFlag":"0","dept":{"ancestors":"0","children":[],"deptId":100,"deptName":"厂级","leader":"若依","orderNum":0,"params":{},"parentId":0,"status":"0"},"deptId":100,"email":"1951119284@qq.com","nickName":"丁力1","params":{},"phonenumber":"13796656205","postIds":[2],"roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"1","status":"0","userId":"62b8a061-7fce-49dc-935e-5b61a3294a2f","userName":"dingli"}', '{"msg":"修改用户''dingli''失败，登录账号已存在","code":500}', 0, NULL, '2023-01-28 22:02:15.657');
INSERT INTO "public"."sys_oper_log" VALUES (271, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-28 21:59:26","delFlag":"0","dept":{"ancestors":"0","children":[],"deptId":100,"deptName":"厂级","leader":"若依","orderNum":0,"params":{},"parentId":0,"status":"0"},"deptId":100,"email":"1951119284@qq.com","nickName":"丁力1","params":{},"phonenumber":"13796656205","postIds":[2],"roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"1","status":"0","userId":"62b8a061-7fce-49dc-935e-5b61a3294a2f","userName":"dingli"}', '{"msg":"修改用户''dingli''失败，登录账号已存在","code":500}', 0, NULL, '2023-01-28 22:03:16.939');
INSERT INTO "public"."sys_oper_log" VALUES (272, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-28 21:59:26","delFlag":"0","dept":{"ancestors":"0","children":[],"deptId":100,"deptName":"厂级","leader":"若依","orderNum":0,"params":{},"parentId":0,"status":"0"},"deptId":100,"email":"1951119284@qq.com","nickName":"丁力1","params":{},"phonenumber":"13796656205","postIds":[2],"roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"1","status":"0","userId":"62b8a061-7fce-49dc-935e-5b61a3294a2f","userName":"dingli"}', '{"msg":"修改用户''dingli''失败，登录账号已存在","code":500}', 0, NULL, '2023-01-28 22:04:53.379');
INSERT INTO "public"."sys_oper_log" VALUES (273, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-28 21:59:26","delFlag":"0","dept":{"ancestors":"0","children":[],"deptId":100,"deptName":"厂级","leader":"若依","orderNum":0,"params":{},"parentId":0,"status":"0"},"deptId":100,"email":"1951119284@qq.com","nickName":"丁力1","params":{},"phonenumber":"13796656205","postIds":[2],"roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"1","status":"0","userId":"62b8a061-7fce-49dc-935e-5b61a3294a2f","userName":"dingli"}', '{"msg":"修改用户''dingli''失败，登录账号已存在","code":500}', 0, NULL, '2023-01-28 22:07:39.77');
INSERT INTO "public"."sys_oper_log" VALUES (274, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-28 21:59:26","delFlag":"0","dept":{"ancestors":"0","children":[],"deptId":100,"deptName":"厂级","leader":"若依","orderNum":0,"params":{},"parentId":0,"status":"0"},"deptId":100,"email":"1951119284@qq.com","nickName":"丁力1","params":{},"phonenumber":"13796656205","postIds":[2],"roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"1","status":"0","userId":"62b8a061-7fce-49dc-935e-5b61a3294a2f","userName":"dingli"}', '{"msg":"修改用户''dingli''失败，登录账号已存在","code":500}', 0, NULL, '2023-01-28 22:09:38.214');
INSERT INTO "public"."sys_oper_log" VALUES (275, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-28 21:59:26","delFlag":"0","dept":{"ancestors":"0","children":[],"deptId":100,"deptName":"厂级","leader":"若依","orderNum":0,"params":{},"parentId":0,"status":"0"},"deptId":100,"email":"1951119284@qq.com","nickName":"丁力","params":{},"phonenumber":"13796656205","postIds":[2,3],"roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"1","status":"0","userId":"62b8a061-7fce-49dc-935e-5b61a3294a2f","userName":"dingli"}', '{"msg":"修改用户''dingli''失败，登录账号已存在","code":500}', 0, NULL, '2023-01-28 22:09:41.904');
INSERT INTO "public"."sys_oper_log" VALUES (276, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-28 21:59:26","delFlag":"0","dept":{"ancestors":"0","children":[],"deptId":100,"deptName":"厂级","leader":"若依","orderNum":0,"params":{},"parentId":0,"status":"0"},"deptId":100,"email":"1951119284@qq.com","nickName":"丁力1","params":{},"phonenumber":"13796656205","postIds":[2,3],"roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"1","status":"0","userId":"62b8a061-7fce-49dc-935e-5b61a3294a2f","userName":"dingli"}', '{"msg":"修改用户''dingli''失败，登录账号已存在","code":500}', 0, NULL, '2023-01-28 22:09:41.918');
INSERT INTO "public"."sys_oper_log" VALUES (277, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-28 21:59:26","delFlag":"0","dept":{"ancestors":"0","children":[],"deptId":100,"deptName":"厂级","leader":"若依","orderNum":0,"params":{},"parentId":0,"status":"0"},"deptId":100,"email":"1951119284@qq.com","nickName":"丁力","params":{},"phonenumber":"13796656205","postIds":[2,3],"roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"1","status":"0","userId":"62b8a061-7fce-49dc-935e-5b61a3294a2f","userName":"dingli"}', '{"msg":"修改用户''dingli''失败，登录账号已存在","code":500}', 0, NULL, '2023-01-28 22:09:41.918');
INSERT INTO "public"."sys_oper_log" VALUES (278, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-28 21:59:26","delFlag":"0","dept":{"ancestors":"0","children":[],"deptId":100,"deptName":"厂级","leader":"若依","orderNum":0,"params":{},"parentId":0,"status":"0"},"deptId":100,"email":"1951119284@qq.com","nickName":"丁力","params":{},"phonenumber":"13796656205","postIds":[2,3],"roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"1","status":"0","userId":"62b8a061-7fce-49dc-935e-5b61a3294a2f","userName":"dingli"}', '{"msg":"修改用户''dingli''失败，登录账号已存在","code":500}', 0, NULL, '2023-01-28 22:16:48.255');
INSERT INTO "public"."sys_oper_log" VALUES (279, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-28 21:59:26","delFlag":"0","dept":{"ancestors":"0","children":[],"deptId":100,"deptName":"厂级","leader":"若依","orderNum":0,"params":{},"parentId":0,"status":"0"},"deptId":100,"email":"1951119284@qq.com","nickName":"丁力","params":{},"phonenumber":"13796656205","postIds":[2,3],"roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"1","status":"0","userId":"62b8a061-7fce-49dc-935e-5b61a3294a2f","userName":"dingli"}', '{"msg":"修改用户''dingli''失败，登录账号已存在","code":500}', 0, NULL, '2023-01-28 22:21:36.575');
INSERT INTO "public"."sys_oper_log" VALUES (280, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-28 21:59:26","delFlag":"0","dept":{"ancestors":"0","children":[],"deptId":100,"deptName":"厂级","leader":"若依","orderNum":0,"params":{},"parentId":0,"status":"0"},"deptId":100,"email":"1951119284@qq.com","nickName":"丁力111","params":{},"phonenumber":"13796656205","postIds":[2,3],"roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"1","status":"0","userId":"62b8a061-7fce-49dc-935e-5b61a3294a2f","userName":"dingli"}', '{"msg":"修改用户''dingli''失败，登录账号已存在","code":500}', 0, NULL, '2023-01-28 22:21:36.6');
INSERT INTO "public"."sys_oper_log" VALUES (281, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-11 11:59:14","delFlag":"0","dept":{"children":[],"deptId":203,"params":{}},"deptId":203,"nickName":"刘苏义1","params":{},"postIds":[4],"roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"0","status":"0","userId":"3","userName":"liusuyi"}', '{"msg":"修改用户''liusuyi''失败，登录账号已存在","code":500}', 0, NULL, '2023-01-28 22:21:47.801');
INSERT INTO "public"."sys_oper_log" VALUES (282, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":true,"avatar":"","createBy":"admin","createTime":"2023-01-11 08:15:25","delFlag":"0","dept":{"ancestors":"0,100,101","children":[],"deptId":103,"deptName":"小队","leader":"若依","orderNum":1,"params":{},"parentId":101,"status":"0"},"deptId":103,"email":"ry@163.com","loginDate":"2023-01-28 21:58:38.643","loginIp":"127.0.0.1","nickName":"若依1","params":{},"phonenumber":"15888888888","postIds":[1],"remark":"管理员","roleIds":[1],"roles":[{"admin":true,"dataScope":"1","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":1,"roleKey":"admin","roleName":"超级管理员","roleSort":1,"status":"0"}],"sex":"1","status":"0","userId":"1","userName":"admin"}', NULL, 1, '不允许操作超级管理员用户', '2023-01-28 22:22:30.323');
INSERT INTO "public"."sys_oper_log" VALUES (283, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"avatar":"","createBy":"admin","createTime":"2023-01-11 08:15:25","delFlag":"0","dept":{"ancestors":"0,100,101","children":[],"deptId":105,"deptName":"测试部门","leader":"若依","orderNum":3,"params":{},"parentId":101,"status":"0"},"deptId":105,"email":"ry@qq.com","loginDate":"2023-01-11 08:15:25","loginIp":"127.0.0.1","nickName":"若依1","params":{},"phonenumber":"15666666666","postIds":[2],"remark":"测试员","roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"1","status":"0","userId":"2","userName":"ry"}', '{"msg":"修改用户''ry''失败，登录账号已存在","code":500}', 0, NULL, '2023-01-28 22:22:48.387');
INSERT INTO "public"."sys_oper_log" VALUES (284, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"avatar":"","createBy":"admin","createTime":"2023-01-11 08:15:25","delFlag":"0","dept":{"ancestors":"0,100,101","children":[],"deptId":105,"deptName":"测试部门","leader":"若依","orderNum":3,"params":{},"parentId":101,"status":"0"},"deptId":105,"email":"ry@qq.com","loginDate":"2023-01-11 08:15:25","loginIp":"127.0.0.1","nickName":"若依1","params":{},"phonenumber":"15666666666","postIds":[2],"remark":"测试员","roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"1","status":"1","userId":"2","userName":"ry"}', '{"msg":"修改用户''ry''失败，登录账号已存在","code":500}', 0, NULL, '2023-01-28 22:23:09.795');
INSERT INTO "public"."sys_oper_log" VALUES (285, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/2', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-01-28 22:23:24.176');
INSERT INTO "public"."sys_oper_log" VALUES (286, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'PUT', 1, 'admin', NULL, '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '4 ["62b8a061-7fce-49dc-935e-5b61a3294a2f"]', '{"msg":"操作成功","code":200}', 0, NULL, '2023-01-28 22:24:26.903');
INSERT INTO "public"."sys_oper_log" VALUES (287, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/62b8a061-7fce-49dc-935e-5b61a3294a2f', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-01-28 22:25:46.42');
INSERT INTO "public"."sys_oper_log" VALUES (288, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","deptId":103,"email":"1951119284@qq.com","nickName":"丁力","params":{},"phonenumber":"13796656205","postIds":[2],"remark":"12312312312312","roleIds":[2],"sex":"0","status":"0","userId":"6fdf9039-a040-4352-a080-dfe833b7f9d4","userName":"dingli"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-01-28 22:26:44.912');
INSERT INTO "public"."sys_oper_log" VALUES (289, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-28 22:26:44","delFlag":"0","dept":{"ancestors":"0,100,101","children":[],"deptId":103,"deptName":"小队","leader":"若依","orderNum":1,"params":{},"parentId":101,"status":"0"},"deptId":103,"email":"1951119284@qq.com","nickName":"丁力","params":{},"phonenumber":"13796656215","postIds":[2],"remark":"12312312312312","roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"0","status":"0","userId":"6fdf9039-a040-4352-a080-dfe833b7f9d4","userName":"dingli"}', '{"msg":"修改用户''dingli''失败，登录账号已存在","code":500}', 0, NULL, '2023-01-28 22:34:07.8');
INSERT INTO "public"."sys_oper_log" VALUES (290, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-28 22:26:44","delFlag":"0","dept":{"ancestors":"0,100,101","children":[],"deptId":103,"deptName":"小队","leader":"若依","orderNum":1,"params":{},"parentId":101,"status":"0"},"deptId":103,"email":"1951119284@qq.com","nickName":"丁力123","params":{},"phonenumber":"13796656205","postIds":[2],"remark":"12312312312312","roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"0","status":"0","userId":"6fdf9039-a040-4352-a080-dfe833b7f9d4","userName":"dingli"}', '{"msg":"修改用户''dingli''失败，手机号码已存在","code":500}', 0, NULL, '2023-01-28 22:34:32.746');
INSERT INTO "public"."sys_oper_log" VALUES (291, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-28 22:26:44","delFlag":"0","dept":{"ancestors":"0,100,101","children":[],"deptId":103,"deptName":"小队","leader":"若依","orderNum":1,"params":{},"parentId":101,"status":"0"},"deptId":103,"email":"1951119284@qq.com","nickName":"丁力123","params":{},"phonenumber":"13796656215","postIds":[2],"remark":"12312312312312","roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"0","status":"0","userId":"6fdf9039-a040-4352-a080-dfe833b7f9d4","userName":"dingli"}', '{"msg":"修改用户''dingli''失败，邮箱账号已存在","code":500}', 0, NULL, '2023-01-28 22:34:39.054');
INSERT INTO "public"."sys_oper_log" VALUES (299, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-28 22:26:44","delFlag":"0","dept":{"ancestors":"0,100,101","children":[],"deptId":103,"deptName":"小队","leader":"若依","orderNum":1,"params":{},"parentId":101,"status":"0"},"deptId":103,"email":"19511192184@qq.com","nickName":"丁力1234","params":{},"phonenumber":"13796656215","postIds":[2],"remark":"12312312312312","roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"0","status":"0","updateBy":"admin","userId":"6fdf9039-a040-4352-a080-dfe833b7f9d4","userName":"dingli"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-01-28 22:45:19.584');
INSERT INTO "public"."sys_oper_log" VALUES (292, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-28 22:26:44","delFlag":"0","dept":{"ancestors":"0,100,101","children":[],"deptId":103,"deptName":"小队","leader":"若依","orderNum":1,"params":{},"parentId":101,"status":"0"},"deptId":103,"email":"19511192841@qq.com","nickName":"丁力123","params":{},"phonenumber":"13796656215","postIds":[2],"remark":"12312312312312","roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"0","status":"0","updateBy":"admin","userId":"6fdf9039-a040-4352-a080-dfe833b7f9d4","userName":"dingli"}', NULL, 1, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=''userId'', mode=IN, javaType=class java.lang.Long, jdbcType=null, numericScale=null, resultMapId=''null'', jdbcTypeName=''null'', expression=''null''}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.lang.ClassCastException: java.lang.String cannot be cast to java.lang.Long', '2023-01-28 22:34:43.202');
INSERT INTO "public"."sys_oper_log" VALUES (293, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-28 22:26:44","delFlag":"0","dept":{"ancestors":"0,100,101","children":[],"deptId":103,"deptName":"小队","leader":"若依","orderNum":1,"params":{},"parentId":101,"status":"0"},"deptId":103,"email":"19511191284@qq.com","nickName":"丁力123","params":{},"phonenumber":"13796656215","postIds":[2],"remark":"12312312312312","roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"0","status":"0","updateBy":"admin","userId":"6fdf9039-a040-4352-a080-dfe833b7f9d4","userName":"dingli"}', NULL, 1, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=''userId'', mode=IN, javaType=class java.lang.Long, jdbcType=null, numericScale=null, resultMapId=''null'', jdbcTypeName=''null'', expression=''null''}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.lang.ClassCastException: java.lang.String cannot be cast to java.lang.Long', '2023-01-28 22:36:00.48');
INSERT INTO "public"."sys_oper_log" VALUES (294, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-28 22:26:44","delFlag":"0","dept":{"ancestors":"0,100,101","children":[],"deptId":103,"deptName":"小队","leader":"若依","orderNum":1,"params":{},"parentId":101,"status":"0"},"deptId":103,"email":"19511192184@qq.com","nickName":"丁力123","params":{},"phonenumber":"13796656205","postIds":[2],"remark":"12312312312312","roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"0","status":"0","userId":"6fdf9039-a040-4352-a080-dfe833b7f9d4","userName":"dingli"}', '{"msg":"修改用户''dingli''失败，手机号码已存在","code":500}', 0, NULL, '2023-01-28 22:38:02.147');
INSERT INTO "public"."sys_oper_log" VALUES (295, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-28 22:26:44","delFlag":"0","dept":{"ancestors":"0,100,101","children":[],"deptId":103,"deptName":"小队","leader":"若依","orderNum":1,"params":{},"parentId":101,"status":"0"},"deptId":103,"email":"19511192184@qq.com","nickName":"丁力123","params":{},"phonenumber":"13796656205","postIds":[2],"remark":"12312312312312","roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"0","status":"0","userId":"6fdf9039-a040-4352-a080-dfe833b7f9d4","userName":"dingli"}', '{"msg":"修改用户''dingli''失败，手机号码已存在","code":500}', 0, NULL, '2023-01-28 22:42:01.401');
INSERT INTO "public"."sys_oper_log" VALUES (296, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-28 22:26:44","delFlag":"0","dept":{"ancestors":"0,100,101","children":[],"deptId":103,"deptName":"小队","leader":"若依","orderNum":1,"params":{},"parentId":101,"status":"0"},"deptId":103,"email":"19511192184@qq.com","nickName":"丁力123","params":{},"phonenumber":"13796656125","postIds":[2],"remark":"12312312312312","roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"0","status":"0","updateBy":"admin","userId":"6fdf9039-a040-4352-a080-dfe833b7f9d4","userName":"dingli"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-01-28 22:42:16.511');
INSERT INTO "public"."sys_oper_log" VALUES (297, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-28 22:26:44","delFlag":"0","dept":{"ancestors":"0,100,101","children":[],"deptId":103,"deptName":"小队","leader":"若依","orderNum":1,"params":{},"parentId":101,"status":"0"},"deptId":103,"email":"19511192184@qq.com","nickName":"丁力123","params":{},"phonenumber":"13796656135","postIds":[2],"remark":"12312312312312","roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"0","status":"0","userId":"6fdf9039-a040-4352-a080-dfe833b7f9d4","userName":"dingli"}', '{"msg":"修改用户''dingli''失败，邮箱账号已存在","code":500}', 0, NULL, '2023-01-28 22:43:33.503');
INSERT INTO "public"."sys_oper_log" VALUES (298, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-28 22:26:44","delFlag":"0","dept":{"ancestors":"0,100,101","children":[],"deptId":103,"deptName":"小队","leader":"若依","orderNum":1,"params":{},"parentId":101,"status":"0"},"deptId":103,"email":"19511192184@qq.com","nickName":"丁力123","params":{},"phonenumber":"13796656215","postIds":[2],"remark":"12312312312312","roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"0","status":"0","updateBy":"admin","userId":"6fdf9039-a040-4352-a080-dfe833b7f9d4","userName":"dingli"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-01-28 22:44:07.307');
INSERT INTO "public"."sys_oper_log" VALUES (300, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":true,"avatar":"","createBy":"admin","createTime":"2023-01-11 08:15:25","delFlag":"0","dept":{"ancestors":"0,100,101","children":[],"deptId":103,"deptName":"小队","leader":"若依","orderNum":1,"params":{},"parentId":101,"status":"0"},"deptId":103,"email":"ry@163.com","loginDate":"2023-01-28 21:58:38.643","loginIp":"127.0.0.1","nickName":"若依123","params":{},"phonenumber":"15888888888","postIds":[1],"remark":"管理员","roleIds":[1],"roles":[{"admin":true,"dataScope":"1","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":1,"roleKey":"admin","roleName":"超级管理员","roleSort":1,"status":"0"}],"sex":"1","status":"0","userId":"1","userName":"admin"}', NULL, 1, '不允许操作超级管理员用户', '2023-01-28 22:45:25.747');
INSERT INTO "public"."sys_oper_log" VALUES (301, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-11 11:59:14","delFlag":"0","dept":{"children":[],"deptId":203,"params":{}},"deptId":203,"nickName":"刘苏义123","params":{},"postIds":[4],"roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"0","status":"0","updateBy":"admin","userId":"3","userName":"liusuyi"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-01-28 22:45:31.617');
INSERT INTO "public"."sys_oper_log" VALUES (302, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-11 11:59:14","delFlag":"0","dept":{"children":[],"deptId":203,"params":{}},"deptId":203,"nickName":"刘苏义123","params":{},"phonenumber":"13796656205","postIds":[4],"roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"0","status":"0","updateBy":"admin","userId":"3","userName":"liusuyi"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-01-28 22:45:40.466');
INSERT INTO "public"."sys_oper_log" VALUES (303, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","deptId":108,"email":"195@qq.com","nickName":"刘星宇","params":{},"phonenumber":"13566664444","postIds":[1],"roleIds":[2],"sex":"0","status":"0","userId":"80b61842-9581-4023-aab6-936e405a12ea","userName":"liuxingyu"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-01-28 22:46:35.175');
INSERT INTO "public"."sys_oper_log" VALUES (304, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-28 22:46:35","delFlag":"0","dept":{"ancestors":"0,100,102","children":[],"deptId":108,"deptName":"市场部门","leader":"若依","orderNum":1,"params":{},"parentId":102,"status":"0"},"deptId":108,"email":"195@qq.com","nickName":"刘星宇","params":{},"phonenumber":"13566668888","postIds":[1],"roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"0","status":"0","updateBy":"admin","userId":"80b61842-9581-4023-aab6-936e405a12ea","userName":"liuxingyu"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-01-28 22:46:51.783');
INSERT INTO "public"."sys_oper_log" VALUES (305, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/user/changeStatus', '127.0.0.1', '内网IP', '{"admin":false,"params":{},"status":"1","updateBy":"admin","userId":"6fdf9039-a040-4352-a080-dfe833b7f9d4"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-01-28 22:47:07.733');
INSERT INTO "public"."sys_oper_log" VALUES (306, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{"configId":4,"configKey":"sys.account.captchaEnabled","configName":"账号自助-验证码开关","configType":"Y","configValue":"false","createBy":"admin","createTime":"2023-01-11 08:15:26","params":{},"remark":"是否开启验证码功能（true开启，false关闭）","updateBy":"admin","updateTime":"2023-01-28 22:00:25"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-01-28 22:47:56.505');
INSERT INTO "public"."sys_oper_log" VALUES (307, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'liuxingyu', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-28 22:46:35","delFlag":"0","dept":{"ancestors":"0,100,102","children":[],"deptId":108,"deptName":"市场部门","leader":"若依","orderNum":1,"params":{},"parentId":102,"status":"0"},"email":"195@qq.com","nickName":"刘星宇","params":{},"phonenumber":"13566668881","roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"0","status":"0","userId":"80b61842-9581-4023-aab6-936e405a12ea","userName":"liuxingyu"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-01-28 22:48:29.222');
INSERT INTO "public"."sys_oper_log" VALUES (308, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'liuxingyu', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","createTime":"2023-01-28 22:46:35","delFlag":"0","dept":{"ancestors":"0,100,102","children":[],"deptId":108,"deptName":"市场部门","leader":"若依","orderNum":1,"params":{},"parentId":102,"status":"0"},"email":"19111115@qq.com","nickName":"刘星宇","params":{},"phonenumber":"13566668881","roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"0","status":"0","userId":"80b61842-9581-4023-aab6-936e405a12ea","userName":"liuxingyu"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-01-28 22:48:33.039');
INSERT INTO "public"."sys_oper_log" VALUES (309, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updatePwd()', 'PUT', 1, 'liuxingyu', NULL, '/system/user/profile/updatePwd', '127.0.0.1', '内网IP', '"5959932" "xzx12345"', '{"msg":"操作成功","code":200}', 0, NULL, '2023-01-28 22:48:52.882');
INSERT INTO "public"."sys_oper_log" VALUES (310, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'PUT', 1, 'admin', NULL, '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '4 ["80b61842-9581-4023-aab6-936e405a12ea"]', '{"msg":"操作成功","code":200}', 0, NULL, '2023-01-28 22:49:44.008');
INSERT INTO "public"."sys_oper_log" VALUES (311, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{"admin":false,"createTime":"2023-01-11 08:15:25","dataScope":"2","delFlag":"0","deptCheckStrictly":true,"flag":false,"menuCheckStrictly":true,"menuIds":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045],"params":{},"remark":"普通角色","roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0","updateBy":"admin"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-01-28 22:50:08.723');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_post";
CREATE TABLE "public"."sys_post" (
  "post_id" int8 NOT NULL DEFAULT nextval('sys_post_id_seq'::regclass),
  "post_code" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "post_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "post_sort" int4 NOT NULL,
  "status" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_post"."post_id" IS '岗位ID';
COMMENT ON COLUMN "public"."sys_post"."post_code" IS '岗位编码';
COMMENT ON COLUMN "public"."sys_post"."post_name" IS '岗位名称';
COMMENT ON COLUMN "public"."sys_post"."post_sort" IS '显示顺序';
COMMENT ON COLUMN "public"."sys_post"."status" IS '状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_post"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_post"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_post"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_post"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_post"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_post" IS '岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO "public"."sys_post" VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_post" VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_post" VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_post" VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2023-01-11 08:15:25', '', NULL, '');
INSERT INTO "public"."sys_post" VALUES (5, '5', '测试岗位', 5, '0', 'admin', '2023-01-11 12:32:47.399155', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role";
CREATE TABLE "public"."sys_role" (
  "role_id" int8 NOT NULL DEFAULT nextval('sys_role_id_seq'::regclass),
  "role_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "role_key" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "role_sort" int4 NOT NULL,
  "data_scope" char(1) COLLATE "pg_catalog"."default",
  "menu_check_strictly" bool,
  "dept_check_strictly" bool,
  "status" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::character varying,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_role"."role_id" IS '角色ID';
COMMENT ON COLUMN "public"."sys_role"."role_name" IS '角色名称';
COMMENT ON COLUMN "public"."sys_role"."role_key" IS '角色权限字符串';
COMMENT ON COLUMN "public"."sys_role"."role_sort" IS '显示顺序';
COMMENT ON COLUMN "public"."sys_role"."data_scope" IS '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）';
COMMENT ON COLUMN "public"."sys_role"."menu_check_strictly" IS '菜单树选择项是否关联显示';
COMMENT ON COLUMN "public"."sys_role"."dept_check_strictly" IS '部门树选择项是否关联显示';
COMMENT ON COLUMN "public"."sys_role"."status" IS '角色状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_role"."del_flag" IS '删除标志（0代表存在 2代表删除）';
COMMENT ON COLUMN "public"."sys_role"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_role"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_role"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_role"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_role"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_role" IS '角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO "public"."sys_role" VALUES (1, '超级管理员', 'admin', 1, '1', 't', 't', '0', '0', 'admin', '2023-01-11 08:15:25', '', NULL, '超级管理员');
INSERT INTO "public"."sys_role" VALUES (4, '测试角色', 'test', 3, '1', 't', 't', '0', '0', 'admin', '2023-01-11 12:29:36.866671', 'admin', '2023-01-11 12:31:17.487493', NULL);
INSERT INTO "public"."sys_role" VALUES (2, '普通角色', 'common', 2, '2', 't', 't', '0', '0', 'admin', '2023-01-11 08:15:25', 'admin', '2023-01-28 22:50:08.702', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role_dept";
CREATE TABLE "public"."sys_role_dept" (
  "role_id" int8 NOT NULL,
  "dept_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_role_dept"."role_id" IS '角色ID';
COMMENT ON COLUMN "public"."sys_role_dept"."dept_id" IS '部门ID';
COMMENT ON TABLE "public"."sys_role_dept" IS '角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO "public"."sys_role_dept" VALUES (2, 100);
INSERT INTO "public"."sys_role_dept" VALUES (2, 101);
INSERT INTO "public"."sys_role_dept" VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role_menu";
CREATE TABLE "public"."sys_role_menu" (
  "role_id" int8 NOT NULL,
  "menu_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_role_menu"."role_id" IS '角色ID';
COMMENT ON COLUMN "public"."sys_role_menu"."menu_id" IS '菜单ID';
COMMENT ON TABLE "public"."sys_role_menu" IS '角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO "public"."sys_role_menu" VALUES (4, 1);
INSERT INTO "public"."sys_role_menu" VALUES (4, 100);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1000);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1001);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1002);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1003);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1004);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1005);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1006);
INSERT INTO "public"."sys_role_menu" VALUES (4, 101);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1007);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1008);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1009);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1010);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1011);
INSERT INTO "public"."sys_role_menu" VALUES (4, 102);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1012);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1013);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1014);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1015);
INSERT INTO "public"."sys_role_menu" VALUES (4, 103);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1016);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1017);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1018);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1019);
INSERT INTO "public"."sys_role_menu" VALUES (4, 104);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1020);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1021);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1022);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1023);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1024);
INSERT INTO "public"."sys_role_menu" VALUES (4, 105);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1025);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1026);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1027);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1028);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1029);
INSERT INTO "public"."sys_role_menu" VALUES (4, 106);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1030);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1031);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1032);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1033);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1034);
INSERT INTO "public"."sys_role_menu" VALUES (4, 107);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1035);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1036);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1037);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1038);
INSERT INTO "public"."sys_role_menu" VALUES (4, 108);
INSERT INTO "public"."sys_role_menu" VALUES (4, 500);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1039);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1040);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1041);
INSERT INTO "public"."sys_role_menu" VALUES (4, 501);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1042);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1043);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1044);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1045);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1);
INSERT INTO "public"."sys_role_menu" VALUES (2, 100);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1000);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1001);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1002);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1003);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1004);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1005);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1006);
INSERT INTO "public"."sys_role_menu" VALUES (2, 101);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1007);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1008);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1009);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1010);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1011);
INSERT INTO "public"."sys_role_menu" VALUES (2, 102);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1012);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1013);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1014);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1015);
INSERT INTO "public"."sys_role_menu" VALUES (2, 103);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1016);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1017);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1018);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1019);
INSERT INTO "public"."sys_role_menu" VALUES (2, 104);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1020);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1021);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1022);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1023);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1024);
INSERT INTO "public"."sys_role_menu" VALUES (2, 105);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1025);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1026);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1027);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1028);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1029);
INSERT INTO "public"."sys_role_menu" VALUES (2, 106);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1030);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1031);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1032);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1033);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1034);
INSERT INTO "public"."sys_role_menu" VALUES (2, 107);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1035);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1036);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1037);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1038);
INSERT INTO "public"."sys_role_menu" VALUES (2, 108);
INSERT INTO "public"."sys_role_menu" VALUES (2, 500);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1039);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1040);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1041);
INSERT INTO "public"."sys_role_menu" VALUES (2, 501);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1042);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1043);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1044);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1045);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user";
CREATE TABLE "public"."sys_user" (
  "user_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL DEFAULT uuid_generate_v4(),
  "dept_id" int8,
  "user_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "nick_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "user_type" varchar(2) COLLATE "pg_catalog"."default",
  "email" varchar(50) COLLATE "pg_catalog"."default",
  "phonenumber" varchar(11) COLLATE "pg_catalog"."default",
  "sex" char(1) COLLATE "pg_catalog"."default",
  "avatar" varchar(100) COLLATE "pg_catalog"."default",
  "password" varchar(100) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default",
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::character varying,
  "login_ip" varchar(128) COLLATE "pg_catalog"."default",
  "login_date" timestamp(6),
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_user"."user_id" IS '用户ID';
COMMENT ON COLUMN "public"."sys_user"."dept_id" IS '部门ID';
COMMENT ON COLUMN "public"."sys_user"."user_name" IS '用户账号';
COMMENT ON COLUMN "public"."sys_user"."nick_name" IS '用户昵称';
COMMENT ON COLUMN "public"."sys_user"."user_type" IS '用户类型（00系统用户）';
COMMENT ON COLUMN "public"."sys_user"."email" IS '用户邮箱';
COMMENT ON COLUMN "public"."sys_user"."phonenumber" IS '手机号码';
COMMENT ON COLUMN "public"."sys_user"."sex" IS '用户性别（0男 1女 2未知）';
COMMENT ON COLUMN "public"."sys_user"."avatar" IS '头像地址';
COMMENT ON COLUMN "public"."sys_user"."password" IS '密码';
COMMENT ON COLUMN "public"."sys_user"."status" IS '帐号状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_user"."del_flag" IS '删除标志（0代表存在 2代表删除）';
COMMENT ON COLUMN "public"."sys_user"."login_ip" IS '最后登录IP';
COMMENT ON COLUMN "public"."sys_user"."login_date" IS '最后登录时间';
COMMENT ON COLUMN "public"."sys_user"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_user"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_user"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_user"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_user"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_user" IS '用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO "public"."sys_user" VALUES ('2', 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '2', '127.0.0.1', '2023-01-11 08:15:25', 'admin', '2023-01-11 08:15:25', '', NULL, '测试员');
INSERT INTO "public"."sys_user" VALUES ('62b8a061-7fce-49dc-935e-5b61a3294a2f', 100, 'dingli', '丁力', NULL, '1951119284@qq.com', '13796656205', '1', NULL, '$2a$10$uV6g8tMz.G2kD7rkika/GeNG6H.nPGiD9a5pX7QMHAEPmuKD4lTLq', '0', '2', NULL, NULL, 'admin', '2023-01-28 21:59:26.6', NULL, NULL, NULL);
INSERT INTO "public"."sys_user" VALUES ('3', 203, 'liusuyi', '刘苏义123', NULL, NULL, '13796656205', '0', NULL, '$2a$10$79QjypY7bUn9q8hY59uH3uOsWngurBJSh2IC9xGvX2gSSzViYBCjC', '0', '0', NULL, NULL, 'admin', '2023-01-11 11:59:14.135452', 'admin', '2023-01-28 22:45:40.439', NULL);
INSERT INTO "public"."sys_user" VALUES ('6fdf9039-a040-4352-a080-dfe833b7f9d4', 103, 'dingli', '丁力1234', NULL, '19511192184@qq.com', '13796656215', '0', NULL, '$2a$10$8j2w0ig5UFwG/gMDb2v6ieF4RR8NNEn8p7o6MjY3IKPFbw3loYEwy', '1', '0', NULL, NULL, 'admin', '2023-01-28 22:26:44.89', 'admin', '2023-01-28 22:47:07.715', '12312312312312');
INSERT INTO "public"."sys_user" VALUES ('1', 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-01-28 22:49:17.021', 'admin', '2023-01-11 08:15:25', '', '2023-01-28 22:49:17.022', '管理员');
INSERT INTO "public"."sys_user" VALUES ('80b61842-9581-4023-aab6-936e405a12ea', 108, 'liuxingyu', '刘星宇', NULL, '19111115@qq.com', '13566668881', '0', NULL, '$2a$10$e.zCjpuu5sefxXYUSG2g7erZLt74u6u/2TdmQ84efpAgk3niSkEjW', '0', '0', '127.0.0.1', '2023-01-28 22:50:44.007', 'admin', '2023-01-28 22:46:35.138', 'admin', '2023-01-28 22:50:44.008', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user_post";
CREATE TABLE "public"."sys_user_post" (
  "user_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "post_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_user_post"."user_id" IS '用户ID';
COMMENT ON COLUMN "public"."sys_user_post"."post_id" IS '岗位ID';
COMMENT ON TABLE "public"."sys_user_post" IS '用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO "public"."sys_user_post" VALUES ('1', 1);
INSERT INTO "public"."sys_user_post" VALUES ('202', 4);
INSERT INTO "public"."sys_user_post" VALUES ('6fdf9039-a040-4352-a080-dfe833b7f9d4', 2);
INSERT INTO "public"."sys_user_post" VALUES ('3', 4);
INSERT INTO "public"."sys_user_post" VALUES ('80b61842-9581-4023-aab6-936e405a12ea', 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user_role";
CREATE TABLE "public"."sys_user_role" (
  "user_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "role_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_user_role"."user_id" IS '用户ID';
COMMENT ON COLUMN "public"."sys_user_role"."role_id" IS '角色ID';
COMMENT ON TABLE "public"."sys_user_role" IS '用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO "public"."sys_user_role" VALUES ('1', 1);
INSERT INTO "public"."sys_user_role" VALUES ('202', 2);
INSERT INTO "public"."sys_user_role" VALUES ('6fdf9039-a040-4352-a080-dfe833b7f9d4', 2);
INSERT INTO "public"."sys_user_role" VALUES ('3', 2);
INSERT INTO "public"."sys_user_role" VALUES ('80b61842-9581-4023-aab6-936e405a12ea', 2);
INSERT INTO "public"."sys_user_role" VALUES ('80b61842-9581-4023-aab6-936e405a12ea', 4);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS "public"."teacher";
CREATE TABLE "public"."teacher" (
  "id" int4 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "phone" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."teacher"."id" IS 'id';
COMMENT ON COLUMN "public"."teacher"."name" IS '教师姓名';
COMMENT ON COLUMN "public"."teacher"."phone" IS '教师电话';

-- ----------------------------
-- Function structure for uuid_generate_v1
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_generate_v1"();
CREATE OR REPLACE FUNCTION "public"."uuid_generate_v1"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_generate_v1'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_generate_v1mc
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_generate_v1mc"();
CREATE OR REPLACE FUNCTION "public"."uuid_generate_v1mc"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_generate_v1mc'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_generate_v3
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_generate_v3"("namespace" uuid, "name" text);
CREATE OR REPLACE FUNCTION "public"."uuid_generate_v3"("namespace" uuid, "name" text)
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_generate_v3'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_generate_v4
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_generate_v4"();
CREATE OR REPLACE FUNCTION "public"."uuid_generate_v4"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_generate_v4'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_generate_v5
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_generate_v5"("namespace" uuid, "name" text);
CREATE OR REPLACE FUNCTION "public"."uuid_generate_v5"("namespace" uuid, "name" text)
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_generate_v5'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_nil
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_nil"();
CREATE OR REPLACE FUNCTION "public"."uuid_nil"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_nil'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_ns_dns
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_ns_dns"();
CREATE OR REPLACE FUNCTION "public"."uuid_ns_dns"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_ns_dns'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_ns_oid
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_ns_oid"();
CREATE OR REPLACE FUNCTION "public"."uuid_ns_oid"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_ns_oid'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_ns_url
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_ns_url"();
CREATE OR REPLACE FUNCTION "public"."uuid_ns_url"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_ns_url'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_ns_x500
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_ns_x500"();
CREATE OR REPLACE FUNCTION "public"."uuid_ns_x500"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_ns_x500'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."gen_table_column_id_seq"', 7, true);
SELECT setval('"public"."gen_table_id_seq"', 208, true);
SELECT setval('"public"."sys_config_id_seq"', 9, true);
SELECT setval('"public"."sys_dept_id_seq"', 112, true);
SELECT setval('"public"."sys_dict_type_id_seq"', 13, true);
SELECT setval('"public"."sys_job_log_id_seq"', 29, true);
SELECT setval('"public"."sys_logininfor_id_seq"', 239, true);
SELECT setval('"public"."sys_menu_id_seq"', 1066, true);
SELECT setval('"public"."sys_notice_id_seq"', 5, true);
SELECT setval('"public"."sys_oper_log_id_seq"', 312, true);
SELECT setval('"public"."sys_post_id_seq"', 7, true);
SELECT setval('"public"."sys_role_id_seq"', 6, true);
SELECT setval('"public"."sys_user_id_seq"', 5, true);

-- ----------------------------
-- Primary Key structure for table gen_table
-- ----------------------------
ALTER TABLE "public"."gen_table" ADD CONSTRAINT "gen_table_pkey" PRIMARY KEY ("table_id");

-- ----------------------------
-- Primary Key structure for table gen_table_column
-- ----------------------------
ALTER TABLE "public"."gen_table_column" ADD CONSTRAINT "gen_table_column_pkey" PRIMARY KEY ("column_id");

-- ----------------------------
-- Primary Key structure for table qrtz_blob_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_blob_triggers" ADD CONSTRAINT "qrtz_blob_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_calendars
-- ----------------------------
ALTER TABLE "public"."qrtz_calendars" ADD CONSTRAINT "qrtz_calendars_pkey" PRIMARY KEY ("sched_name", "calendar_name");

-- ----------------------------
-- Primary Key structure for table qrtz_cron_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_cron_triggers" ADD CONSTRAINT "qrtz_cron_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_fired_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_fired_triggers" ADD CONSTRAINT "qrtz_fired_triggers_pkey" PRIMARY KEY ("sched_name", "entry_id");

-- ----------------------------
-- Primary Key structure for table qrtz_job_details
-- ----------------------------
ALTER TABLE "public"."qrtz_job_details" ADD CONSTRAINT "qrtz_job_details_pkey" PRIMARY KEY ("sched_name", "job_name", "job_group");

-- ----------------------------
-- Primary Key structure for table qrtz_locks
-- ----------------------------
ALTER TABLE "public"."qrtz_locks" ADD CONSTRAINT "qrtz_locks_pkey" PRIMARY KEY ("sched_name", "lock_name");

-- ----------------------------
-- Primary Key structure for table qrtz_paused_trigger_grps
-- ----------------------------
ALTER TABLE "public"."qrtz_paused_trigger_grps" ADD CONSTRAINT "qrtz_paused_trigger_grps_pkey" PRIMARY KEY ("sched_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_scheduler_state
-- ----------------------------
ALTER TABLE "public"."qrtz_scheduler_state" ADD CONSTRAINT "qrtz_scheduler_state_pkey" PRIMARY KEY ("sched_name", "instance_name");

-- ----------------------------
-- Primary Key structure for table qrtz_simple_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_simple_triggers" ADD CONSTRAINT "qrtz_simple_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_simprop_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_simprop_triggers" ADD CONSTRAINT "qrtz_simprop_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Indexes structure for table qrtz_triggers
-- ----------------------------
CREATE INDEX "sched_name" ON "public"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table qrtz_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_triggers" ADD CONSTRAINT "qrtz_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table student
-- ----------------------------
ALTER TABLE "public"."student" ADD CONSTRAINT "student_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_config
-- ----------------------------
ALTER TABLE "public"."sys_config" ADD CONSTRAINT "sys_config_pkey" PRIMARY KEY ("config_id");

-- ----------------------------
-- Primary Key structure for table sys_dept
-- ----------------------------
ALTER TABLE "public"."sys_dept" ADD CONSTRAINT "sys_dept_pkey" PRIMARY KEY ("dept_id");

-- ----------------------------
-- Primary Key structure for table sys_dict_data
-- ----------------------------
ALTER TABLE "public"."sys_dict_data" ADD CONSTRAINT "sys_dict_data_pkey" PRIMARY KEY ("dict_code");

-- ----------------------------
-- Indexes structure for table sys_dict_type
-- ----------------------------
CREATE INDEX "dict_type" ON "public"."sys_dict_type" USING btree (
  "dict_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sys_dict_type
-- ----------------------------
ALTER TABLE "public"."sys_dict_type" ADD CONSTRAINT "sys_dict_type_pkey" PRIMARY KEY ("dict_id");

-- ----------------------------
-- Primary Key structure for table sys_job
-- ----------------------------
ALTER TABLE "public"."sys_job" ADD CONSTRAINT "sys_job_pkey" PRIMARY KEY ("job_id", "job_name", "job_group");

-- ----------------------------
-- Primary Key structure for table sys_job_log
-- ----------------------------
ALTER TABLE "public"."sys_job_log" ADD CONSTRAINT "sys_job_log_pkey" PRIMARY KEY ("job_log_id");

-- ----------------------------
-- Primary Key structure for table sys_logininfor
-- ----------------------------
ALTER TABLE "public"."sys_logininfor" ADD CONSTRAINT "sys_logininfor_pkey" PRIMARY KEY ("info_id");

-- ----------------------------
-- Primary Key structure for table sys_menu
-- ----------------------------
ALTER TABLE "public"."sys_menu" ADD CONSTRAINT "sys_menu_pkey" PRIMARY KEY ("menu_id");

-- ----------------------------
-- Primary Key structure for table sys_notice
-- ----------------------------
ALTER TABLE "public"."sys_notice" ADD CONSTRAINT "sys_notice_pkey" PRIMARY KEY ("notice_id");

-- ----------------------------
-- Primary Key structure for table sys_oper_log
-- ----------------------------
ALTER TABLE "public"."sys_oper_log" ADD CONSTRAINT "sys_oper_log_pkey" PRIMARY KEY ("oper_id");

-- ----------------------------
-- Primary Key structure for table sys_post
-- ----------------------------
ALTER TABLE "public"."sys_post" ADD CONSTRAINT "sys_post_pkey" PRIMARY KEY ("post_id");

-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE "public"."sys_role" ADD CONSTRAINT "sys_role_pkey" PRIMARY KEY ("role_id");

-- ----------------------------
-- Primary Key structure for table sys_role_dept
-- ----------------------------
ALTER TABLE "public"."sys_role_dept" ADD CONSTRAINT "sys_role_dept_pkey" PRIMARY KEY ("role_id", "dept_id");

-- ----------------------------
-- Primary Key structure for table sys_role_menu
-- ----------------------------
ALTER TABLE "public"."sys_role_menu" ADD CONSTRAINT "sys_role_menu_pkey" PRIMARY KEY ("role_id", "menu_id");

-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE "public"."sys_user" ADD CONSTRAINT "sys_user_pkey" PRIMARY KEY ("user_id");

-- ----------------------------
-- Primary Key structure for table sys_user_post
-- ----------------------------
ALTER TABLE "public"."sys_user_post" ADD CONSTRAINT "sys_user_post_pkey" PRIMARY KEY ("user_id", "post_id");

-- ----------------------------
-- Primary Key structure for table sys_user_role
-- ----------------------------
ALTER TABLE "public"."sys_user_role" ADD CONSTRAINT "sys_user_role_pkey" PRIMARY KEY ("user_id", "role_id");

-- ----------------------------
-- Primary Key structure for table teacher
-- ----------------------------
ALTER TABLE "public"."teacher" ADD CONSTRAINT "teacher_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table qrtz_blob_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_blob_triggers" ADD CONSTRAINT "qrtz_blob_triggers_ibfk_1" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "public"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table qrtz_cron_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_cron_triggers" ADD CONSTRAINT "qrtz_cron_triggers_ibfk_1" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "public"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table qrtz_simple_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_simple_triggers" ADD CONSTRAINT "qrtz_simple_triggers_ibfk_1" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "public"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table qrtz_simprop_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_simprop_triggers" ADD CONSTRAINT "qrtz_simprop_triggers_ibfk_1" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "public"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table qrtz_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_triggers" ADD CONSTRAINT "qrtz_triggers_ibfk_1" FOREIGN KEY ("sched_name", "job_name", "job_group") REFERENCES "public"."qrtz_job_details" ("sched_name", "job_name", "job_group") ON DELETE NO ACTION ON UPDATE NO ACTION;
