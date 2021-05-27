package tLOL.dao;

import java.io.Reader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import tLOL.model.Article;

public class ArticleDao {
	private static ArticleDao instance = new ArticleDao();
	private ArticleDao() {}
	public static ArticleDao getInstance() {
		return instance;
	}

	private static SqlSession session;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("configuration.xml");
			SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
			session = ssf.openSession(true);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	@SuppressWarnings("unchecked")
	public List<Article> list(int startRow, int endRow, int board_num) {
		Map<String, Integer> parms = new HashMap<String, Integer>();
		parms.put("board_num", board_num);
		parms.put("startRow", startRow);
		parms.put("endRow", endRow);
		return session.selectList("articlens.selectList", parms);
		
	}
	public int getTotal(int board_num) {
		return (int) session.selectOne("articlens.total", board_num);
	}
}