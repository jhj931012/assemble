package com.assemble.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.assemble.vo.ThemaVO;
import com.assemble.vo.WebtoonVO;

@Repository
public class ThemaDAOImpl implements ThemaDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertThema(ThemaVO tm) {
		this.sqlSession.insert("th_in", tm);
	}

	@Override
	public List<WebtoonVO> getWebtoonList(WebtoonVO wb) {
		return this.sqlSession.selectList("thema_insertoption", wb);
	}

	@Override
	public List<ThemaVO> getWebtoonList1(ThemaVO tb) {
		return this.sqlSession.selectList("themaList", tb);
	}

	@Override
	public Object deleteThema(String thema_title) {
		return this.sqlSession.delete("th_del", thema_title);
	}

	
}
