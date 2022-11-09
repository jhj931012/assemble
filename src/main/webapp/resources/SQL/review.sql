create table review(
   review_no number(38) primary key, -- review ?…Œ?´ë¸? pk
   review_cont varchar2(4000) not null, -- ë¦¬ë·° ?‚´?š©
   review_like number(38) default 0, -- ë¦¬ë·° ì¢‹ì•„?š”
   review_regdate date, -- ?“±ë¡? ?‚ ì§?
   review_updatedate date, -- ?ˆ˜? • ?‚ ì§?
   review_id varchar2(50), -- user ?…Œ?´ë¸? fk
   review_thumbnail varchar2(50) -- webtoon ?…Œ?´ë¸? fk
);

create SEQUENCE review_seq
start with 1
increment by 1
nocache;

select review_seq.nextval from dual

alter table review drop column review_rating;

select * from review

select * from review r, webtoon w where r.review_thumbnail = '°Ë»¡·Î ·¹º§¾÷.jpg'

delete review


commit