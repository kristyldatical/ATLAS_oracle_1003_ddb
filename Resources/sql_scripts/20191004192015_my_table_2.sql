SET ECHO ON
WHENEVER SQLERROR EXIT SQL.SQLCODE
spool '20191004192015_my_table_2.log'

set define off

SET SQLBLANKLINES ON

SET ERRORLOGGING ON 

SET ERRORLOGGING ON IDENTIFIER 'e324ad90-42ad-449a-937d-b69fa6d5aea4'
set linesize 1000;
SELECT sys_context('userenv','server_host') as DATICAL_TRACEFILE_HOSTNAME from dual;
alter session set timed_statistics = true;
alter session set tracefile_identifier =  '20191004192017329';
alter session set max_dump_file_size = unlimited;
alter session set events '10046 trace name context forever, level 1';
SELECT value as DATICAL_TRACE_FILE FROM v$diag_info WHERE name = 'Default Trace File';
exec DBMS_APPLICATION_INFO.SET_CLIENT_INFO ('Datical Client');
ALTER SESSION SET CURRENT_SCHEMA = intuser;
ALTER SESSION SET CURSOR_SHARING = EXACT;
create table ATLAS_SCHEMA_A.my_table_2(id int);
alter session set events '10046 trace name context off';

set define on

spool off

exit
