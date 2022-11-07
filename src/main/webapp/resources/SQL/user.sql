create table users(
    user_no number(38),
    user_id varchar2(50) primary key,
    user_pwd varchar2(50) not null,
    user_name varchar2(50) not null,
    user_gender number(10) not null,
    user_nickname varchar2(50) not null,
    user_date date,
    user_state int default 1,
    user_delcont varchar2(4000),
    user_deldate date
);

ALTER TABLE users MODIFY(user_pwd VARCHAR2(200));
commit;

ALTER TABLE users DROP COLUMN user_phone1;
ALTER TABLE users DROP COLUMN user_phone2;
ALTER TABLE users DROP COLUMN user_phone3;
ALTER TABLE users DROP COLUMN email_id;
ALTER TABLE users DROP COLUMN email_domain;


select * from users;

delete from users where user_no = 9;
select users from 'zxzxzx' where user_id = 'USERS_AUTH_USERID_FK'
select * from tabs
select * from users_auth
delete from users

create sequence users_seq
start with 1
increment by 1
nocache;

select users_seq.nextval from dual;

create table users_auth(-- 권한 �??�� ?��?���?
user_id varchar2(50) not null -- ?��?��?��
, auth varchar2(50) not null -- 권한�??��
, constraint users_auth_userid_fk foreign key(user_id) references users(user_id) 
-- ?��?��?���? ?��?��?��?��?�� tbl_member userid 컬럼 ?��코드 ?��?��?��값만 ???��?��.
);
insert into users(user_no,user_id,user_pwd,user_name,user_gender,user_nickname,user_date,user_state)
values(users_seq.nextval,'user12','user00','?��길동',1,'?��길동',sysdate,1);


insert into users_auth(user_id,auth) values('user00','ROLE_ADMIN');



commit;
select mem.user_id,user_no,user_pwd,user_name,user_gender,user_nickname,user_date, auth from users mem LEFT OUTER JOIN 
	users_auth on mem.user_id = users_auth.user_id;
update users_auth set auth = 'ROLE_ADMIN' where user_id = 'zxzxzx';

    
select mem.user_id,user_no, user_pwd,user_name,user_gender,user_nickname,user_date, auth FROM users mem LEFT OUTER JOIN users_auth auth on mem.user_id = auth.user_id; 

create table persistent_logins(
    username varchar2(64) not null -- ?��?��?��?��?��
    ,series varchar2(64) primary key -- ?��?��비�?번호
    ,token varchar2(64) not null -- ?��?�� ?���?
    ,last_used timestamp not null -- 로그?�� ?�� ?���? ?���?
);

ALTER TABLE users DROP COLUMN user_state;
ALTER TABLE users DROP COLUMN user_delcont;
ALTER TABLE users DROP COLUMN user_deldate;
commit;

