prompt PL/SQL Developer import file
prompt Created on 2017年12月17日 by icelake
set feedback off
set define off
prompt Dropping SAMS_STUDENT...
drop table SAMS_STUDENT cascade constraints;
prompt Dropping SAMS_TEACHER...
drop table SAMS_TEACHER cascade constraints;
prompt Dropping SYS_CODELIST...
drop table SYS_CODELIST cascade constraints;
prompt Dropping SYS_MENU...
drop table SYS_MENU cascade constraints;
prompt Dropping SYS_ORG_DIMENSION...
drop table SYS_ORG_DIMENSION cascade constraints;
prompt Dropping SYS_ORG_DIMENSION_UNIT...
drop table SYS_ORG_DIMENSION_UNIT cascade constraints;
prompt Dropping SYS_ORG_UNIT...
drop table SYS_ORG_UNIT cascade constraints;
prompt Dropping SYS_ORG_UNIT_USER...
drop table SYS_ORG_UNIT_USER cascade constraints;
prompt Dropping SYS_ORG_USER...
drop table SYS_ORG_USER cascade constraints;
prompt Dropping SYS_SEC_PERMISSION...
drop table SYS_SEC_PERMISSION cascade constraints;
prompt Dropping SYS_SEC_RESOURCE_AUTHORITY...
drop table SYS_SEC_RESOURCE_AUTHORITY cascade constraints;
prompt Dropping SYS_SEC_ROLE...
drop table SYS_SEC_ROLE cascade constraints;
prompt Dropping SYS_SEC_USER_ROLE...
drop table SYS_SEC_USER_ROLE cascade constraints;
prompt Creating SAMS_STUDENT...
create table SAMS_STUDENT
(
  student_id        VARCHAR2(32) not null,
  student_no        VARCHAR2(32) not null,
  student_name      VARCHAR2(64),
  sex               VARCHAR2(32),
  birth_date        VARCHAR2(32),
  start_time        VARCHAR2(32),
  finish_time       VARCHAR2(32),
  remark            VARCHAR2(480),
  active_flag       VARCHAR2(32) default '1',
  created_by        VARCHAR2(32),
  creation_time     TIMESTAMP(6),
  modified_by       VARCHAR2(32),
  modification_time TIMESTAMP(6),
  ext1              VARCHAR2(480),
  ext2              VARCHAR2(480),
  ext3              VARCHAR2(480)
)
;
comment on table SAMS_STUDENT
  is '学生表';
comment on column SAMS_STUDENT.student_id
  is '学生ID';
comment on column SAMS_STUDENT.student_no
  is '学号';
comment on column SAMS_STUDENT.student_name
  is '学生姓名';
comment on column SAMS_STUDENT.sex
  is '性别';
comment on column SAMS_STUDENT.birth_date
  is '出生日期';
comment on column SAMS_STUDENT.start_time
  is '入学时间';
comment on column SAMS_STUDENT.finish_time
  is '毕业时间';
comment on column SAMS_STUDENT.remark
  is '备注';
comment on column SAMS_STUDENT.active_flag
  is '使用标识';
comment on column SAMS_STUDENT.created_by
  is '创建人';
comment on column SAMS_STUDENT.creation_time
  is '创建时间';
comment on column SAMS_STUDENT.modified_by
  is '修改人';
comment on column SAMS_STUDENT.modification_time
  is '修改时间';
comment on column SAMS_STUDENT.ext1
  is '备注1';
comment on column SAMS_STUDENT.ext2
  is '备注2';
comment on column SAMS_STUDENT.ext3
  is '备注3';
alter table SAMS_STUDENT
  add constraint PK_SAMS_STUDENT primary key (STUDENT_ID);

prompt Creating SAMS_TEACHER...
create table SAMS_TEACHER
(
  teacher_id        VARCHAR2(32) not null,
  teacher_no        VARCHAR2(32) not null,
  teacher_name      VARCHAR2(64),
  sex               VARCHAR2(32),
  birth_date        VARCHAR2(32),
  remark            VARCHAR2(480),
  active_flag       VARCHAR2(32) default '1',
  created_by        VARCHAR2(32),
  creation_time     TIMESTAMP(6),
  modified_by       VARCHAR2(32),
  modification_time TIMESTAMP(6),
  ext1              VARCHAR2(480),
  ext2              VARCHAR2(480),
  ext3              VARCHAR2(480)
)
;
comment on table SAMS_TEACHER
  is '教师表';
comment on column SAMS_TEACHER.teacher_id
  is '教师ID';
comment on column SAMS_TEACHER.teacher_no
  is '教师编号';
comment on column SAMS_TEACHER.teacher_name
  is '教师姓名';
comment on column SAMS_TEACHER.sex
  is '性别';
comment on column SAMS_TEACHER.birth_date
  is '出生日期';
comment on column SAMS_TEACHER.remark
  is '备注';
comment on column SAMS_TEACHER.active_flag
  is '使用标识';
comment on column SAMS_TEACHER.created_by
  is '创建人';
comment on column SAMS_TEACHER.creation_time
  is '创建时间';
comment on column SAMS_TEACHER.modified_by
  is '修改人';
comment on column SAMS_TEACHER.modification_time
  is '修改时间';
comment on column SAMS_TEACHER.ext1
  is '备注1';
comment on column SAMS_TEACHER.ext2
  is '备注2';
comment on column SAMS_TEACHER.ext3
  is '备注3';
alter table SAMS_TEACHER
  add constraint PK_SAMS_TEACHER primary key (TEACHER_ID);

prompt Creating SYS_CODELIST...
create table SYS_CODELIST
(
  code_id           VARCHAR2(32) not null,
  code_value        VARCHAR2(32) not null,
  code_value_name   VARCHAR2(256),
  code_type         VARCHAR2(32) not null,
  code_type_name    VARCHAR2(256),
  code_parent       VARCHAR2(32) default '-1',
  code_order        VARCHAR2(8),
  filter            VARCHAR2(128),
  language          VARCHAR2(16) default 'zh_CN',
  remark            VARCHAR2(480),
  active_flag       VARCHAR2(32) default '1',
  created_by        VARCHAR2(32),
  creation_time     TIMESTAMP(6),
  modified_by       VARCHAR2(32),
  modification_time TIMESTAMP(6),
  ext1              VARCHAR2(480),
  ext2              VARCHAR2(480),
  ext3              VARCHAR2(480)
)
;
comment on table SYS_CODELIST
  is '代码表';
comment on column SYS_CODELIST.code_id
  is 'PKID';
comment on column SYS_CODELIST.code_value
  is '代码值';
comment on column SYS_CODELIST.code_value_name
  is '代码名称';
comment on column SYS_CODELIST.code_type
  is '代码类型';
comment on column SYS_CODELIST.code_type_name
  is '代码类型名称';
comment on column SYS_CODELIST.code_parent
  is '父节点代码值';
comment on column SYS_CODELIST.code_order
  is '排序';
comment on column SYS_CODELIST.filter
  is '级联设置属性';
comment on column SYS_CODELIST.language
  is '国际化信息';
comment on column SYS_CODELIST.remark
  is '备注';
comment on column SYS_CODELIST.active_flag
  is '使用标识';
comment on column SYS_CODELIST.created_by
  is '创建人';
comment on column SYS_CODELIST.creation_time
  is '创建时间';
comment on column SYS_CODELIST.modified_by
  is '修改人';
comment on column SYS_CODELIST.modification_time
  is '修改时间';
comment on column SYS_CODELIST.ext1
  is '备注1';
comment on column SYS_CODELIST.ext2
  is '备注2';
comment on column SYS_CODELIST.ext3
  is '备注3';
alter table SYS_CODELIST
  add constraint PK_SYS_CODELIST primary key (CODE_ID);

prompt Creating SYS_MENU...
create table SYS_MENU
(
  menu_id           VARCHAR2(32) not null,
  title             VARCHAR2(128),
  target            VARCHAR2(32),
  href              VARCHAR2(256),
  icon              VARCHAR2(256),
  spread            CHAR(1),
  menu_order        VARCHAR2(32),
  show_default      VARCHAR2(32),
  parent_menu_id    VARCHAR2(32),
  app_id            VARCHAR2(32),
  remark            VARCHAR2(480),
  active_flag       VARCHAR2(32),
  created_by        VARCHAR2(32),
  creation_time     TIMESTAMP(6),
  modified_by       VARCHAR2(32),
  modification_time TIMESTAMP(6),
  ext1              VARCHAR2(480),
  ext2              VARCHAR2(480),
  ext3              VARCHAR2(480)
)
;
comment on table SYS_MENU
  is '菜单表';
comment on column SYS_MENU.menu_id
  is '菜单ID';
comment on column SYS_MENU.title
  is '菜单名称';
comment on column SYS_MENU.target
  is '目标框架';
comment on column SYS_MENU.href
  is '请求URL';
comment on column SYS_MENU.icon
  is '图片';
comment on column SYS_MENU.spread
  is '是否默认展开';
comment on column SYS_MENU.menu_order
  is '排序';
comment on column SYS_MENU.show_default
  is '是否默认显示';
comment on column SYS_MENU.parent_menu_id
  is '父菜单ID';
comment on column SYS_MENU.app_id
  is '应用ID';
comment on column SYS_MENU.remark
  is '备注';
comment on column SYS_MENU.active_flag
  is '使用标识';
comment on column SYS_MENU.created_by
  is '创建人';
comment on column SYS_MENU.creation_time
  is '创建时间';
comment on column SYS_MENU.modified_by
  is '修改人';
comment on column SYS_MENU.modification_time
  is '修改时间';
comment on column SYS_MENU.ext1
  is '备注1';
comment on column SYS_MENU.ext2
  is '备注2';
comment on column SYS_MENU.ext3
  is '备注3';
alter table SYS_MENU
  add constraint PK_SYS_MENU primary key (MENU_ID);

prompt Creating SYS_ORG_DIMENSION...
create table SYS_ORG_DIMENSION
(
  dimension_id      VARCHAR2(32) not null,
  dimension_name    VARCHAR2(32),
  dimension_type    VARCHAR2(32),
  description       VARCHAR2(255),
  is_default        VARCHAR2(32),
  dimension_order   VARCHAR2(8),
  remark            VARCHAR2(480),
  active_flag       VARCHAR2(32),
  created_by        VARCHAR2(32),
  creation_time     TIMESTAMP(6),
  modified_by       VARCHAR2(32),
  modification_time TIMESTAMP(6),
  ext1              VARCHAR2(480),
  ext2              VARCHAR2(480),
  ext3              VARCHAR2(480)
)
;
comment on table SYS_ORG_DIMENSION
  is '组织维度表';
comment on column SYS_ORG_DIMENSION.dimension_id
  is '维度ID';
comment on column SYS_ORG_DIMENSION.dimension_name
  is '维度名称';
comment on column SYS_ORG_DIMENSION.dimension_type
  is '维度类型';
comment on column SYS_ORG_DIMENSION.description
  is '描述信息';
comment on column SYS_ORG_DIMENSION.is_default
  is '是否为默认维度';
comment on column SYS_ORG_DIMENSION.dimension_order
  is '维度显示顺序';
comment on column SYS_ORG_DIMENSION.remark
  is '备注';
comment on column SYS_ORG_DIMENSION.active_flag
  is '使用标识';
comment on column SYS_ORG_DIMENSION.created_by
  is '创建人';
comment on column SYS_ORG_DIMENSION.creation_time
  is '创建时间';
comment on column SYS_ORG_DIMENSION.modified_by
  is '修改人';
comment on column SYS_ORG_DIMENSION.modification_time
  is '修改时间';
comment on column SYS_ORG_DIMENSION.ext1
  is '备注1';
comment on column SYS_ORG_DIMENSION.ext2
  is '备注2';
comment on column SYS_ORG_DIMENSION.ext3
  is '备注3';
alter table SYS_ORG_DIMENSION
  add constraint PK_SYS_ORG_DIMENSION primary key (DIMENSION_ID);

prompt Creating SYS_ORG_DIMENSION_UNIT...
create table SYS_ORG_DIMENSION_UNIT
(
  dimension_unit_id        VARCHAR2(32) not null,
  dimension_id             VARCHAR2(32),
  unit_id                  VARCHAR2(32),
  parent_dimension_unit_id VARCHAR2(32),
  alias_name               VARCHAR2(255),
  unit_path                VARCHAR2(1000),
  dimension_unit_level     VARCHAR2(8),
  dimension_unit_order     VARCHAR2(8),
  time_begin               VARCHAR2(32),
  time_end                 VARCHAR2(32),
  is_enabled               VARCHAR2(32),
  remark                   VARCHAR2(480),
  active_flag              VARCHAR2(32),
  created_by               VARCHAR2(32),
  creation_time            TIMESTAMP(6),
  modified_by              VARCHAR2(32),
  modification_time        TIMESTAMP(6),
  ext1                     VARCHAR2(480),
  ext2                     VARCHAR2(480),
  ext3                     VARCHAR2(480)
)
;
comment on table SYS_ORG_DIMENSION_UNIT
  is '组织维度与组织单元关系表';
comment on column SYS_ORG_DIMENSION_UNIT.dimension_unit_id
  is '维度组织单元ID';
comment on column SYS_ORG_DIMENSION_UNIT.dimension_id
  is '维度ID';
comment on column SYS_ORG_DIMENSION_UNIT.unit_id
  is '组织单元ID';
comment on column SYS_ORG_DIMENSION_UNIT.parent_dimension_unit_id
  is '父维度组织单元ID';
comment on column SYS_ORG_DIMENSION_UNIT.alias_name
  is '组织单元别名';
comment on column SYS_ORG_DIMENSION_UNIT.unit_path
  is '上级路径';
comment on column SYS_ORG_DIMENSION_UNIT.dimension_unit_level
  is '层次';
comment on column SYS_ORG_DIMENSION_UNIT.dimension_unit_order
  is '同级排序号';
comment on column SYS_ORG_DIMENSION_UNIT.time_begin
  is '生效时间';
comment on column SYS_ORG_DIMENSION_UNIT.time_end
  is '失效时间';
comment on column SYS_ORG_DIMENSION_UNIT.is_enabled
  is '是否启用';
comment on column SYS_ORG_DIMENSION_UNIT.remark
  is '备注';
comment on column SYS_ORG_DIMENSION_UNIT.active_flag
  is '使用标识';
comment on column SYS_ORG_DIMENSION_UNIT.created_by
  is '创建人';
comment on column SYS_ORG_DIMENSION_UNIT.creation_time
  is '创建时间';
comment on column SYS_ORG_DIMENSION_UNIT.modified_by
  is '修改人';
comment on column SYS_ORG_DIMENSION_UNIT.modification_time
  is '修改时间';
comment on column SYS_ORG_DIMENSION_UNIT.ext1
  is '备注1';
comment on column SYS_ORG_DIMENSION_UNIT.ext2
  is '备注2';
comment on column SYS_ORG_DIMENSION_UNIT.ext3
  is '备注3';
alter table SYS_ORG_DIMENSION_UNIT
  add constraint PK_SYS_ORG_DIMENSION_UNIT primary key (DIMENSION_UNIT_ID);

prompt Creating SYS_ORG_UNIT...
create table SYS_ORG_UNIT
(
  unit_id           VARCHAR2(32) not null,
  unit_code         VARCHAR2(32),
  unit_name         VARCHAR2(32),
  unit_type         VARCHAR2(32),
  time_begin        VARCHAR2(32),
  time_end          VARCHAR2(32),
  is_enabled        VARCHAR2(32),
  remark            VARCHAR2(480),
  active_flag       VARCHAR2(32),
  created_by        VARCHAR2(32),
  creation_time     TIMESTAMP(6),
  modified_by       VARCHAR2(32),
  modification_time TIMESTAMP(6),
  ext1              VARCHAR2(480),
  ext2              VARCHAR2(480),
  ext3              VARCHAR2(480)
)
;
comment on table SYS_ORG_UNIT
  is '组织单元表';
comment on column SYS_ORG_UNIT.unit_id
  is '组织单元ID';
comment on column SYS_ORG_UNIT.unit_code
  is '组织单元编码';
comment on column SYS_ORG_UNIT.unit_name
  is '组织单元名称';
comment on column SYS_ORG_UNIT.unit_type
  is '组织单元类型';
comment on column SYS_ORG_UNIT.time_begin
  is '生效时间';
comment on column SYS_ORG_UNIT.time_end
  is '失效时间';
comment on column SYS_ORG_UNIT.is_enabled
  is '是否启用';
comment on column SYS_ORG_UNIT.remark
  is '备注';
comment on column SYS_ORG_UNIT.active_flag
  is '使用标识';
comment on column SYS_ORG_UNIT.created_by
  is '创建人';
comment on column SYS_ORG_UNIT.creation_time
  is '创建时间';
comment on column SYS_ORG_UNIT.modified_by
  is '修改人';
comment on column SYS_ORG_UNIT.modification_time
  is '修改时间';
comment on column SYS_ORG_UNIT.ext1
  is '备注1';
comment on column SYS_ORG_UNIT.ext2
  is '备注2';
comment on column SYS_ORG_UNIT.ext3
  is '备注3';
alter table SYS_ORG_UNIT
  add constraint PK_SYS_ORG_UNIT primary key (UNIT_ID);

prompt Creating SYS_ORG_UNIT_USER...
create table SYS_ORG_UNIT_USER
(
  unit_user_id      VARCHAR2(32) not null,
  user_id           VARCHAR2(64),
  unit_id           VARCHAR2(128),
  is_leader         VARCHAR2(32),
  remark            VARCHAR2(480),
  active_flag       VARCHAR2(32),
  created_by        VARCHAR2(32),
  creation_time     TIMESTAMP(6),
  modified_by       VARCHAR2(32),
  modification_time TIMESTAMP(6),
  ext1              VARCHAR2(480),
  ext2              VARCHAR2(480),
  ext3              VARCHAR2(480)
)
;
comment on table SYS_ORG_UNIT_USER
  is '组织单元与用户关系表';
comment on column SYS_ORG_UNIT_USER.unit_user_id
  is '关系ID';
comment on column SYS_ORG_UNIT_USER.user_id
  is '用户ID';
comment on column SYS_ORG_UNIT_USER.unit_id
  is '组织单元ID';
comment on column SYS_ORG_UNIT_USER.is_leader
  is '是否负责人';
comment on column SYS_ORG_UNIT_USER.remark
  is '备注';
comment on column SYS_ORG_UNIT_USER.active_flag
  is '使用标识';
comment on column SYS_ORG_UNIT_USER.created_by
  is '创建人';
comment on column SYS_ORG_UNIT_USER.creation_time
  is '创建时间';
comment on column SYS_ORG_UNIT_USER.modified_by
  is '修改人';
comment on column SYS_ORG_UNIT_USER.modification_time
  is '修改时间';
comment on column SYS_ORG_UNIT_USER.ext1
  is '备注1';
comment on column SYS_ORG_UNIT_USER.ext2
  is '备注2';
comment on column SYS_ORG_UNIT_USER.ext3
  is '备注3';
alter table SYS_ORG_UNIT_USER
  add constraint PK_SYS_ORG_UNIT_USER primary key (UNIT_USER_ID);

prompt Creating SYS_ORG_USER...
create table SYS_ORG_USER
(
  user_id            VARCHAR2(32) not null,
  account            VARCHAR2(32),
  password           VARCHAR2(32),
  fullname           VARCHAR2(64),
  user_type          VARCHAR2(32),
  pwd_changed_time   TIMESTAMP(6),
  is_locked          VARCHAR2(32),
  locked_reason      VARCHAR2(128),
  user_head          VARCHAR2(128),
  sex                VARCHAR2(32),
  birthdate          VARCHAR2(32),
  mobile_telephone   VARCHAR2(16),
  email              VARCHAR2(100),
  credentials_type   VARCHAR2(32),
  credentials_number VARCHAR2(32),
  home_address       VARCHAR2(256),
  remark             VARCHAR2(480),
  active_flag        VARCHAR2(32),
  created_by         VARCHAR2(32),
  creation_time      TIMESTAMP(6),
  modified_by        VARCHAR2(32),
  modification_time  TIMESTAMP(6),
  ext1               VARCHAR2(480),
  ext2               VARCHAR2(480),
  ext3               VARCHAR2(480)
)
;
comment on table SYS_ORG_USER
  is '用户表';
comment on column SYS_ORG_USER.user_id
  is '用户ID';
comment on column SYS_ORG_USER.account
  is '账号';
comment on column SYS_ORG_USER.password
  is '密码';
comment on column SYS_ORG_USER.fullname
  is '姓名';
comment on column SYS_ORG_USER.user_type
  is '用户类型';
comment on column SYS_ORG_USER.pwd_changed_time
  is '密码最后一次修改时间';
comment on column SYS_ORG_USER.is_locked
  is '锁定状态';
comment on column SYS_ORG_USER.locked_reason
  is '锁定原因';
comment on column SYS_ORG_USER.user_head
  is '头像';
comment on column SYS_ORG_USER.sex
  is '性别';
comment on column SYS_ORG_USER.birthdate
  is '生日';
comment on column SYS_ORG_USER.mobile_telephone
  is '电话号码';
comment on column SYS_ORG_USER.email
  is '邮件地址';
comment on column SYS_ORG_USER.credentials_type
  is '证件类型';
comment on column SYS_ORG_USER.credentials_number
  is '证件号码';
comment on column SYS_ORG_USER.home_address
  is '家庭住址';
comment on column SYS_ORG_USER.remark
  is '备注';
comment on column SYS_ORG_USER.active_flag
  is '使用标识';
comment on column SYS_ORG_USER.created_by
  is '创建人';
comment on column SYS_ORG_USER.creation_time
  is '创建时间';
comment on column SYS_ORG_USER.modified_by
  is '修改人';
comment on column SYS_ORG_USER.modification_time
  is '修改时间';
comment on column SYS_ORG_USER.ext1
  is '备注1';
comment on column SYS_ORG_USER.ext2
  is '备注2';
comment on column SYS_ORG_USER.ext3
  is '备注3';
alter table SYS_ORG_USER
  add constraint PK_SYS_ORG_USER primary key (USER_ID);

prompt Creating SYS_SEC_PERMISSION...
create table SYS_SEC_PERMISSION
(
  permission_id     VARCHAR2(32) not null,
  permission_name   VARCHAR2(64),
  permission_sign   VARCHAR2(128),
  permission_type   VARCHAR2(32),
  remark            VARCHAR2(480),
  active_flag       VARCHAR2(32),
  created_by        VARCHAR2(32),
  creation_time     TIMESTAMP(6),
  modified_by       VARCHAR2(32),
  modification_time TIMESTAMP(6),
  ext1              VARCHAR2(480),
  ext2              VARCHAR2(480),
  ext3              VARCHAR2(480)
)
;
comment on table SYS_SEC_PERMISSION
  is '权限表';
comment on column SYS_SEC_PERMISSION.permission_id
  is '权限ID';
comment on column SYS_SEC_PERMISSION.permission_name
  is '权限名称';
comment on column SYS_SEC_PERMISSION.permission_sign
  is '权限标识';
comment on column SYS_SEC_PERMISSION.permission_type
  is '分类';
comment on column SYS_SEC_PERMISSION.remark
  is '备注';
comment on column SYS_SEC_PERMISSION.active_flag
  is '使用标识';
comment on column SYS_SEC_PERMISSION.created_by
  is '创建人';
comment on column SYS_SEC_PERMISSION.creation_time
  is '创建时间';
comment on column SYS_SEC_PERMISSION.modified_by
  is '修改人';
comment on column SYS_SEC_PERMISSION.modification_time
  is '修改时间';
comment on column SYS_SEC_PERMISSION.ext1
  is '备注1';
comment on column SYS_SEC_PERMISSION.ext2
  is '备注2';
comment on column SYS_SEC_PERMISSION.ext3
  is '备注3';
alter table SYS_SEC_PERMISSION
  add constraint PK_SYS_SEC_PERMISSION primary key (PERMISSION_ID);

prompt Creating SYS_SEC_RESOURCE_AUTHORITY...
create table SYS_SEC_RESOURCE_AUTHORITY
(
  authority_id      VARCHAR2(32) not null,
  role_id           VARCHAR2(32),
  resource_id       VARCHAR2(32),
  resource_type     VARCHAR2(32),
  authority_type    VARCHAR2(32),
  constraint        VARCHAR2(32),
  description       VARCHAR2(255),
  remark            VARCHAR2(480),
  active_flag       VARCHAR2(32),
  created_by        VARCHAR2(32),
  creation_time     TIMESTAMP(6),
  modified_by       VARCHAR2(32),
  modification_time TIMESTAMP(6),
  ext1              VARCHAR2(480),
  ext2              VARCHAR2(480),
  ext3              VARCHAR2(480)
)
;
comment on table SYS_SEC_RESOURCE_AUTHORITY
  is '授权关系表';
comment on column SYS_SEC_RESOURCE_AUTHORITY.authority_id
  is '授权ID';
comment on column SYS_SEC_RESOURCE_AUTHORITY.role_id
  is '角色ID';
comment on column SYS_SEC_RESOURCE_AUTHORITY.resource_id
  is '资源ID';
comment on column SYS_SEC_RESOURCE_AUTHORITY.resource_type
  is '资源类型';
comment on column SYS_SEC_RESOURCE_AUTHORITY.authority_type
  is '授权类型';
comment on column SYS_SEC_RESOURCE_AUTHORITY.constraint
  is '维度约束';
comment on column SYS_SEC_RESOURCE_AUTHORITY.description
  is '描述信息';
comment on column SYS_SEC_RESOURCE_AUTHORITY.remark
  is '备注';
comment on column SYS_SEC_RESOURCE_AUTHORITY.active_flag
  is '使用标识';
comment on column SYS_SEC_RESOURCE_AUTHORITY.created_by
  is '创建人';
comment on column SYS_SEC_RESOURCE_AUTHORITY.creation_time
  is '创建时间';
comment on column SYS_SEC_RESOURCE_AUTHORITY.modified_by
  is '修改人';
comment on column SYS_SEC_RESOURCE_AUTHORITY.modification_time
  is '修改时间';
comment on column SYS_SEC_RESOURCE_AUTHORITY.ext1
  is '备注1';
comment on column SYS_SEC_RESOURCE_AUTHORITY.ext2
  is '备注2';
comment on column SYS_SEC_RESOURCE_AUTHORITY.ext3
  is '备注3';
alter table SYS_SEC_RESOURCE_AUTHORITY
  add constraint PK_SYS_SEC_RESOURCE_AUTHORITY primary key (AUTHORITY_ID);

prompt Creating SYS_SEC_ROLE...
create table SYS_SEC_ROLE
(
  role_id           VARCHAR2(32) not null,
  role_name         VARCHAR2(32),
  role_type         VARCHAR2(32),
  parent_role_id    VARCHAR2(32),
  role_path         VARCHAR2(320),
  role_level        VARCHAR2(8),
  time_begin        VARCHAR2(32),
  time_end          VARCHAR2(32),
  remark            VARCHAR2(480),
  active_flag       VARCHAR2(32),
  created_by        VARCHAR2(32),
  creation_time     TIMESTAMP(6),
  modified_by       VARCHAR2(32),
  modification_time TIMESTAMP(6),
  ext1              VARCHAR2(480),
  ext2              VARCHAR2(480),
  ext3              VARCHAR2(480)
)
;
comment on table SYS_SEC_ROLE
  is '角色表';
comment on column SYS_SEC_ROLE.role_id
  is '角色ID';
comment on column SYS_SEC_ROLE.role_name
  is '角色名称';
comment on column SYS_SEC_ROLE.role_type
  is '角色类型';
comment on column SYS_SEC_ROLE.parent_role_id
  is '上级角色ID';
comment on column SYS_SEC_ROLE.role_path
  is '上级路径';
comment on column SYS_SEC_ROLE.role_level
  is '层级';
comment on column SYS_SEC_ROLE.time_begin
  is '生效时间';
comment on column SYS_SEC_ROLE.time_end
  is '失效时间';
comment on column SYS_SEC_ROLE.remark
  is '备注';
comment on column SYS_SEC_ROLE.active_flag
  is '使用标识';
comment on column SYS_SEC_ROLE.created_by
  is '创建人';
comment on column SYS_SEC_ROLE.creation_time
  is '创建时间';
comment on column SYS_SEC_ROLE.modified_by
  is '修改人';
comment on column SYS_SEC_ROLE.modification_time
  is '修改时间';
comment on column SYS_SEC_ROLE.ext1
  is '备注1';
comment on column SYS_SEC_ROLE.ext2
  is '备注2';
comment on column SYS_SEC_ROLE.ext3
  is '备注3';
alter table SYS_SEC_ROLE
  add constraint PK_SYS_SEC_ROLE primary key (ROLE_ID);

prompt Creating SYS_SEC_USER_ROLE...
create table SYS_SEC_USER_ROLE
(
  role_user_id      VARCHAR2(32) not null,
  user_id           VARCHAR2(32),
  role_id           VARCHAR2(32),
  remark            VARCHAR2(480),
  active_flag       VARCHAR2(32),
  created_by        VARCHAR2(32),
  creation_time     TIMESTAMP(6),
  modified_by       VARCHAR2(32),
  modification_time TIMESTAMP(6),
  ext1              VARCHAR2(480),
  ext2              VARCHAR2(480),
  ext3              VARCHAR2(480)
)
;
comment on table SYS_SEC_USER_ROLE
  is '用户与角色关系表';
comment on column SYS_SEC_USER_ROLE.role_user_id
  is '关系ID';
comment on column SYS_SEC_USER_ROLE.user_id
  is '用户ID';
comment on column SYS_SEC_USER_ROLE.role_id
  is '角色ID';
comment on column SYS_SEC_USER_ROLE.remark
  is '备注';
comment on column SYS_SEC_USER_ROLE.active_flag
  is '使用标识';
comment on column SYS_SEC_USER_ROLE.created_by
  is '创建人';
comment on column SYS_SEC_USER_ROLE.creation_time
  is '创建时间';
comment on column SYS_SEC_USER_ROLE.modified_by
  is '修改人';
comment on column SYS_SEC_USER_ROLE.modification_time
  is '修改时间';
comment on column SYS_SEC_USER_ROLE.ext1
  is '备注1';
comment on column SYS_SEC_USER_ROLE.ext2
  is '备注2';
comment on column SYS_SEC_USER_ROLE.ext3
  is '备注3';
alter table SYS_SEC_USER_ROLE
  add constraint PK_SYS_SEC_USER_ROLE primary key (ROLE_USER_ID);

prompt Disabling triggers for SAMS_STUDENT...
alter table SAMS_STUDENT disable all triggers;
prompt Disabling triggers for SAMS_TEACHER...
alter table SAMS_TEACHER disable all triggers;
prompt Disabling triggers for SYS_CODELIST...
alter table SYS_CODELIST disable all triggers;
prompt Disabling triggers for SYS_MENU...
alter table SYS_MENU disable all triggers;
prompt Disabling triggers for SYS_ORG_DIMENSION...
alter table SYS_ORG_DIMENSION disable all triggers;
prompt Disabling triggers for SYS_ORG_DIMENSION_UNIT...
alter table SYS_ORG_DIMENSION_UNIT disable all triggers;
prompt Disabling triggers for SYS_ORG_UNIT...
alter table SYS_ORG_UNIT disable all triggers;
prompt Disabling triggers for SYS_ORG_UNIT_USER...
alter table SYS_ORG_UNIT_USER disable all triggers;
prompt Disabling triggers for SYS_ORG_USER...
alter table SYS_ORG_USER disable all triggers;
prompt Disabling triggers for SYS_SEC_PERMISSION...
alter table SYS_SEC_PERMISSION disable all triggers;
prompt Disabling triggers for SYS_SEC_RESOURCE_AUTHORITY...
alter table SYS_SEC_RESOURCE_AUTHORITY disable all triggers;
prompt Disabling triggers for SYS_SEC_ROLE...
alter table SYS_SEC_ROLE disable all triggers;
prompt Disabling triggers for SYS_SEC_USER_ROLE...
alter table SYS_SEC_USER_ROLE disable all triggers;
prompt Loading SAMS_STUDENT...
insert into SAMS_STUDENT (student_id, student_no, student_name, sex, birth_date, start_time, finish_time, remark, active_flag, created_by, creation_time, modified_by, modification_time, ext1, ext2, ext3)
values ('1', '01', '李一鸣', '男', '1983-02-06', '2017-10-25', '2999-12-31', '26', '1', 'admin', null, null, to_timestamp('28-11-2017 10:23:33.916000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null);
insert into SAMS_STUDENT (student_id, student_no, student_name, sex, birth_date, start_time, finish_time, remark, active_flag, created_by, creation_time, modified_by, modification_time, ext1, ext2, ext3)
values ('2', '02', '沈璐', '女', '1983-10-25', '2017-10-25', '2999-12-31', '36', '1', 'admin', null, null, to_timestamp('27-11-2017 16:53:50.784000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null);
insert into SAMS_STUDENT (student_id, student_no, student_name, sex, birth_date, start_time, finish_time, remark, active_flag, created_by, creation_time, modified_by, modification_time, ext1, ext2, ext3)
values ('4b66d4bf3b9c4656897ab382e64bcdd6', '03', '王明', '男', '2017-11-27', '2017-11-27', null, '222', '1', null, to_timestamp('27-11-2017 16:38:47.499000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, to_timestamp('27-11-2017 16:53:35.833000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null);
insert into SAMS_STUDENT (student_id, student_no, student_name, sex, birth_date, start_time, finish_time, remark, active_flag, created_by, creation_time, modified_by, modification_time, ext1, ext2, ext3)
values ('f18732328d9f4912b1e40e3082843848', '08', '徐建兴', '男', '2017-11-23', '2017-11-23', null, '111', '1', null, to_timestamp('27-11-2017 16:54:16.918000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null);
insert into SAMS_STUDENT (student_id, student_no, student_name, sex, birth_date, start_time, finish_time, remark, active_flag, created_by, creation_time, modified_by, modification_time, ext1, ext2, ext3)
values ('f3c181f488a345b4a717734d02c0388c', '05', '刘再冬', '男', '2017-11-15', '2017-11-27', null, '333', '1', null, to_timestamp('27-11-2017 16:40:17.924000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, to_timestamp('01-12-2017 19:49:12.594000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null);
insert into SAMS_STUDENT (student_id, student_no, student_name, sex, birth_date, start_time, finish_time, remark, active_flag, created_by, creation_time, modified_by, modification_time, ext1, ext2, ext3)
values ('cc05168ecfda46419428ac60f30c9966', '12', '马章元', '男', '2017-12-08', '2017-12-08', null, '123', '1', null, to_timestamp('08-12-2017 18:18:15.793000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, to_timestamp('16-12-2017 14:14:05.133000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null);
commit;
prompt 6 records loaded
prompt Loading SAMS_TEACHER...
prompt Table is empty
prompt Loading SYS_CODELIST...
insert into SYS_CODELIST (code_id, code_value, code_value_name, code_type, code_type_name, code_parent, code_order, filter, language, remark, active_flag, created_by, creation_time, modified_by, modification_time, ext1, ext2, ext3)
values ('SF_1', '1', '是', 'SF', '是否', '-1', null, null, 'zh_CN', null, '1', 'admin', to_timestamp('15-11-2017 00:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null);
insert into SYS_CODELIST (code_id, code_value, code_value_name, code_type, code_type_name, code_parent, code_order, filter, language, remark, active_flag, created_by, creation_time, modified_by, modification_time, ext1, ext2, ext3)
values ('SF_2', '2', '否', 'SF', '是否', '-1', null, null, 'zh_CN', null, '1', 'admin', to_timestamp('15-11-2017 00:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null);
commit;
prompt 2 records loaded
prompt Loading SYS_MENU...
insert into SYS_MENU (menu_id, title, target, href, icon, spread, menu_order, show_default, parent_menu_id, app_id, remark, active_flag, created_by, creation_time, modified_by, modification_time, ext1, ext2, ext3)
values ('1', '后台首页', null, 'rest/page/dashboard', 'icon-computer', null, null, null, null, null, null, '1', null, null, null, null, null, null, null);
insert into SYS_MENU (menu_id, title, target, href, icon, spread, menu_order, show_default, parent_menu_id, app_id, remark, active_flag, created_by, creation_time, modified_by, modification_time, ext1, ext2, ext3)
values ('2', '文章列表', null, 'rest/page/news', 'icon-text', null, null, null, null, null, null, '1', null, null, null, null, null, null, null);
insert into SYS_MENU (menu_id, title, target, href, icon, spread, menu_order, show_default, parent_menu_id, app_id, remark, active_flag, created_by, creation_time, modified_by, modification_time, ext1, ext2, ext3)
values ('3', '友情链接', null, 'rest/page/links', '&#xe64c;', null, null, null, null, null, null, '1', null, null, null, null, null, null, null);
insert into SYS_MENU (menu_id, title, target, href, icon, spread, menu_order, show_default, parent_menu_id, app_id, remark, active_flag, created_by, creation_time, modified_by, modification_time, ext1, ext2, ext3)
values ('4', '系统基本参数', null, 'rest/page/sysparam', '&#xe631;', null, null, null, null, null, null, '1', null, null, null, null, null, null, null);
insert into SYS_MENU (menu_id, title, target, href, icon, spread, menu_order, show_default, parent_menu_id, app_id, remark, active_flag, created_by, creation_time, modified_by, modification_time, ext1, ext2, ext3)
values ('5', '其他页面', null, null, '&#xe630;', null, null, null, null, null, null, '1', null, null, null, null, null, null, null);
insert into SYS_MENU (menu_id, title, target, href, icon, spread, menu_order, show_default, parent_menu_id, app_id, remark, active_flag, created_by, creation_time, modified_by, modification_time, ext1, ext2, ext3)
values ('6', '404页面', null, 'rest/page/404', '&#xe61c;', null, null, null, '5', null, null, '1', null, null, null, null, null, null, null);
insert into SYS_MENU (menu_id, title, target, href, icon, spread, menu_order, show_default, parent_menu_id, app_id, remark, active_flag, created_by, creation_time, modified_by, modification_time, ext1, ext2, ext3)
values ('7', '登录', '_blank', 'rest/page/login', '&#xe609;', null, null, null, '5', null, null, '1', null, null, null, null, null, null, null);
commit;
prompt 7 records loaded
prompt Loading SYS_ORG_DIMENSION...
prompt Table is empty
prompt Loading SYS_ORG_DIMENSION_UNIT...
prompt Table is empty
prompt Loading SYS_ORG_UNIT...
prompt Table is empty
prompt Loading SYS_ORG_UNIT_USER...
prompt Table is empty
prompt Loading SYS_ORG_USER...
insert into SYS_ORG_USER (user_id, account, password, fullname, user_type, pwd_changed_time, is_locked, locked_reason, user_head, sex, birthdate, mobile_telephone, email, credentials_type, credentials_number, home_address, remark, active_flag, created_by, creation_time, modified_by, modification_time, ext1, ext2, ext3)
values ('admin', 'admin', '1', '系统管理员', 'sys', null, 'F', null, null, null, null, null, null, null, null, null, null, '1', 'admin', null, null, null, null, null, null);
commit;
prompt 1 records loaded
prompt Loading SYS_SEC_PERMISSION...
prompt Table is empty
prompt Loading SYS_SEC_RESOURCE_AUTHORITY...
prompt Table is empty
prompt Loading SYS_SEC_ROLE...
prompt Table is empty
prompt Loading SYS_SEC_USER_ROLE...
prompt Table is empty
prompt Enabling triggers for SAMS_STUDENT...
alter table SAMS_STUDENT enable all triggers;
prompt Enabling triggers for SAMS_TEACHER...
alter table SAMS_TEACHER enable all triggers;
prompt Enabling triggers for SYS_CODELIST...
alter table SYS_CODELIST enable all triggers;
prompt Enabling triggers for SYS_MENU...
alter table SYS_MENU enable all triggers;
prompt Enabling triggers for SYS_ORG_DIMENSION...
alter table SYS_ORG_DIMENSION enable all triggers;
prompt Enabling triggers for SYS_ORG_DIMENSION_UNIT...
alter table SYS_ORG_DIMENSION_UNIT enable all triggers;
prompt Enabling triggers for SYS_ORG_UNIT...
alter table SYS_ORG_UNIT enable all triggers;
prompt Enabling triggers for SYS_ORG_UNIT_USER...
alter table SYS_ORG_UNIT_USER enable all triggers;
prompt Enabling triggers for SYS_ORG_USER...
alter table SYS_ORG_USER enable all triggers;
prompt Enabling triggers for SYS_SEC_PERMISSION...
alter table SYS_SEC_PERMISSION enable all triggers;
prompt Enabling triggers for SYS_SEC_RESOURCE_AUTHORITY...
alter table SYS_SEC_RESOURCE_AUTHORITY enable all triggers;
prompt Enabling triggers for SYS_SEC_ROLE...
alter table SYS_SEC_ROLE enable all triggers;
prompt Enabling triggers for SYS_SEC_USER_ROLE...
alter table SYS_SEC_USER_ROLE enable all triggers;
set feedback on
set define on
prompt Done.