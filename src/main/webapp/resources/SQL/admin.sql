create table admin(
    admin_no number(38),
    admin_id varchar2(50) primary key, 
    admin_pwd varchar2(400) not null,
    admin_name varchar2(100) not null, 
    admin_date date
);
create sequence admin_seq
start with 1
increment by 1
nocache;

select admin_seq.nextval from dual;

select * from admin
commit;

update users_auth set auth = 'ROLE_ADMIN' where user_id = 'jhjhj';