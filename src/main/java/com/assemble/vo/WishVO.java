package com.assemble.vo;

public class WishVO {

	private String wish_title;
	private String wish_id;
	
	private WebtoonVO webtoonVo;
	private UsersVO userVo;
	
	public String getWish_title() {
		return wish_title;
	}
	public void setWish_title(String wish_title) {
		this.wish_title = wish_title;
	}
	public String getWish_id() {
		return wish_id;
	}
	public void setWish_id(String wish_id) {
		this.wish_id = wish_id;
	}
	public WebtoonVO getWebtoonVo() {
		return webtoonVo;
	}
	public void setWebtoonVo(WebtoonVO webtoonVo) {
		this.webtoonVo = webtoonVo;
	}
	public UsersVO getUserVo() {
		return userVo;
	}
	public void setUserVo(UsersVO userVo) {
		this.userVo = userVo;
	}
	
	
}
