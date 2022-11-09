create table review(
   review_no number(38) primary key, -- review ?��?���? pk
   review_cont varchar2(4000) not null, -- 리뷰 ?��?��
   review_like number(38) default 0, -- 리뷰 좋아?��
   review_regdate date, -- ?���? ?���?
   review_updatedate date, -- ?��?�� ?���?
   review_id varchar2(50), -- user ?��?���? fk
   review_thumbnail varchar2(50) -- webtoon ?��?���? fk
);

create SEQUENCE review_seq
start with 1
increment by 1
nocache;

select review_seq.nextval from dual

alter table review drop column review_rating;

select * from review

select * from review r, webtoon w where r.review_thumbnail = '�˻��� ������.jpg'

delete review


commit