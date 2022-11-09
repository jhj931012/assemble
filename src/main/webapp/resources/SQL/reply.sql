-- reply  ���̺� ����
create table reply(
    board_reply_rno number(38) primary key, -- ��� ��ȣ
    board_reply_writer varchar2(50) not null, -- ��� �ۼ���
    board_reply_cont varchar2(4000) not null, -- ��� ����
    board_regdate date, -- ��� �ۼ���
    board_no number(38) -- board���̺��� �Խ��� ��ȣ���� ����ǰ� �������� ����
);
alter table reply add board_reply_writer varchar(50) not null;


select * from users

-- board_no �÷� �ܷ�Ű ����
alter table reply add constraint reply_board_no_fk
foreign key(board_no) references board(board_no);

-- rno_seq������ ����
create sequence rno_seq
start with 1
increment by 1
nocache;

-- rno_seq������ ���� ��ȣ�� Ȯ��
SELECT rno_seq.NEXTVAL
  FROM dual

-- reply ���̺� �˻�
select * from reply;

insert into reply(board_no, board_reply_rno, board_reply_writer,
board_reply_cont, board_regdate) values(24, rno_seq.nextval, 'admin', 'hi', sysdate);

select * from reply where board_no = 24 order by board_reply_rno desc

commit;
