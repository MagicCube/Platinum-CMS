CREATE TABLESPACE "PTS_SYS"
    LOGGING
    DATAFILE '&1/PTS_SYS.ora' SIZE 100M
    AUTOEXTEND
    ON NEXT  50M MAXSIZE UNLIMITED EXTENT MANAGEMENT LOCAL
    SEGMENT SPACE MANAGEMENT  AUTO;

CREATE TABLESPACE "PTS_CMS"
    LOGGING
    DATAFILE '&1/PTS_CMS.ora' SIZE 2000M
    AUTOEXTEND
    ON NEXT  250M MAXSIZE UNLIMITED EXTENT MANAGEMENT LOCAL
    SEGMENT SPACE MANAGEMENT  AUTO;
