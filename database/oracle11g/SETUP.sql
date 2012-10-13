accept DB_NAME prompt '数据库实例名称:' default 'PTDB';
accept DBS_PATH prompt '数据库表空间物理路径:' default '你的oradata/PTDB';
start createTablespaces.sql &DBS_PATH;
start createUsers.sql;
connect PT_SYS/sys@&DB_NAME;
start createTables.sql;
start initData.sql;
commit;