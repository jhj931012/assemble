create table reply(
    board_reply_rno number(38) primary key,
    board_reply_cont varchar2(4000) not null,
    board_regdate date,
    board_reply_bno number(38)
);

alter table reply add constraint reply_board_reply_bno_fk foreign key(board_reply_bno) references board(board_no);

select * from reply;