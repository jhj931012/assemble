package com.assemble.dao;

import java.util.List;

import com.assemble.vo.ThemaVO;
import com.assemble.vo.WebtoonVO;

public interface ThemaDAO {

	void insertThema(ThemaVO tm);

	List<WebtoonVO> getWebtoonList(WebtoonVO wb);

	List<ThemaVO> getWebtoonList1(ThemaVO wb);

	Object deleteThema(String thema_title);

}
