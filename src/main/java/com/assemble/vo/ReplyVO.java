package com.assemble.vo;

public class ReplyVO {

	private int board_reply_rno;
	private String board_reply_cont;
	private String board_regdate;
	private int board_no;
	private String board_reply_writer;

	public int getBoard_reply_rno() {
		return board_reply_rno;
	}

	public void setBoard_reply_rno(int board_reply_rno) {
		this.board_reply_rno = board_reply_rno;
	}

	public String getBoard_reply_cont() {
		return board_reply_cont;
	}

	public void setBoard_reply_cont(String board_reply_cont) {
		this.board_reply_cont = board_reply_cont;
	}

	public String getBoard_regdate() {
		return board_regdate;
	}

	public void setBoard_regdate(String board_regdate) {
		this.board_regdate = board_regdate.substring(0,10);
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public String getBoard_reply_writer() {
		return board_reply_writer;
	}

	public void setBoard_reply_writer(String board_reply_writer) {
		this.board_reply_writer = board_reply_writer;
	}

	@Override
	public String toString() {
		return "ReplyVO [board_reply_rno=" + board_reply_rno + ", board_reply_cont=" + board_reply_cont
				+ ", board_regdate=" + board_regdate + ", board_no=" + board_no + ", board_reply_writer="
				+ board_reply_writer + "]";
	}
}
