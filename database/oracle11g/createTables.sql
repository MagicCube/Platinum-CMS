/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2012/10/5 16:26:48                           */
/*==============================================================*/


drop table PT_CMS.PTT_CATEGORY cascade constraints;

drop index PT_CMS.PTT_USER_GROUP_2_CATEGORY2_FK;

drop index PT_CMS.PTT_USER_GROUP_2_CATEGORY_FK;

drop table PT_CMS.PTT_CATEGORY_2_USER_GROUP cascade constraints;

drop index "Relationship_7_FK";

drop index PT_CMS.FK_CATEGORY_2_POST_FK;

drop table PT_CMS.PTT_POST cascade constraints;

drop table PT_CMS.PTT_POST_CONTENT cascade constraints;

drop table PT_CMS.PTT_POST_VIEWS cascade constraints;

drop index PT_CMS.FK_CATEGORY_2_SUBCATEGORY_FK;

drop table PT_CMS.PTT_SUBCATEGORY cascade constraints;

drop table PT_SYS.PTT_USER cascade constraints;

drop table PT_SYS.PTT_USER_GROUP cascade constraints;

drop index PT_SYS.PTT_USER_GROUP_2_USER2_FK;

drop index PT_SYS.PTT_USER_GROUP_2_USER_FK;

drop table PT_SYS.PTT_USER_GROUP_2_USER cascade constraints;

/*==============================================================*/
/* Table: PTT_CATEGORY                                          */
/*==============================================================*/
create table PT_CMS.PTT_CATEGORY 
(
   ID                   NVARCHAR2(32)        not null,
   CATEGORY_NAME        NVARCHAR2(32)        not null,
   POST_TYPE            SMALLINT             default 1 not null,
   CREATE_TIME          TIMESTAMP            default sysdate not null,
   UPDATE_TIME          TIMESTAMP            default sysdate not null,
   constraint PK_PTT_CATEGORY primary key (ID)
);

/*==============================================================*/
/* Table: PTT_CATEGORY_2_USER_GROUP                             */
/*==============================================================*/
create table PT_CMS.PTT_CATEGORY_2_USER_GROUP 
(
   USER_GROUP_ID        CHAR(32)             not null,
   CATEGORY_ID          NVARCHAR2(32)        not null,
   constraint PK_PTT_CATEGORY_2_USER_GROUP primary key (USER_GROUP_ID, CATEGORY_ID)
);

/*==============================================================*/
/* Index: PTT_USER_GROUP_2_CATEGORY_FK                          */
/*==============================================================*/
create index PT_CMS.PTT_USER_GROUP_2_CATEGORY_FK on PT_CMS.PTT_CATEGORY_2_USER_GROUP (
   USER_GROUP_ID ASC
);

/*==============================================================*/
/* Index: PTT_USER_GROUP_2_CATEGORY2_FK                         */
/*==============================================================*/
create index PT_CMS.PTT_USER_GROUP_2_CATEGORY2_FK on PT_CMS.PTT_CATEGORY_2_USER_GROUP (
   CATEGORY_ID ASC
);

/*==============================================================*/
/* Table: PTT_POST                                              */
/*==============================================================*/
create table PT_CMS.PTT_POST 
(
   ID                   CHAR(32)             not null,
   SUBCATEGORY_ID       CHAR(32),
   CATEGORY_ID          NVARCHAR2(32),
   POST_CONTENT_ID      CHAR(32)             not null,
   POST_VIEWS_ID        CHAR(32)             not null,
   TITLE                NVARCHAR2(128)       not null,
   POST_TYPE            SMALLINT             default 1 not null,
   POST_STATUS          SMALLINT             default 0 not null,
   SUMMARY              NVARCHAR2(256),
   PUBLISHER            NVARCHAR2(32)        not null,
   AUTHOR               NVARCHAR2(32),
   SOURCE               NVARCHAR2(32),
   SOURCE_URL           NVARCHAR2(256),
   PHOTO_URL            NVARCHAR2(256),
   SHOWN_IN_FRONT_PAGE  SMALLINT             default 0,
   CREATE_TIME          TIMESTAMP            default sysdate not null,
   UPDATE_TIME          TIMESTAMP            default sysdate not null,
   constraint PK_PTT_POST primary key (ID)
);

/*==============================================================*/
/* Index: FK_CATEGORY_2_POST_FK                                 */
/*==============================================================*/
create index PT_CMS.FK_CATEGORY_2_POST_FK on PT_CMS.PTT_POST (
   CATEGORY_ID ASC
);

/*==============================================================*/
/* Index: "Relationship_7_FK"                                   */
/*==============================================================*/
create index "Relationship_7_FK" on PT_CMS.PTT_POST (
   SUBCATEGORY_ID ASC
);

/*==============================================================*/
/* Table: PTT_POST_CONTENT                                      */
/*==============================================================*/
create table PT_CMS.PTT_POST_CONTENT 
(
   ID                   CHAR(32)             not null,
   TEXT                 NCLOB,
   constraint PK_PTT_POST_CONTENT primary key (ID)
);

/*==============================================================*/
/* Table: PTT_POST_VIEWS                                        */
/*==============================================================*/
create table PT_CMS.PTT_POST_VIEWS 
(
   ID                   CHAR(32)             not null,
   COUNT                INTEGER              default 0 not null,
   constraint PK_PTT_POST_VIEWS primary key (ID)
);

/*==============================================================*/
/* Table: PTT_SUBCATEGORY                                       */
/*==============================================================*/
create table PT_CMS.PTT_SUBCATEGORY 
(
   ID                   CHAR(32)             not null,
   CATEGORY_ID          NVARCHAR2(32),
   SUBCATEGORY_NAME     NVARCHAR2(32)        not null,
   CREATE_TIME          TIMESTAMP            default sysdate not null,
   UPDATE_TIME          TIMESTAMP            default sysdate not null,
   constraint PK_PTT_SUBCATEGORY primary key (ID)
);

/*==============================================================*/
/* Index: FK_CATEGORY_2_SUBCATEGORY_FK                          */
/*==============================================================*/
create index PT_CMS.FK_CATEGORY_2_SUBCATEGORY_FK on PT_CMS.PTT_SUBCATEGORY (
   CATEGORY_ID ASC
);

/*==============================================================*/
/* Table: PTT_USER                                              */
/*==============================================================*/
create table PT_SYS.PTT_USER 
(
   ID                   CHAR(32)             not null,
   USER_NAME            NVARCHAR2(32)        not null,
   USER_ROLE            NVARCHAR2(32)        not null,
   LOGIN_NAME           NVARCHAR2(32)        not null,
   LOGIN_PASS           NVARCHAR2(32)        not null,
   CREATE_TIME          TIMESTAMP            default sysdate not null,
   UPDATE_TIME          TIMESTAMP            default sysdate not null,
   constraint PK_PTT_USER primary key (ID)
);

/*==============================================================*/
/* Table: PTT_USER_GROUP                                        */
/*==============================================================*/
create table PT_SYS.PTT_USER_GROUP 
(
   ID                   CHAR(32)             not null,
   USER_GROUP_NAME      NVARCHAR2(32)        not null,
   CREATE_TIME          TIMESTAMP            default sysdate not null,
   UPDATE_TIME          TIMESTAMP            default sysdate not null,
   constraint PK_PTT_USER_GROUP primary key (ID)
);

/*==============================================================*/
/* Table: PTT_USER_GROUP_2_USER                                 */
/*==============================================================*/
create table PT_SYS.PTT_USER_GROUP_2_USER 
(
   USER_GROUP_ID        CHAR(32)             not null,
   USER_ID              CHAR(32)             not null,
   constraint PK_PTT_USER_GROUP_2_USER primary key (USER_GROUP_ID, USER_ID)
);

/*==============================================================*/
/* Index: PTT_USER_GROUP_2_USER_FK                              */
/*==============================================================*/
create index PT_SYS.PTT_USER_GROUP_2_USER_FK on PT_SYS.PTT_USER_GROUP_2_USER (
   USER_GROUP_ID ASC
);

/*==============================================================*/
/* Index: PTT_USER_GROUP_2_USER2_FK                             */
/*==============================================================*/
create index PT_SYS.PTT_USER_GROUP_2_USER2_FK on PT_SYS.PTT_USER_GROUP_2_USER (
   USER_ID ASC
);

