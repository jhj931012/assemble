package com.assemble.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.assemble.vo.WebtoonVO;
import com.assemble.vo.WishVO;

public interface WishService {

	List<WishVO> getWish(WishVO wl);

	void wish_ok(WishVO wo);

	List<WebtoonVO> getWishContent(WebtoonVO wb);

}
