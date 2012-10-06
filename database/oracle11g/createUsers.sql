create user PT_SYS identified by sys default tablespace "PTS_SYS";
start grantPriviliges.sql PT_SYS;

create user PT_CMS identified by sys default tablespace "PTS_CMS";
start grantPriviliges.sql PT_CMS;
