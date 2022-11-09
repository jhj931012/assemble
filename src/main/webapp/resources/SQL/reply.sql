-- reply  테이블 생성
create table reply(
    board_reply_rno number(38) primary key, -- 댓글 번호
    board_reply_writer varchar2(50) not null, -- 댓글 작성자
    board_reply_cont varchar2(4000) not null, -- 댓글 내용
    board_regdate date, -- 댓글 작성일
    board_no number(38) -- board테이블의 게시판 번호값만 저장되게 주종관계 설정
);
alter table reply add board_reply_writer varchar(50) not null;


select * from users

-- board_no 컬럼 외래키 설정
alter table reply add constraint reply_board_no_fk
foreign key(board_no) references board(board_no);

-- rno_seq시퀀스 생성
create sequence rno_seq
start with 1
increment by 1
nocache;

-- rno_seq시퀀스 다음 번호값 확인
SELECT rno_seq.NEXTVAL
  FROM dual

-- reply 테이블 검색
select * from reply;

insert into reply(board_no, board_reply_rno, board_reply_writer,
board_reply_cont, board_regdate) values(24, rno_seq.nextval, 'admin', 'hi', sysdate);

select * from reply where board_no = 24 order by board_reply_rno desc

commit;
