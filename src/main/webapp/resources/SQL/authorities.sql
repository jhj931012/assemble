create table persistent_logins(
    username varchar2(64) not null -- ?��?��?��?��?��
    ,series varchar2(64) primary key -- ?��?��비�?번호
    ,token varchar2(64) not null -- ?��?�� ?���?
    ,last_used timestamp not null -- 로그?�� ?�� ?���? ?���?
);

select * from persistent_logins