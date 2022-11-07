create table persistent_logins(
    username varchar2(64) not null -- ?šŒ?›?•„?´?””
    ,series varchar2(64) primary key -- ?šŒ?›ë¹„ë?ë²ˆí˜¸
    ,token varchar2(64) not null -- ?† ?° ? •ë³?
    ,last_used timestamp not null -- ë¡œê·¸?¸ ?•œ ?‚ ì§? ?‹œê°?
);

select * from persistent_logins