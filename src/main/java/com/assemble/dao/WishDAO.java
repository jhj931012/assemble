package com.assemble.dao;

import java.util.List;

import com.assemble.vo.WebtoonVO;
import com.assemble.vo.WishVO;

public interface WishDAO {

	List<WishVO> getWish(WishVO wl);

	void wish_ok(WishVO wo);

	List<WebtoonVO> getWishContent(WebtoonVO wb);

}
