Declare 
ncount number;
BEGIN
 select count(1) into ncount from all_users where username = 'WEBADMIN';
 if (ncount>0) THEN
  dbms_output.put_line('USER WEBADMIN ALREADY EXISTS');
 else EXECUTE IMMEDIATE 'create user webAdmin identified by GCQiRbpWBk1q';
   EXECUTE IMMEDIATE 'GRANT CONNECT,RESOURCE,SESSION to webAdmin';
   EXECUTE IMMEDIATE 'GRANT UNLIMITED TABLESPACE TO webAdmin';
   EXECUTE IMMEDIATE 'Grant create view, create sequence,create trigger, create procedure to webAdmin';
   EXECUTE IMMEDIATE 'GRANT CREATE user to webAdmin';
   EXECUTE IMMEDIATE 'GRANT DROP user to webAdmin';
   EXECUTE IMMEDIATE 'GRANT DROP role to webAdmin';
   EXECUTE IMMEDIATE 'GRANT CREATE role to WEBADMIN';
   EXECUTE IMMEDIATE 'GRANT CREATE SESSION,connect TO WEBADMIN WITH ADMIN OPTION';
   EXECUTE IMMEDIATE 'GRANT SELECT ON DBA_ROLES TO WEBADMIN';
   EXECUTE IMMEDIATE 'GRANT GRANT ANY OBJECT PRIVILEGE TO WEBADMIN';

   COMMIT;
   end if;
end;   
/