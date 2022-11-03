package com.assemble.service;

import java.util.List;

import com.assemble.vo.ThemaVO;
import com.assemble.vo.WebtoonVO;

public interface ThemaService {

	void insertThema(ThemaVO tm);

	List<WebtoonVO> getWebtoonList(WebtoonVO wb);

	List<ThemaVO> getWebtoonList1(ThemaVO tb);

	void deleteThema(String thema_title);

}
