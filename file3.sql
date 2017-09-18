-- Create table
create table FFTS.T_FFTS_PROD_RATE_IF
(
  uuid                   VARCHAR2(32) not null,
  prod_no                VARCHAR2(10),
  poundage_type          VARCHAR2(2),
  poundage_unit          VARCHAR2(2),
  automatic_poundage     NUMBER(20,4),
  create_time            TIMESTAMP(6),
  create_usr             VARCHAR2(32),
  update_time            TIMESTAMP(6),
  reduction_sts          VARCHAR2(2),
  automatic_poundage_max NUMBER(20,4),
  automatic_sts          VARCHAR2(2),
  prod_nm                VARCHAR2(100)
)
tablespace FFTS_DATA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table FFTS.T_FFTS_PROD_RATE_IF
  is '理财产品手续费信息';
-- Add comments to the columns 
comment on column FFTS.T_FFTS_PROD_RATE_IF.uuid
  is '主键';
comment on column FFTS.T_FFTS_PROD_RATE_IF.prod_no
  is '产品编号';
comment on column FFTS.T_FFTS_PROD_RATE_IF.poundage_type
  is '类型：00手动转入手续费，01自动转入手续费，02普通转出手续费，03自动转出手续费';
comment on column FFTS.T_FFTS_PROD_RATE_IF.poundage_unit
  is '单位，00每笔／01百分比';
comment on column FFTS.T_FFTS_PROD_RATE_IF.automatic_poundage
  is '手续费（百分比时默认为百分数）Scale(4);Precision(20)';
comment on column FFTS.T_FFTS_PROD_RATE_IF.create_time
  is '创建时间';
comment on column FFTS.T_FFTS_PROD_RATE_IF.create_usr
  is '创建用户';
comment on column FFTS.T_FFTS_PROD_RATE_IF.update_time
  is '更新时间';
comment on column FFTS.T_FFTS_PROD_RATE_IF.reduction_sts
  is '手续费是否减免00减免01不减免';
comment on column FFTS.T_FFTS_PROD_RATE_IF.automatic_poundage_max
  is '上限';
comment on column FFTS.T_FFTS_PROD_RATE_IF.automatic_sts
  is '状态:00 禁用 01 启用';
comment on column FFTS.T_FFTS_PROD_RATE_IF.prod_nm
  is '产品名称';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FFTS.T_FFTS_PROD_RATE_IF
  add constraint T_FFTS_PROD_RATE_IF primary key (UUID)
  using index 
  tablespace FFTS_DATA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
