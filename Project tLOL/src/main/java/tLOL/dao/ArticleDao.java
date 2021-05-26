package tLOL.dao;

import java.io.Reader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
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

	private ArticleDao() {
	}

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
	public List<Article> list(int board_num) {
		return (List<Article>)session.selectList("articlens.list", board_num);
		
	}
}