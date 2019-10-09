SET ECHO ON
WHENEVER SQLERROR EXIT SQL.SQLCODE
spool '20191009013301_my_table_7.log'

set define off

SET SQLBLANKLINES ON

SET ERRORLOGGING ON 

SET ERRORLOGGING ON IDENTIFIER 'd9d91e6f-0237-4a3e-9c96-5887ea5d827d'
set linesize 1000;
SELECT sys_context('userenv','server_host') as DATICAL_TRACEFILE_HOSTNAME from dual;
alter session set timed_statistics = true;
alter session set tracefile_identifier =  '20191009013310943';
alter session set max_dump_file_size = unlimited;
alter session set events '10046 trace name context forever, level 1';
SELECT value as DATICAL_TRACE_FILE FROM v$diag_info WHERE name = 'Default Trace File';
exec DBMS_APPLICATION_INFO.SET_CLIENT_INFO ('Datical Client');
ALTER SESSION SET CURRENT_SCHEMA = intuser;
ALTER SESSION SET CURSOR_SHARING = EXACT;
create table ATLAS_SCHEMA_A.my_table_7(id int);
alter session set events '10046 trace name context off';

set define on

spool off

exit
