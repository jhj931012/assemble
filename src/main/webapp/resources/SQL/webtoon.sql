create table webtoon(
    webtoon_no number(38),
    webtoon_title varchar2(50) primary key,
    webtoon_writer varchar2(50) not null,
    webtoon_cont varchar2(4000) not null,
    webtoon_platform varchar2(50) not null,
    webtoon_complete int not null,
    webtoon_tag1 varchar2(50) not null,
    webtoon_tag2 varchar2(50),
    webtoon_thumbnail varchar2(100) not null,
    webtoon_image1 varchar2(100),
    webtoon_image2 varchar2(100),
    webtoon_image3 varchar2(100)
);
alter table webtoon add webtoon_age varchar2(20);

alter table webtoon drop column webtoon_age;

	select * from webtoon where webtoon_tag1 = 'ë¡œë§¨?Š¤';
select * from webtoon;
delete from webtoon;
create SEQUENCE webtoon_seq
start with 1
increment by 1
nocache;
commit;
select * from webtoon;
commit;
	select WEBTOON_THUMBNAIL from (select * from WEBTOON where WEBTOON_TAG1 = 'ë¡œë§¨?Š¤' ) where ROWNUM <= 5;

	select WEBTOON_THUMBNAIL from (select * from WEBTOON where WEBTOON_TAG1 = 'ë¡œë§¨?Š¤' ) where ROWNUM BETWEEN 1 and 5;
    select WEBTOON_THUMBNAIL from (select rownum as rn, webtoon_thumbnail from webtoon where webtoon_tag1 = 'ë¡œë§¨?Š¤' ) where rn BETWEEN 6 and 10;
    
SELECT ROWNUM FROM webtoon;

commit;


select * from webtoon where webtoon_tag1 = '?Š¤ë¦´ëŸ¬' or webtoon_tag2 = '?Š¤ë¦´ëŸ¬';


select * from webtoon where webtoon_tag1 = '?•¡?…˜' or webtoon_tag2 = '?•¡?…˜' ;

select WEBTOON_THUMBNAIL from (select rownum as rn, webtoon_thumbnail from webtoon where webtoon_tag1 = '?Š¤ë¦´ëŸ¬' ) where rn BETWEEN 1 and 6;

select * from webtoon where webtoon_tag1 = '?Š¤ë¦´ëŸ¬' or webtoon_tag2 = '?Š¤ë¦´ëŸ¬' ;


select * from webtoon w inner join (select * from webtoon where webtoon_thumbnail = '½ÅÀÇ Å¾.jpg') w2 on w.webtoon_tag1 = w2.webtoon_tag1 
where  is null


select * from (select * from webtoon w, (select webtoon_thumbnail from webtoon where webtoon_thumbnail = '½ÅÀÇ Å¾.jpg') w2 where w.webtoon_tag1 = w2.webtoon_tag1) where rownum between 2 and 4

select * from (select rownum as rn, w.webtoon_title, w.webtoon_thumbnail, w.webtoon_tag1 from webtoon w inner join (select webtoon_thumbnail, webtoon_tag1 from webtoon where webtoon_thumbnail = '¾Æ»ç.jpg') w2 
on w.webtoon_tag1 = w2.webtoon_tag1 where not w.webtoon_thumbnail = '¾Æ»ç.jpg') where rn between 1 and 5

select rownum as rn, w.webtoon_title, w.webtoon_thumbnail, w.webtoon_tag1 from webtoon w inner join (select webtoon_thumbnail, webtoon_tag1 from webtoon where webtoon_thumbnail = '¾Æ»ç.jpg') w2 
on w.webtoon_tag1 = w2.webtoon_tag1 where not w.webtoon_thumbnail = '¾Æ»ç.jpg'



