create table persistent_logins(
    username varchar2(64) not null -- ????΄?
    ,series varchar2(64) primary key -- ??λΉλ?λ²νΈ
    ,token varchar2(64) not null -- ? ?° ? λ³?
    ,last_used timestamp not null -- λ‘κ·Έ?Έ ? ? μ§? ?κ°?
);

select * from persistent_logins