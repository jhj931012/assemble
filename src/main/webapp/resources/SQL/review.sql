create table review(
   review_no number(38) primary key, -- review ??΄λΈ? pk
   review_cont varchar2(4000) not null, -- λ¦¬λ·° ?΄?©
   review_like number(38) default 0, -- λ¦¬λ·° μ’μ?
   review_regdate date, -- ?±λ‘? ? μ§?
   review_updatedate date, -- ??  ? μ§?
   review_id varchar2(50), -- user ??΄λΈ? fk
   review_thumbnail varchar2(50) -- webtoon ??΄λΈ? fk
);

create SEQUENCE review_seq
start with 1
increment by 1
nocache;

select review_seq.nextval from dual

alter table review drop column review_rating;

select * from review

select * from review r, webtoon w where r.review_thumbnail = '°Λ»‘·Ξ ·ΉΊ§Ύχ.jpg'

delete review


commit